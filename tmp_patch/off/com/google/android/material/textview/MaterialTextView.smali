.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MaterialTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const v0, 0x1010084

    #@3
    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 88
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@4
    move-result-object p1

    #@5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@8
    .line 89
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->initialize(Landroid/util/AttributeSet;II)V

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 100
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@7
    .line 101
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->initialize(Landroid/util/AttributeSet;II)V

    #@a
    return-void
.end method

.method private applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V
    .registers 6

    #@0
    .line 130
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    #@9
    move-result-object p2

    #@a
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [I

    #@d
    const/4 v1, 0x0

    #@e
    sget v2, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_lineHeight:I

    #@10
    aput v2, v0, v1

    #@12
    const/4 v1, 0x1

    #@13
    sget v2, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_lineHeight:I

    #@15
    aput v2, v0, v1

    #@17
    .line 132
    invoke-static {p2, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    #@1a
    move-result p2

    #@1b
    .line 137
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    if-ltz p2, :cond_23

    #@20
    .line 140
    invoke-virtual {p0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setLineHeight(I)V

    #@23
    :cond_23
    return-void
.end method

.method private static canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z
    .registers 3

    #@0
    .line 145
    sget v0, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    #@6
    move-result p0

    #@7
    return p0
.end method

.method private static findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I
    .registers 5

    #@0
    .line 183
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    #@2
    .line 184
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object p0

    #@6
    .line 186
    sget p1, Lcom/google/android/material/R$styleable;->MaterialTextView_android_textAppearance:I

    #@8
    const/4 p2, -0x1

    #@9
    .line 187
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result p1

    #@d
    .line 188
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@10
    return p1
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .registers 6

    #@0
    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 117
    invoke-static {v0}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1e

    #@a
    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@d
    move-result-object v1

    #@e
    .line 120
    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/material/textview/MaterialTextView;->viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1e

    #@14
    .line 121
    invoke-static {v1, p1, p2, p3}, Lcom/google/android/material/textview/MaterialTextView;->findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I

    #@17
    move-result p1

    #@18
    const/4 p2, -0x1

    #@19
    if-eq p1, p2, :cond_1e

    #@1b
    .line 123
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    #@1e
    :cond_1e
    return-void
.end method

.method private static varargs readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .registers 7

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    move v2, v0

    #@3
    .line 154
    :goto_3
    array-length v3, p2

    #@4
    if-ge v1, v3, :cond_11

    #@6
    if-gez v2, :cond_11

    #@8
    .line 155
    aget v2, p2, v1

    #@a
    invoke-static {p0, p1, v2, v0}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    #@d
    move-result v2

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_3

    #@11
    :cond_11
    return v2
.end method

.method private static viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z
    .registers 6

    #@0
    .line 167
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    #@2
    .line 168
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    const/4 p2, 0x2

    #@7
    new-array p2, p2, [I

    #@9
    .line 170
    sget p3, Lcom/google/android/material/R$styleable;->MaterialTextView_android_lineHeight:I

    #@b
    const/4 p4, 0x0

    #@c
    aput p3, p2, p4

    #@e
    sget p3, Lcom/google/android/material/R$styleable;->MaterialTextView_lineHeight:I

    #@10
    const/4 v0, 0x1

    #@11
    aput p3, p2, v0

    #@13
    .line 171
    invoke-static {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    #@16
    move-result p0

    #@17
    .line 176
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    const/4 p1, -0x1

    #@1b
    if-eq p0, p1, :cond_1e

    #@1d
    move p4, v0

    #@1e
    :cond_1e
    return p4
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    #@0
    .line 106
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    #@3
    .line 108
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@c
    move-result-object p1

    #@d
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    #@10
    :cond_10
    return-void
.end method

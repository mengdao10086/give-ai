.class Lcom/google/android/material/timepicker/ClockFaceView;
.super Lcom/google/android/material/timepicker/RadialViewGroup;
.source "ClockFaceView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final INITIAL_CAPACITY:I = 0xc

.field private static final VALUE_PLACEHOLDER:Ljava/lang/String; = ""


# instance fields
.field private final clockHandPadding:I

.field private final clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

.field private final clockSize:I

.field private currentHandRotation:F

.field private final gradientColors:[I

.field private final gradientPositions:[F

.field private final minimumHeight:I

.field private final minimumWidth:I

.field private final scratch:Landroid/graphics/RectF;

.field private final scratchLineBounds:Landroid/graphics/Rect;

.field private final textColor:Landroid/content/res/ColorStateList;

.field private final textViewPool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final textViewRect:Landroid/graphics/Rect;

.field private final valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 96
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 100
    sget v0, Lcom/google/android/material/R$attr;->materialClockStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 75
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    #@a
    .line 76
    new-instance v0, Landroid/graphics/RectF;

    #@c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@11
    .line 77
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    #@18
    .line 79
    new-instance v0, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@1f
    const/4 v0, 0x3

    #@20
    new-array v1, v0, [F

    #@22
    .line 83
    fill-array-data v1, :array_d2

    #@25
    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientPositions:[F

    #@27
    .line 106
    sget-object v1, Lcom/google/android/material/R$styleable;->ClockFaceView:[I

    #@29
    sget v2, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker_Clock:I

    #@2b
    .line 107
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2e
    move-result-object p2

    #@2f
    .line 112
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    #@32
    move-result-object p3

    #@33
    .line 113
    sget v1, Lcom/google/android/material/R$styleable;->ClockFaceView_clockNumberTextColor:I

    #@35
    .line 114
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@38
    move-result-object v1

    #@39
    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textColor:Landroid/content/res/ColorStateList;

    #@3b
    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@3e
    move-result-object v2

    #@3f
    sget v3, Lcom/google/android/material/R$layout;->material_clockface_view:I

    #@41
    const/4 v4, 0x1

    #@42
    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@45
    .line 117
    sget v2, Lcom/google/android/material/R$id;->material_clock_hand:I

    #@47
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/ClockFaceView;->findViewById(I)Landroid/view/View;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Lcom/google/android/material/timepicker/ClockHandView;

    #@4d
    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@4f
    .line 118
    sget v3, Lcom/google/android/material/R$dimen;->material_clock_hand_padding:I

    #@51
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@54
    move-result v3

    #@55
    iput v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I

    #@57
    new-array v3, v4, [I

    #@59
    const v5, 0x10100a1

    #@5c
    const/4 v6, 0x0

    #@5d
    aput v5, v3, v6

    #@5f
    .line 121
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@62
    move-result v5

    #@63
    .line 120
    invoke-virtual {v1, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@66
    move-result v3

    #@67
    new-array v0, v0, [I

    #@69
    aput v3, v0, v6

    #@6b
    aput v3, v0, v4

    #@6d
    const/4 v3, 0x2

    #@6e
    .line 123
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@71
    move-result v1

    #@72
    aput v1, v0, v3

    #@74
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientColors:[I

    #@76
    .line 124
    invoke-virtual {v2, p0}, Lcom/google/android/material/timepicker/ClockHandView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    #@79
    .line 126
    sget v0, Lcom/google/android/material/R$color;->material_timepicker_clockface:I

    #@7b
    .line 127
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@7e
    move-result-object v0

    #@7f
    .line 128
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@82
    move-result v0

    #@83
    .line 130
    sget v1, Lcom/google/android/material/R$styleable;->ClockFaceView_clockFaceBackgroundColor:I

    #@85
    .line 131
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@88
    move-result-object p1

    #@89
    if-nez p1, :cond_8c

    #@8b
    goto :goto_90

    #@8c
    .line 135
    :cond_8c
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@8f
    move-result v0

    #@90
    .line 134
    :goto_90
    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/ClockFaceView;->setBackgroundColor(I)V

    #@93
    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@96
    move-result-object p1

    #@97
    new-instance v0, Lcom/google/android/material/timepicker/ClockFaceView$1;

    #@99
    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/ClockFaceView$1;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    #@9c
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9f
    .line 153
    invoke-virtual {p0, v4}, Lcom/google/android/material/timepicker/ClockFaceView;->setFocusable(Z)V

    #@a2
    .line 154
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@a5
    .line 155
    new-instance p1, Lcom/google/android/material/timepicker/ClockFaceView$2;

    #@a7
    invoke-direct {p1, p0}, Lcom/google/android/material/timepicker/ClockFaceView$2;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    #@aa
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    #@ac
    const/16 p1, 0xc

    #@ae
    new-array p1, p1, [Ljava/lang/String;

    #@b0
    const-string p2, ""

    #@b2
    .line 196
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@b5
    .line 197
    invoke-virtual {p0, p1, v6}, Lcom/google/android/material/timepicker/ClockFaceView;->setValues([Ljava/lang/String;I)V

    #@b8
    .line 199
    sget p1, Lcom/google/android/material/R$dimen;->material_time_picker_minimum_screen_height:I

    #@ba
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@bd
    move-result p1

    #@be
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumHeight:I

    #@c0
    .line 200
    sget p1, Lcom/google/android/material/R$dimen;->material_time_picker_minimum_screen_width:I

    #@c2
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c5
    move-result p1

    #@c6
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumWidth:I

    #@c8
    .line 201
    sget p1, Lcom/google/android/material/R$dimen;->material_clock_size:I

    #@ca
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@cd
    move-result p1

    #@ce
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockSize:I

    #@d0
    return-void

    #@d1
    nop

    #@d2
    :array_d2
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;
    .registers 1

    #@0
    .line 68
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/ClockFaceView;)I
    .registers 1

    #@0
    .line 68
    iget p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I

    #@2
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;
    .registers 1

    #@0
    .line 68
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;
    .registers 1

    #@0
    .line 68
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    #@2
    return-object p0
.end method

.method private findIntersectingTextView()V
    .registers 8

    #@0
    .line 293
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockHandView;->getCurrentSelectorBox()Landroid/graphics/RectF;

    #@5
    move-result-object v0

    #@6
    .line 294
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getSelectedTextView(Landroid/graphics/RectF;)Landroid/widget/TextView;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    .line 295
    :goto_c
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v4

    #@12
    if-ge v3, v4, :cond_38

    #@14
    .line 296
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/widget/TextView;

    #@1c
    if-nez v4, :cond_1f

    #@1e
    goto :goto_35

    #@1f
    :cond_1f
    if-ne v4, v1, :cond_23

    #@21
    const/4 v5, 0x1

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v5, v2

    #@24
    .line 302
    :goto_24
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    #@27
    .line 305
    invoke-direct {p0, v0, v4}, Lcom/google/android/material/timepicker/ClockFaceView;->getGradientForTextView(Landroid/graphics/RectF;Landroid/widget/TextView;)Landroid/graphics/RadialGradient;

    #@2a
    move-result-object v5

    #@2b
    .line 306
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@32
    .line 307
    invoke-virtual {v4}, Landroid/widget/TextView;->invalidate()V

    #@35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_c

    #@38
    :cond_38
    return-void
.end method

.method private getGradientForTextView(Landroid/graphics/RectF;Landroid/widget/TextView;)Landroid/graphics/RadialGradient;
    .registers 10

    #@0
    .line 336
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    #@5
    .line 337
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@7
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@c
    const/4 v0, 0x0

    #@d
    .line 338
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    #@f
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    #@12
    .line 339
    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@14
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    #@16
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@18
    int-to-float v0, v0

    #@19
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    #@1b
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@1d
    int-to-float v1, v1

    #@1e
    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    #@21
    .line 340
    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@23
    invoke-static {p1, p2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@26
    move-result p2

    #@27
    if-nez p2, :cond_2b

    #@29
    const/4 p1, 0x0

    #@2a
    return-object p1

    #@2b
    .line 344
    :cond_2b
    new-instance p2, Landroid/graphics/RadialGradient;

    #@2d
    .line 345
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    #@30
    move-result v0

    #@31
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@33
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@35
    sub-float v1, v0, v1

    #@37
    .line 346
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    #@3a
    move-result v0

    #@3b
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@3d
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@3f
    sub-float v2, v0, v2

    #@41
    .line 347
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    #@44
    move-result p1

    #@45
    const/high16 v0, 0x3f000000    # 0.5f

    #@47
    mul-float v3, p1, v0

    #@49
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientColors:[I

    #@4b
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientPositions:[F

    #@4d
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@4f
    move-object v0, p2

    #@50
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@53
    return-object p2
.end method

.method private getSelectedTextView(Landroid/graphics/RectF;)Landroid/widget/TextView;
    .registers 8

    #@0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 316
    :goto_5
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v3

    #@b
    if-ge v2, v3, :cond_3f

    #@d
    .line 317
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/widget/TextView;

    #@15
    if-nez v3, :cond_18

    #@17
    goto :goto_3c

    #@18
    .line 321
    :cond_18
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    #@1d
    .line 322
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@1f
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@24
    .line 323
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@26
    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    #@29
    .line 324
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@2b
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    #@2e
    move-result v4

    #@2f
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    #@31
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    #@34
    move-result v5

    #@35
    mul-float/2addr v4, v5

    #@36
    cmpg-float v5, v4, v0

    #@38
    if-gez v5, :cond_3c

    #@3a
    move-object v1, v3

    #@3b
    move v0, v4

    #@3c
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_5

    #@3f
    :cond_3f
    return-object v1
.end method

.method private static max3(FFF)F
    .registers 3

    #@0
    .line 379
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    #@3
    move-result p0

    #@4
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    #@7
    move-result p0

    #@8
    return p0
.end method

.method private updateTextViews(I)V
    .registers 12

    #@0
    .line 216
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    .line 217
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x0

    #@f
    move v3, v2

    #@10
    move v4, v3

    #@11
    .line 218
    :goto_11
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    #@13
    array-length v5, v5

    #@14
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v5

    #@18
    if-ge v3, v5, :cond_84

    #@1a
    .line 219
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Landroid/widget/TextView;

    #@22
    .line 220
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    #@24
    array-length v6, v6

    #@25
    if-lt v3, v6, :cond_30

    #@27
    .line 221
    invoke-virtual {p0, v5}, Lcom/google/android/material/timepicker/ClockFaceView;->removeView(Landroid/view/View;)V

    #@2a
    .line 222
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->remove(I)V

    #@2f
    goto :goto_81

    #@30
    :cond_30
    if-nez v5, :cond_42

    #@32
    .line 227
    sget v5, Lcom/google/android/material/R$layout;->material_clockface_textview:I

    #@34
    invoke-virtual {v0, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Landroid/widget/TextView;

    #@3a
    .line 228
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3f
    .line 229
    invoke-virtual {p0, v5}, Lcom/google/android/material/timepicker/ClockFaceView;->addView(Landroid/view/View;)V

    #@42
    .line 232
    :cond_42
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    #@44
    aget-object v6, v6, v3

    #@46
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@49
    .line 233
    sget v6, Lcom/google/android/material/R$id;->material_value_index:I

    #@4b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    #@52
    .line 235
    div-int/lit8 v6, v3, 0xc

    #@54
    const/4 v7, 0x1

    #@55
    add-int/2addr v6, v7

    #@56
    .line 236
    sget v8, Lcom/google/android/material/R$id;->material_clock_level:I

    #@58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    #@5f
    if-le v6, v7, :cond_62

    #@61
    move v4, v7

    #@62
    .line 241
    :cond_62
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    #@64
    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@67
    .line 243
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textColor:Landroid/content/res/ColorStateList;

    #@69
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@6c
    if-eqz p1, :cond_81

    #@6e
    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    #@71
    move-result-object v6

    #@72
    new-array v7, v7, [Ljava/lang/Object;

    #@74
    .line 246
    iget-object v8, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    #@76
    aget-object v8, v8, v3

    #@78
    aput-object v8, v7, v2

    #@7a
    invoke-virtual {v6, p1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@81
    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_11

    #@84
    .line 250
    :cond_84
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@86
    invoke-virtual {p1, v4}, Lcom/google/android/material/timepicker/ClockHandView;->setMultiLevel(Z)V

    #@89
    return-void
.end method


# virtual methods
.method getCurrentLevel()I
    .registers 2

    #@0
    .line 384
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockHandView;->getCurrentLevel()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    #@0
    .line 263
    invoke-super {p0, p1}, Lcom/google/android/material/timepicker/RadialViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 264
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@6
    move-result-object p1

    #@7
    .line 265
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    #@9
    array-length v0, v0

    #@a
    const/4 v1, 0x0

    #@b
    const/4 v2, 0x1

    #@c
    .line 266
    invoke-static {v2, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    #@f
    move-result-object v0

    #@10
    .line 265
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    #@13
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 283
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/timepicker/RadialViewGroup;->onLayout(ZIIII)V

    #@3
    .line 284
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    #@6
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    #@0
    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    .line 364
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object p1

    #@8
    .line 366
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@a
    int-to-float p2, p2

    #@b
    .line 367
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@d
    int-to-float p1, p1

    #@e
    .line 371
    iget v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockSize:I

    #@10
    int-to-float v0, v0

    #@11
    iget v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumHeight:I

    #@13
    int-to-float v1, v1

    #@14
    div-float/2addr v1, p2

    #@15
    iget p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumWidth:I

    #@17
    int-to-float p2, p2

    #@18
    div-float/2addr p2, p1

    #@19
    const/high16 p1, 0x3f800000    # 1.0f

    #@1b
    invoke-static {v1, p2, p1}, Lcom/google/android/material/timepicker/ClockFaceView;->max3(FFF)F

    #@1e
    move-result p1

    #@1f
    div-float/2addr v0, p1

    #@20
    float-to-int p1, v0

    #@21
    const/high16 p2, 0x40000000    # 2.0f

    #@23
    .line 373
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@26
    move-result p2

    #@27
    .line 374
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/timepicker/ClockFaceView;->setMeasuredDimension(II)V

    #@2a
    .line 375
    invoke-super {p0, p2, p2}, Lcom/google/android/material/timepicker/RadialViewGroup;->onMeasure(II)V

    #@2d
    return-void
.end method

.method public onRotate(FZ)V
    .registers 4

    #@0
    .line 355
    iget p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    #@2
    sub-float/2addr p2, p1

    #@3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@6
    move-result p2

    #@7
    const v0, 0x3a83126f    # 0.001f

    #@a
    cmpl-float p2, p2, v0

    #@c
    if-lez p2, :cond_13

    #@e
    .line 356
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    #@10
    .line 357
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    #@13
    :cond_13
    return-void
.end method

.method setCurrentLevel(I)V
    .registers 3

    #@0
    .line 388
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setCurrentLevel(I)V

    #@5
    return-void
.end method

.method public setHandRotation(F)V
    .registers 3

    #@0
    .line 288
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    #@5
    .line 289
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    #@8
    return-void
.end method

.method public setRadius(I)V
    .registers 3

    #@0
    .line 275
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getRadius()I

    #@3
    move-result v0

    #@4
    if-eq p1, v0, :cond_12

    #@6
    .line 276
    invoke-super {p0, p1}, Lcom/google/android/material/timepicker/RadialViewGroup;->setRadius(I)V

    #@9
    .line 277
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    #@b
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getRadius()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setCircleRadius(I)V

    #@12
    :cond_12
    return-void
.end method

.method public setValues([Ljava/lang/String;I)V
    .registers 3

    #@0
    .line 209
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    #@2
    .line 210
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->updateTextViews(I)V

    #@5
    return-void
.end method

.method protected updateLayoutParams()V
    .registers 4

    #@0
    .line 255
    invoke-super {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    .line 256
    :goto_5
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1b

    #@d
    .line 257
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/widget/TextView;

    #@15
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    return-void
.end method

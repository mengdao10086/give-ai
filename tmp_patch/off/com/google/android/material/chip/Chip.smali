.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Lcom/google/android/material/chip/ChipDrawable$Delegate;
.implements Lcom/google/android/material/shape/Shapeable;
.implements Lcom/google/android/material/internal/MaterialCheckable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/widget/AppCompatCheckBox;",
        "Lcom/google/android/material/chip/ChipDrawable$Delegate;",
        "Lcom/google/android/material/shape/Shapeable;",
        "Lcom/google/android/material/internal/MaterialCheckable<",
        "Lcom/google/android/material/chip/Chip;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUTTON_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.Button"

.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHIP_BODY_VIRTUAL_ID:I = 0x0

.field private static final CLOSE_ICON_VIRTUAL_ID:I = 0x1

.field private static final DEF_STYLE_RES:I

.field private static final EMPTY_BOUNDS:Landroid/graphics/Rect;

.field private static final GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field private static final MIN_TOUCH_TARGET_DP:I = 0x30

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.RadioButton"

.field private static final SELECTED_STATE:[I

.field private static final TAG:Ljava/lang/String; = "Chip"


# instance fields
.field private accessibilityClassName:Ljava/lang/CharSequence;

.field private chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private ensureMinTouchTargetSize:Z

.field private final fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field private insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

.field private lastLayoutDirection:I

.field private minTouchTargetSize:I

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private ripple:Landroid/graphics/drawable/RippleDrawable;

.field private final touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

.field private touchHelperEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 136
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    #@2
    sput v0, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    #@4
    .line 140
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    sput-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    #@b
    const/4 v0, 0x1

    #@c
    new-array v1, v0, [I

    #@e
    const v2, 0x10100a1

    #@11
    const/4 v3, 0x0

    #@12
    aput v2, v1, v3

    #@14
    .line 142
    sput-object v1, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    #@16
    new-array v0, v0, [I

    #@18
    const v1, 0x101009f

    #@1b
    aput v1, v0, v3

    #@1d
    .line 143
    sput-object v0, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    #@1f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 194
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 198
    sget v0, Lcom/google/android/material/R$attr;->chipStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    #@0
    .line 202
    sget v4, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 177
    new-instance p1, Landroid/graphics/Rect;

    #@b
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    #@10
    .line 178
    new-instance p1, Landroid/graphics/RectF;

    #@12
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@15
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    #@17
    .line 179
    new-instance p1, Lcom/google/android/material/chip/Chip$1;

    #@19
    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    #@1c
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    #@1e
    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    #@21
    move-result-object v0

    #@22
    .line 206
    invoke-direct {p0, p2}, Lcom/google/android/material/chip/Chip;->validateAttributes(Landroid/util/AttributeSet;)V

    #@25
    .line 208
    invoke-static {v0, p2, p3, v4}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    #@28
    move-result-object p1

    #@29
    .line 210
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/chip/Chip;->initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@2c
    .line 211
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    #@2f
    .line 212
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@32
    move-result v1

    #@33
    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/ChipDrawable;->setElevation(F)V

    #@36
    .line 213
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    #@38
    const/4 v1, 0x0

    #@39
    new-array v5, v1, [I

    #@3b
    move-object v1, p2

    #@3c
    move v3, p3

    #@3d
    .line 214
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@40
    move-result-object p2

    #@41
    .line 226
    sget p3, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    #@43
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@46
    move-result p3

    #@47
    .line 227
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@4a
    .line 229
    new-instance p2, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@4c
    invoke-direct {p2, p0, p0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    #@4f
    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@51
    .line 230
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    #@54
    if-nez p3, :cond_59

    #@56
    .line 232
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->initOutlineProvider()V

    #@59
    .line 235
    :cond_59
    iget-boolean p2, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    #@5b
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    #@5e
    .line 236
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    #@61
    move-result-object p2

    #@62
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    #@65
    .line 237
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    #@68
    move-result-object p1

    #@69
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@6c
    .line 239
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    #@6f
    .line 242
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@71
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    #@74
    move-result p1

    #@75
    if-nez p1, :cond_7e

    #@77
    const/4 p1, 0x1

    #@78
    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    #@7b
    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setHorizontallyScrolling(Z)V

    #@7e
    :cond_7e
    const p1, 0x800013

    #@81
    .line 248
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    #@84
    .line 250
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    #@87
    .line 251
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    #@8a
    move-result p1

    #@8b
    if-eqz p1, :cond_92

    #@8d
    .line 252
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    #@8f
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    #@92
    .line 254
    :cond_92
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@95
    move-result p1

    #@96
    iput p1, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    #@98
    .line 256
    new-instance p1, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    #@9a
    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/chip/Chip;)V

    #@9d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@a0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;
    .registers 1

    #@0
    .line 131
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/chip/Chip;)Z
    .registers 1

    #@0
    .line 131
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .registers 1

    #@0
    .line 131
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;
    .registers 1

    #@0
    .line 131
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    #@2
    return-object p0
.end method

.method static synthetic access$402(Lcom/google/android/material/chip/Chip;Z)Z
    .registers 2

    #@0
    .line 131
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    #@2
    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .registers 1

    #@0
    .line 131
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$600()Landroid/graphics/Rect;
    .registers 1

    #@0
    .line 131
    sget-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method private applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 2

    #@0
    .line 497
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    #@3
    return-void
.end method

.method private createCloseIconDrawableState()[I
    .registers 4

    #@0
    .line 899
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    #@3
    move-result v0

    #@4
    .line 902
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    #@6
    if-eqz v1, :cond_a

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    .line 905
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    #@c
    if-eqz v1, :cond_10

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    .line 908
    :cond_10
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    #@12
    if-eqz v1, :cond_16

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    .line 911
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1e

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    .line 915
    :cond_1e
    new-array v0, v0, [I

    #@20
    .line 918
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    #@23
    move-result v1

    #@24
    const/4 v2, 0x0

    #@25
    if-eqz v1, :cond_2d

    #@27
    const v1, 0x101009e

    #@2a
    .line 919
    aput v1, v0, v2

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 922
    :cond_2d
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    #@2f
    if-eqz v1, :cond_38

    #@31
    const v1, 0x101009c

    #@34
    .line 923
    aput v1, v0, v2

    #@36
    add-int/lit8 v2, v2, 0x1

    #@38
    .line 926
    :cond_38
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    #@3a
    if-eqz v1, :cond_43

    #@3c
    const v1, 0x1010367

    #@3f
    .line 927
    aput v1, v0, v2

    #@41
    add-int/lit8 v2, v2, 0x1

    #@43
    .line 930
    :cond_43
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    #@45
    if-eqz v1, :cond_4e

    #@47
    const v1, 0x10100a7

    #@4a
    .line 931
    aput v1, v0, v2

    #@4c
    add-int/lit8 v2, v2, 0x1

    #@4e
    .line 934
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_59

    #@54
    const v1, 0x10100a1

    #@57
    .line 935
    aput v1, v0, v2

    #@59
    :cond_59
    return-object v0
.end method

.method private ensureChipDrawableHasCallback()V
    .registers 3

    #@0
    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@6
    if-ne v0, v1, :cond_17

    #@8
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_17

    #@10
    .line 465
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@12
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@14
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@17
    :cond_17
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .registers 3

    #@0
    .line 947
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    #@2
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    #@5
    .line 949
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_16

    #@b
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 951
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@11
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    #@16
    .line 954
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    #@18
    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .registers 6

    #@0
    .line 959
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    #@3
    move-result-object v0

    #@4
    .line 960
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    #@6
    iget v2, v0, Landroid/graphics/RectF;->left:F

    #@8
    float-to-int v2, v2

    #@9
    iget v3, v0, Landroid/graphics/RectF;->top:F

    #@b
    float-to-int v3, v3

    #@c
    iget v4, v0, Landroid/graphics/RectF;->right:F

    #@e
    float-to-int v4, v4

    #@f
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    #@11
    float-to-int v0, v0

    #@12
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@15
    .line 961
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    #@17
    return-object v0
.end method

.method private getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    #@0
    .line 1404
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method private hasCloseIcon()Z
    .registers 2

    #@0
    .line 942
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method private initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 321
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    #@2
    sget v4, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    #@4
    const/4 v6, 0x0

    #@5
    new-array v5, v6, [I

    #@7
    move-object v0, p1

    #@8
    move-object v1, p2

    #@9
    move v3, p3

    #@a
    .line 322
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@d
    move-result-object p1

    #@e
    .line 328
    sget p2, Lcom/google/android/material/R$styleable;->Chip_ensureMinTouchTargetSize:I

    #@10
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@13
    move-result p2

    #@14
    iput-boolean p2, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    #@16
    .line 331
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    #@19
    move-result-object p2

    #@1a
    const/16 p3, 0x30

    #@1c
    invoke-static {p2, p3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@1f
    move-result p2

    #@20
    float-to-double p2, p2

    #@21
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    #@24
    move-result-wide p2

    #@25
    double-to-float p2, p2

    #@26
    .line 332
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipMinTouchTargetSize:I

    #@28
    .line 335
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@2b
    move-result p2

    #@2c
    float-to-double p2, p2

    #@2d
    .line 334
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    #@30
    move-result-wide p2

    #@31
    double-to-int p2, p2

    #@32
    iput p2, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    #@34
    .line 337
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@37
    return-void
.end method

.method private initOutlineProvider()V
    .registers 2

    #@0
    .line 417
    new-instance v0, Lcom/google/android/material/chip/Chip$2;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@8
    return-void
.end method

.method private insetChipBackgroundDrawable(IIII)V
    .registers 12

    #@0
    .line 2369
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    #@2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@4
    move-object v0, v6

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@c
    iput-object v6, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@e
    return-void
.end method

.method private removeBackgroundInset()V
    .registers 2

    #@0
    .line 2359
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@2
    if-eqz v0, :cond_16

    #@4
    const/4 v0, 0x0

    #@5
    .line 2360
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@7
    const/4 v0, 0x0

    #@8
    .line 2361
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    #@b
    .line 2362
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    #@e
    move-result v0

    #@f
    float-to-int v0, v0

    #@10
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    #@13
    .line 2363
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    #@16
    :cond_16
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .registers 3

    #@0
    .line 875
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 876
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    #@6
    .line 877
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    #@9
    :cond_9
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .registers 3

    #@0
    .line 868
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 869
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    #@6
    .line 870
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    #@9
    :cond_9
    return-void
.end method

.method private unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 3

    #@0
    if-eqz p1, :cond_6

    #@2
    const/4 v0, 0x0

    #@3
    .line 492
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    #@6
    :cond_6
    return-void
.end method

.method private updateAccessibilityDelegate()V
    .registers 2

    #@0
    .line 309
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_19

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    #@e
    if-eqz v0, :cond_19

    #@10
    .line 310
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@12
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@15
    const/4 v0, 0x1

    #@16
    .line 311
    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    #@18
    goto :goto_20

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    .line 314
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@1d
    const/4 v0, 0x0

    #@1e
    .line 315
    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    #@20
    :goto_20
    return-void
.end method

.method private updateBackgroundDrawable()V
    .registers 3

    #@0
    .line 451
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 452
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    #@7
    goto :goto_1b

    #@8
    .line 454
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    #@e
    .line 455
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 456
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    #@18
    .line 457
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->ensureChipDrawableHasCallback()V

    #@1b
    :goto_1b
    return-void
.end method

.method private updateFrameworkRippleBackground()V
    .registers 5

    #@0
    .line 479
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@4
    .line 481
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@b
    move-result-object v1

    #@c
    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@14
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    #@16
    .line 484
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    #@1c
    .line 486
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    #@1e
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@21
    .line 487
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    #@24
    return-void
.end method

.method private updatePaddingInternal()V
    .registers 5

    #@0
    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_56

    #@a
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_56

    #@f
    .line 350
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    #@12
    move-result v0

    #@13
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@15
    .line 351
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    #@18
    move-result v1

    #@19
    add-float/2addr v0, v1

    #@1a
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@1c
    .line 352
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    #@1f
    move-result v1

    #@20
    add-float/2addr v0, v1

    #@21
    float-to-int v0, v0

    #@22
    .line 353
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@24
    .line 355
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    #@27
    move-result v1

    #@28
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2a
    .line 356
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    #@2d
    move-result v2

    #@2e
    add-float/2addr v1, v2

    #@2f
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@31
    .line 357
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@34
    move-result v2

    #@35
    add-float/2addr v1, v2

    #@36
    float-to-int v1, v1

    #@37
    .line 358
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@39
    if-eqz v2, :cond_4b

    #@3b
    .line 359
    new-instance v2, Landroid/graphics/Rect;

    #@3d
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@40
    .line 360
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@42
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    #@45
    .line 361
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@47
    add-int/2addr v1, v3

    #@48
    .line 362
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@4a
    add-int/2addr v0, v2

    #@4b
    .line 366
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    #@4e
    move-result v2

    #@4f
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    #@52
    move-result v3

    #@53
    .line 365
    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@56
    :cond_56
    :goto_56
    return-void
.end method

.method private updateTextPaintDrawState()V
    .registers 5

    #@0
    .line 1392
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    #@3
    move-result-object v0

    #@4
    .line 1393
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@6
    if-eqz v1, :cond_e

    #@8
    .line 1394
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@b
    move-result-object v1

    #@c
    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    #@e
    .line 1396
    :cond_e
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_1d

    #@14
    .line 1398
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    #@1a
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@1d
    :cond_1d
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const-string v0, "background"

    #@5
    const-string v1, "http://schemas.android.com/apk/res/android"

    #@7
    .line 386
    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    const-string v2, "Chip"

    #@d
    if-eqz v0, :cond_14

    #@f
    const-string v0, "Do not set the background; Chip manages its own background drawable."

    #@11
    .line 387
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    :cond_14
    const-string v0, "drawableLeft"

    #@16
    .line 389
    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    if-nez v0, :cond_84

    #@1c
    const-string v0, "drawableStart"

    #@1e
    .line 392
    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    if-nez v0, :cond_7c

    #@24
    const-string v0, "drawableEnd"

    #@26
    .line 395
    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    const-string v3, "Please set end drawable using R.attr#closeIcon."

    #@2c
    if-nez v0, :cond_76

    #@2e
    const-string v0, "drawableRight"

    #@30
    .line 398
    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    if-nez v0, :cond_70

    #@36
    const-string v0, "singleLine"

    #@38
    const/4 v3, 0x1

    #@39
    .line 401
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_68

    #@3f
    const-string v0, "lines"

    #@41
    .line 402
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@44
    move-result v0

    #@45
    if-ne v0, v3, :cond_68

    #@47
    const-string v0, "minLines"

    #@49
    .line 403
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@4c
    move-result v0

    #@4d
    if-ne v0, v3, :cond_68

    #@4f
    const-string v0, "maxLines"

    #@51
    .line 404
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@54
    move-result v0

    #@55
    if-ne v0, v3, :cond_68

    #@57
    const-string v0, "gravity"

    #@59
    const v3, 0x800013

    #@5c
    .line 408
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@5f
    move-result p1

    #@60
    if-eq p1, v3, :cond_67

    #@62
    const-string p1, "Chip text must be vertically center and start aligned"

    #@64
    .line 411
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    :cond_67
    return-void

    #@68
    .line 405
    :cond_68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@6a
    const-string v0, "Chip does not support multi-line text"

    #@6c
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@6f
    throw p1

    #@70
    .line 399
    :cond_70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@72
    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@75
    throw p1

    #@76
    .line 396
    :cond_76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@78
    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7b
    throw p1

    #@7c
    .line 393
    :cond_7c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@7e
    const-string v0, "Please set start drawable using R.attr#chipIcon."

    #@80
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@83
    throw p1

    #@84
    .line 390
    :cond_84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@86
    const-string v0, "Please set left drawable using R.attr#chipIcon."

    #@88
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8b
    throw p1
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 822
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    #@2
    if-nez v0, :cond_9

    #@4
    .line 823
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 825
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@b
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1a

    #@11
    .line 826
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_18

    #@17
    goto :goto_1a

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    #@1b
    :goto_1b
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 831
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    #@2
    if-nez v0, :cond_9

    #@4
    .line 832
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 834
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@b
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1d

    #@11
    .line 841
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@13
    .line 842
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getKeyboardFocusedVirtualViewId()I

    #@16
    move-result v0

    #@17
    const/high16 v1, -0x80000000

    #@19
    if-eq v0, v1, :cond_1d

    #@1b
    const/4 p1, 0x1

    #@1c
    return p1

    #@1d
    .line 845
    :cond_1d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@20
    move-result p1

    #@21
    return p1
.end method

.method protected drawableStateChanged()V
    .registers 3

    #@0
    .line 883
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    #@3
    .line 887
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@5
    if-eqz v0, :cond_18

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconStateful()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_18

    #@d
    .line 888
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@f
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->createCloseIconDrawableState()[I

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    #@16
    move-result v0

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    :goto_19
    if-eqz v0, :cond_1e

    #@1b
    .line 892
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    #@1e
    :cond_1e
    return-void
.end method

.method public ensureAccessibleTouchTarget(I)Z
    .registers 7

    #@0
    .line 2278
    iput p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    #@2
    .line 2279
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_15

    #@9
    .line 2280
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@b
    if-eqz p1, :cond_11

    #@d
    .line 2281
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    #@10
    goto :goto_14

    #@11
    .line 2283
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    #@14
    :goto_14
    return v1

    #@15
    .line 2288
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@17
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    #@1a
    move-result v0

    #@1b
    sub-int v0, p1, v0

    #@1d
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v0

    #@21
    .line 2289
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@23
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    #@26
    move-result v2

    #@27
    sub-int v2, p1, v2

    #@29
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result v2

    #@2d
    if-gtz v2, :cond_3d

    #@2f
    if-gtz v0, :cond_3d

    #@31
    .line 2292
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@33
    if-eqz p1, :cond_39

    #@35
    .line 2293
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    #@38
    goto :goto_3c

    #@39
    .line 2295
    :cond_39
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    #@3c
    :goto_3c
    return v1

    #@3d
    :cond_3d
    if-lez v2, :cond_42

    #@3f
    .line 2300
    div-int/lit8 v2, v2, 0x2

    #@41
    goto :goto_43

    #@42
    :cond_42
    move v2, v1

    #@43
    :goto_43
    if-lez v0, :cond_47

    #@45
    .line 2301
    div-int/lit8 v1, v0, 0x2

    #@47
    .line 2303
    :cond_47
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@49
    const/4 v3, 0x1

    #@4a
    if-eqz v0, :cond_6a

    #@4c
    .line 2304
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    .line 2305
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@53
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    #@56
    .line 2306
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@58
    if-ne v4, v1, :cond_6a

    #@5a
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@5c
    if-ne v4, v1, :cond_6a

    #@5e
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@60
    if-ne v4, v2, :cond_6a

    #@62
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@64
    if-ne v0, v2, :cond_6a

    #@66
    .line 2310
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    #@69
    return v3

    #@6a
    .line 2315
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinHeight()I

    #@6d
    move-result v0

    #@6e
    if-eq v0, p1, :cond_73

    #@70
    .line 2316
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    #@73
    .line 2318
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinWidth()I

    #@76
    move-result v0

    #@77
    if-eq v0, p1, :cond_7c

    #@79
    .line 2319
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    #@7c
    .line 2325
    :cond_7c
    invoke-direct {p0, v2, v1, v2, v1}, Lcom/google/android/material/chip/Chip;->insetChipBackgroundDrawable(IIII)V

    #@7f
    .line 2326
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    #@82
    return v3
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 2342
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->accessibilityClassName:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_b

    #@8
    .line 2343
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->accessibilityClassName:Ljava/lang/CharSequence;

    #@a
    return-object v0

    #@b
    .line 2344
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    #@e
    move-result v0

    #@f
    const-string v1, "android.widget.Button"

    #@11
    if-eqz v0, :cond_27

    #@13
    .line 2345
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    #@16
    move-result-object v0

    #@17
    .line 2346
    instance-of v2, v0, Lcom/google/android/material/chip/ChipGroup;

    #@19
    if-eqz v2, :cond_26

    #@1b
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    #@1d
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->isSingleSelection()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_26

    #@23
    const-string v0, "android.widget.RadioButton"

    #@25
    return-object v0

    #@26
    :cond_26
    return-object v1

    #@27
    .line 2351
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    return-object v1

    #@2e
    :cond_2e
    const-string v0, "android.view.View"

    #@30
    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 471
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    #@2
    if-nez v0, :cond_6

    #@4
    .line 472
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@6
    :cond_6
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1842
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1877
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIconTint()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1076
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getChipCornerRadius()F
    .registers 3

    #@0
    .line 1144
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_d

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    #@8
    move-result v0

    #@9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    #@c
    move-result v1

    #@d
    :cond_d
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 434
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    return-object v0
.end method

.method public getChipEndPadding()F
    .registers 2

    #@0
    .line 2220
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1467
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getChipIconSize()F
    .registers 2

    #@0
    .line 1539
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconSize()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1502
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconTint()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getChipMinHeight()F
    .registers 2

    #@0
    .line 1110
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipMinHeight()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getChipStartPadding()F
    .registers 2

    #@0
    .line 1982
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1192
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .registers 2

    #@0
    .line 1226
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeWidth()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1301
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1629
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1745
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .registers 2

    #@0
    .line 2186
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconEndPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getCloseIconSize()F
    .registers 2

    #@0
    .line 1700
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconSize()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getCloseIconStartPadding()F
    .registers 2

    #@0
    .line 2152
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconStartPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1666
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    #@0
    .line 650
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4

    #@0
    .line 858
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    #@2
    if-eqz v0, :cond_1d

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@6
    .line 859
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getKeyboardFocusedVirtualViewId()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-eq v0, v1, :cond_15

    #@d
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@f
    .line 860
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    #@12
    move-result v0

    #@13
    if-ne v0, v1, :cond_1d

    #@15
    .line 861
    :cond_15
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1c
    goto :goto_20

    #@1d
    .line 863
    :cond_1d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    #@20
    :goto_20
    return-void
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    #@0
    .line 1948
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getIconEndPadding()F
    .registers 2

    #@0
    .line 2050
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconEndPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getIconStartPadding()F
    .registers 2

    #@0
    .line 2016
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconStartPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1261
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 1168
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    #@0
    .line 1913
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getTextEndPadding()F
    .registers 2

    #@0
    .line 2118
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public getTextStartPadding()F
    .registers 2

    #@0
    .line 2084
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    #@0
    .line 1755
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isCheckedIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1795
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckedIconVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isCheckedIconVisible()Z
    .registers 2

    #@0
    .line 1789
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isChipIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1420
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChipIconVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isChipIconVisible()Z
    .registers 2

    #@0
    .line 1414
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isCloseIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1583
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isCloseIconVisible()Z
    .registers 2

    #@0
    .line 1577
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-chip-Chip(Landroid/widget/CompoundButton;Z)V
    .registers 4

    #@0
    .line 258
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 259
    invoke-interface {v0, p0, p2}, Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;->onCheckedChanged(Ljava/lang/Object;Z)V

    #@7
    .line 261
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 262
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    #@e
    :cond_e
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 269
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    #@3
    .line 271
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@5
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@8
    return-void
.end method

.method public onChipDrawableSizeChange()V
    .registers 2

    #@0
    .line 709
    iget v0, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    #@5
    .line 710
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    #@8
    .line 712
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    #@b
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    #@0
    add-int/lit8 p1, p1, 0x2

    #@2
    .line 502
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    #@5
    move-result-object p1

    #@6
    .line 503
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 504
    sget-object v0, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    #@e
    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    #@11
    .line 506
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1c

    #@17
    .line 507
    sget-object v0, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    #@19
    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    #@1c
    :cond_1c
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    #@0
    .line 850
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 851
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    #@5
    if-eqz v0, :cond_c

    #@7
    .line 852
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@c
    :cond_c
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x7

    #@5
    if-eq v0, v1, :cond_11

    #@7
    const/16 v1, 0xa

    #@9
    if-eq v0, v1, :cond_c

    #@b
    goto :goto_24

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    .line 812
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    #@10
    goto :goto_24

    #@11
    .line 809
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@18
    move-result v1

    #@19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    #@20
    move-result v0

    #@21
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    #@24
    .line 817
    :goto_24
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@27
    move-result p1

    #@28
    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10

    #@0
    .line 285
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@a
    .line 287
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    #@d
    move-result v0

    #@e
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    #@11
    .line 288
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    #@14
    move-result v0

    #@15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    #@18
    .line 290
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    #@1b
    move-result-object v0

    #@1c
    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    #@1e
    if-eqz v0, :cond_49

    #@20
    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    #@26
    .line 292
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@29
    move-result-object p1

    #@2a
    .line 294
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->isSingleLine()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_35

    #@30
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipGroup;->getIndexOfChip(Landroid/view/View;)I

    #@33
    move-result v1

    #@34
    goto :goto_36

    #@35
    :cond_35
    const/4 v1, -0x1

    #@36
    :goto_36
    move v4, v1

    #@37
    .line 297
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipGroup;->getRowIndex(Landroid/view/View;)I

    #@3a
    move-result v2

    #@3b
    const/4 v3, 0x1

    #@3c
    const/4 v5, 0x1

    #@3d
    const/4 v6, 0x0

    #@3e
    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    #@41
    move-result v7

    #@42
    .line 296
    invoke-static/range {v2 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    #@45
    move-result-object v0

    #@46
    .line 295
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    #@49
    :cond_49
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4

    #@0
    .line 968
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    #@3
    move-result-object p2

    #@4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@7
    move-result v0

    #@8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@b
    move-result p1

    #@c
    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_23

    #@12
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    #@15
    move-result p1

    #@16
    if-eqz p1, :cond_23

    #@18
    .line 969
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    #@1b
    move-result-object p1

    #@1c
    const/16 p2, 0x3ea

    #@1e
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    #@21
    move-result-object p1

    #@22
    return-object p1

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    #@0
    .line 372
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRtlPropertiesChanged(I)V

    #@3
    .line 376
    iget v0, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    #@5
    if-eq v0, p1, :cond_c

    #@7
    .line 377
    iput p1, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    #@9
    .line 378
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    #@c
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    .line 773
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@b
    move-result v2

    #@c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@f
    move-result v3

    #@10
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    const/4 v3, 0x0

    #@16
    if-eqz v0, :cond_39

    #@18
    if-eq v0, v2, :cond_2b

    #@1a
    const/4 v4, 0x2

    #@1b
    if-eq v0, v4, :cond_21

    #@1d
    const/4 v1, 0x3

    #@1e
    if-eq v0, v1, :cond_34

    #@20
    goto :goto_40

    #@21
    .line 782
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    #@23
    if-eqz v0, :cond_40

    #@25
    if-nez v1, :cond_3e

    #@27
    .line 784
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    #@2a
    goto :goto_3e

    #@2b
    .line 790
    :cond_2b
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    #@2d
    if-eqz v0, :cond_34

    #@2f
    .line 791
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    #@32
    move v0, v2

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v0, v3

    #@35
    .line 796
    :goto_35
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    #@38
    goto :goto_41

    #@39
    :cond_39
    if-eqz v1, :cond_40

    #@3b
    .line 777
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    #@3e
    :cond_3e
    :goto_3e
    move v0, v2

    #@3f
    goto :goto_41

    #@40
    :cond_40
    :goto_40
    move v0, v3

    #@41
    :goto_41
    if-nez v0, :cond_4b

    #@43
    .line 801
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@46
    move-result p1

    #@47
    if-eqz p1, :cond_4a

    #@49
    goto :goto_4b

    #@4a
    :cond_4a
    move v2, v3

    #@4b
    :cond_4b
    :goto_4b
    return v2
.end method

.method public performCloseIconClick()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 749
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    #@4
    .line 752
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    #@6
    const/4 v2, 0x1

    #@7
    if-eqz v1, :cond_d

    #@9
    .line 753
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@c
    move v0, v2

    #@d
    .line 759
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    #@f
    if-eqz v1, :cond_16

    #@11
    .line 760
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    #@13
    invoke-virtual {v1, v2, v2}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    #@16
    :cond_16
    return v0
.end method

.method public setAccessibilityClassName(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 2336
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->accessibilityClassName:Ljava/lang/CharSequence;

    #@2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 542
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq p1, v0, :cond_12

    #@6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    #@8
    if-eq p1, v0, :cond_12

    #@a
    const-string p1, "Chip"

    #@c
    const-string v0, "Do not set the background; Chip manages its own background drawable."

    #@e
    .line 543
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    goto :goto_15

    #@12
    .line 545
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@15
    :goto_15
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    const-string p1, "Chip"

    #@2
    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    #@4
    .line 532
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 551
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq p1, v0, :cond_12

    #@6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    #@8
    if-eq p1, v0, :cond_12

    #@a
    const-string p1, "Chip"

    #@c
    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    #@e
    .line 552
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    goto :goto_15

    #@12
    .line 554
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    :goto_15
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    #@0
    const-string p1, "Chip"

    #@2
    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    #@4
    .line 537
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    const-string p1, "Chip"

    #@2
    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    #@4
    .line 522
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    const-string p1, "Chip"

    #@2
    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    #@4
    .line 527
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    #@0
    .line 1777
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1778
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    #@7
    :cond_7
    return-void
.end method

.method public setCheckableResource(I)V
    .registers 3

    #@0
    .line 1765
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1766
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckableResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    #@0
    .line 718
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 720
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    #@6
    goto :goto_10

    #@7
    .line 721
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 722
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    #@10
    :cond_10
    :goto_10
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 1864
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1865
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    #@7
    :cond_7
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1831
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    #@3
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1825
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    #@3
    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 3

    #@0
    .line 1852
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1853
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1900
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1901
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    #@7
    :cond_7
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .registers 3

    #@0
    .line 1887
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1888
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTintResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .registers 3

    #@0
    .line 1805
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1806
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .registers 3

    #@0
    .line 1817
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1818
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1098
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1099
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .registers 3

    #@0
    .line 1086
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1087
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipCornerRadius(F)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1179
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1180
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1155
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1156
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 3

    #@0
    .line 439
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eq v0, p1, :cond_17

    #@4
    .line 440
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    #@7
    .line 441
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@9
    const/4 v0, 0x0

    #@a
    .line 444
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setShouldDrawText(Z)V

    #@d
    .line 445
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@f
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    #@12
    .line 446
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    #@14
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    #@17
    :cond_17
    return-void
.end method

.method public setChipEndPadding(F)V
    .registers 3

    #@0
    .line 2242
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2243
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2230
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2231
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 1489
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1490
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1456
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    #@3
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1450
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    #@3
    return-void
.end method

.method public setChipIconResource(I)V
    .registers 3

    #@0
    .line 1477
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1478
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIconSize(F)V
    .registers 3

    #@0
    .line 1565
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1566
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .registers 3

    #@0
    .line 1551
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1552
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSizeResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1525
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1526
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIconTintResource(I)V
    .registers 3

    #@0
    .line 1512
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1513
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTintResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIconVisible(I)V
    .registers 3

    #@0
    .line 1430
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1431
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipIconVisible(Z)V
    .registers 3

    #@0
    .line 1442
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1443
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipMinHeight(F)V
    .registers 3

    #@0
    .line 1132
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1133
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .registers 3

    #@0
    .line 1120
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1121
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeightResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipStartPadding(F)V
    .registers 3

    #@0
    .line 2004
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2005
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .registers 3

    #@0
    .line 1992
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1993
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1214
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1215
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .registers 3

    #@0
    .line 1202
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1203
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .registers 3

    #@0
    .line 1248
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1249
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .registers 3

    #@0
    .line 1236
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1237
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1337
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method public setChipTextResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1331
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    #@b
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 1652
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1653
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    #@7
    .line 1655
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    #@a
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 1733
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1734
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1618
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    #@3
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1612
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    #@3
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .registers 3

    #@0
    .line 2208
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2209
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2196
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2197
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconResource(I)V
    .registers 3

    #@0
    .line 1639
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1640
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconResource(I)V

    #@7
    .line 1642
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    #@a
    return-void
.end method

.method public setCloseIconSize(F)V
    .registers 3

    #@0
    .line 1722
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1723
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .registers 3

    #@0
    .line 1710
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1711
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .registers 3

    #@0
    .line 2174
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2175
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .registers 3

    #@0
    .line 2162
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2163
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1688
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1689
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .registers 3

    #@0
    .line 1676
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1677
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTintResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setCloseIconVisible(I)V
    .registers 3

    #@0
    .line 1593
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    #@b
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .registers 3

    #@0
    .line 1603
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1604
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    #@7
    .line 1606
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    #@a
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    if-nez p1, :cond_10

    #@2
    if-nez p3, :cond_8

    #@4
    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void

    #@8
    .line 568
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string p2, "Please set end drawable using R.attr#closeIcon."

    #@c
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1

    #@10
    .line 565
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string p2, "Please set start drawable using R.attr#chipIcon."

    #@14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    if-nez p1, :cond_10

    #@2
    if-nez p3, :cond_8

    #@4
    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void

    #@8
    .line 613
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string p2, "Please set end drawable using R.attr#closeIcon."

    #@c
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1

    #@10
    .line 610
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string p2, "Please set start drawable using R.attr#chipIcon."

    #@14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 5

    #@0
    if-nez p1, :cond_10

    #@2
    if-nez p3, :cond_8

    #@4
    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    #@7
    return-void

    #@8
    .line 626
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string p2, "Please set end drawable using R.attr#closeIcon."

    #@c
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1

    #@10
    .line 623
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string p2, "Please set start drawable using R.attr#chipIcon."

    #@14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    if-nez p1, :cond_10

    #@2
    if-nez p3, :cond_8

    #@4
    .line 644
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void

    #@8
    .line 642
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string p2, "Please set end drawable using R.attr#closeIcon."

    #@c
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1

    #@10
    .line 639
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string p2, "Please set start drawable using R.attr#chipIcon."

    #@14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 5

    #@0
    if-nez p1, :cond_10

    #@2
    if-nez p3, :cond_8

    #@4
    .line 583
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    #@7
    return-void

    #@8
    .line 580
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string p2, "Please set end drawable using R.attr#closeIcon."

    #@c
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1

    #@10
    .line 577
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string p2, "Please set start drawable using R.attr#chipIcon."

    #@14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    if-nez p1, :cond_10

    #@2
    if-nez p3, :cond_8

    #@4
    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void

    #@8
    .line 596
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string p2, "Please set right drawable using R.attr#closeIcon."

    #@c
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1

    #@10
    .line 593
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string p2, "Please set left drawable using R.attr#chipIcon."

    #@14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public setElevation(F)V
    .registers 3

    #@0
    .line 277
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setElevation(F)V

    #@3
    .line 278
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 279
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setElevation(F)V

    #@a
    :cond_a
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3

    #@0
    .line 655
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 658
    :cond_5
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@7
    if-eq p1, v0, :cond_14

    #@9
    .line 661
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@c
    .line 662
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 663
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@13
    :cond_13
    return-void

    #@14
    .line 659
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@16
    const-string v0, "Text within a chip are not allowed to scroll."

    #@18
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .registers 2

    #@0
    .line 2266
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    #@2
    .line 2267
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    #@7
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    #@0
    const v0, 0x800013

    #@3
    if-eq p1, v0, :cond_d

    #@5
    const-string p1, "Chip"

    #@7
    const-string v0, "Chip text must be vertically center and start aligned"

    #@9
    .line 515
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    goto :goto_10

    #@d
    .line 517
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    #@10
    :goto_10
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 3

    #@0
    .line 1970
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1971
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    #@7
    :cond_7
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3

    #@0
    .line 1958
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1959
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setIconEndPadding(F)V
    .registers 3

    #@0
    .line 2072
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2073
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2060
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2061
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setIconStartPadding(F)V
    .registers 3

    #@0
    .line 2038
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2039
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .registers 3

    #@0
    .line 2026
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2027
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
            "Lcom/google/android/material/chip/Chip;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 979
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    #@2
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 3

    #@0
    .line 1306
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 1310
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLayoutDirection(I)V

    #@8
    return-void
.end method

.method public setLines(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-gt p1, v0, :cond_7

    #@3
    .line 680
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    #@6
    return-void

    #@7
    .line 678
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string v0, "Chip does not support multi-line text"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public setMaxLines(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-gt p1, v0, :cond_7

    #@3
    .line 696
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    #@6
    return-void

    #@7
    .line 694
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string v0, "Chip does not support multi-line text"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public setMaxWidth(I)V
    .registers 3

    #@0
    .line 701
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    #@3
    .line 702
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 703
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    #@a
    :cond_a
    return-void
.end method

.method public setMinLines(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-gt p1, v0, :cond_7

    #@3
    .line 688
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    #@6
    return-void

    #@7
    .line 686
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string v0, "Chip does not support multi-line text"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    #@0
    .line 730
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@2
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    #@0
    .line 735
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    #@2
    .line 736
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    #@5
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1286
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1287
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@7
    .line 1289
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@9
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    #@c
    move-result p1

    #@d
    if-nez p1, :cond_12

    #@f
    .line 1290
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    #@12
    :cond_12
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    #@0
    .line 1271
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 1272
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColorResource(I)V

    #@7
    .line 1273
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@9
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    #@c
    move-result p1

    #@d
    if-nez p1, :cond_12

    #@f
    .line 1274
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    #@12
    :cond_12
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    #@0
    .line 1162
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@5
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 3

    #@0
    .line 1935
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1936
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    #@7
    :cond_7
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3

    #@0
    .line 1923
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1924
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_6

    #@2
    .line 672
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    #@5
    return-void

    #@6
    .line 670
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string v0, "Chip does not support multi-line text"

    #@a
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    #@0
    .line 1316
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    if-nez p1, :cond_9

    #@7
    const-string p1, ""

    #@9
    .line 1322
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_11

    #@f
    const/4 v0, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    move-object v0, p1

    #@12
    :goto_12
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@15
    .line 1323
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@17
    if-eqz p2, :cond_1c

    #@19
    .line 1324
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    #@1c
    :cond_1c
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3

    #@0
    .line 1374
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    #@3
    .line 1375
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 1376
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    #@a
    .line 1378
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    #@d
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 3

    #@0
    .line 1365
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    #@3
    .line 1366
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 1367
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    #@a
    .line 1369
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    #@d
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 3

    #@0
    .line 1357
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1358
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    #@7
    .line 1360
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    #@a
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 3

    #@0
    .line 1347
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    #@7
    return-void
.end method

.method public setTextEndPadding(F)V
    .registers 3

    #@0
    .line 2140
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2141
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2128
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2129
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public setTextSize(IF)V
    .registers 5

    #@0
    .line 1383
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextSize(IF)V

    #@3
    .line 1384
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@5
    if-eqz v0, :cond_16

    #@7
    .line 1386
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v1

    #@f
    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@12
    move-result p1

    #@13
    .line 1385
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextSize(F)V

    #@16
    .line 1388
    :cond_16
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    #@19
    return-void
.end method

.method public setTextStartPadding(F)V
    .registers 3

    #@0
    .line 2106
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2107
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    #@7
    :cond_7
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .registers 3

    #@0
    .line 2094
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2095
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    #@7
    :cond_7
    return-void
.end method

.method public shouldEnsureMinTouchTargetSize()Z
    .registers 2

    #@0
    .line 2255
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    #@2
    return v0
.end method

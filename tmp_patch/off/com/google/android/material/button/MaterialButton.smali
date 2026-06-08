.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MaterialButton.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$SavedState;,
        Lcom/google/android/material/button/MaterialButton$IconGravity;,
        Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;,
        Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field public static final ICON_GRAVITY_END:I = 0x3

.field public static final ICON_GRAVITY_START:I = 0x1

.field public static final ICON_GRAVITY_TEXT_END:I = 0x4

.field public static final ICON_GRAVITY_TEXT_START:I = 0x2

.field public static final ICON_GRAVITY_TEXT_TOP:I = 0x20

.field public static final ICON_GRAVITY_TOP:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButton"


# instance fields
.field private broadcasting:Z

.field private checked:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconLeft:I

.field private iconPadding:I

.field private iconSize:I

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private iconTop:I

.field private final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

.field private final onCheckedChangeListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [I

    #@3
    const v2, 0x101009f

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    .line 132
    sput-object v1, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    #@b
    new-array v0, v0, [I

    #@d
    const v1, 0x10100a0

    #@10
    aput v1, v0, v3

    #@12
    .line 133
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    #@14
    .line 197
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Button:I

    #@16
    sput v0, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    #@18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 218
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 222
    sget v0, Lcom/google/android/material/R$attr;->materialButtonStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    #@0
    .line 226
    sget v6, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 200
    new-instance p1, Ljava/util/LinkedHashSet;

    #@b
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    #@10
    const/4 p1, 0x0

    #@11
    .line 213
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@13
    .line 214
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    #@15
    .line 228
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@18
    move-result-object v7

    #@19
    .line 230
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    #@1b
    new-array v5, p1, [I

    #@1d
    move-object v0, v7

    #@1e
    move-object v1, p2

    #@1f
    move v3, p3

    #@20
    move v4, v6

    #@21
    .line 231
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@24
    move-result-object v0

    #@25
    .line 234
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconPadding:I

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    #@2d
    .line 235
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconTintMode:I

    #@2f
    const/4 v2, -0x1

    #@30
    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@33
    move-result v1

    #@34
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@36
    .line 236
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@3c
    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v1

    #@40
    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconTint:I

    #@42
    .line 240
    invoke-static {v1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@45
    move-result-object v1

    #@46
    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    #@48
    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v1

    #@4c
    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_icon:I

    #@4e
    invoke-static {v1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    #@51
    move-result-object v1

    #@52
    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@54
    .line 243
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconGravity:I

    #@56
    const/4 v2, 0x1

    #@57
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@5a
    move-result v1

    #@5b
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@5d
    .line 245
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_iconSize:I

    #@5f
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@62
    move-result v1

    #@63
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@65
    .line 247
    invoke-static {v7, p2, p3, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@68
    move-result-object p2

    #@69
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@6c
    move-result-object p2

    #@6d
    .line 250
    new-instance p3, Lcom/google/android/material/button/MaterialButtonHelper;

    #@6f
    invoke-direct {p3, p0, p2}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@72
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@74
    .line 251
    invoke-virtual {p3, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    #@77
    .line 253
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7a
    .line 255
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    #@7c
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    #@7f
    .line 256
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@81
    if-eqz p2, :cond_84

    #@83
    move p1, v2

    #@84
    :cond_84
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@87
    return-void
.end method

.method private getA11yClassName()Ljava/lang/String;
    .registers 2

    #@0
    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-class v0, Landroid/widget/CompoundButton;

    #@8
    goto :goto_b

    #@9
    :cond_9
    const-class v0, Landroid/widget/Button;

    #@b
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .registers 3

    #@0
    .line 536
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTextAlignment()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_19

    #@7
    const/4 v1, 0x6

    #@8
    if-eq v0, v1, :cond_16

    #@a
    const/4 v1, 0x3

    #@b
    if-eq v0, v1, :cond_16

    #@d
    const/4 v1, 0x4

    #@e
    if-eq v0, v1, :cond_13

    #@10
    .line 548
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@12
    return-object v0

    #@13
    .line 540
    :cond_13
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@15
    return-object v0

    #@16
    .line 543
    :cond_16
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@18
    return-object v0

    #@19
    .line 538
    :cond_19
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .registers 3

    #@0
    .line 511
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getGravity()I

    #@3
    move-result v0

    #@4
    const v1, 0x800007

    #@7
    and-int/2addr v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    if-eq v0, v1, :cond_19

    #@b
    const/4 v1, 0x5

    #@c
    if-eq v0, v1, :cond_16

    #@e
    const v1, 0x800005

    #@11
    if-eq v0, v1, :cond_16

    #@13
    .line 520
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@15
    return-object v0

    #@16
    .line 516
    :cond_16
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@18
    return-object v0

    #@19
    .line 513
    :cond_19
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@1b
    return-object v0
.end method

.method private getTextHeight()I
    .registers 6

    #@0
    .line 626
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLineCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-le v0, v1, :cond_10

    #@7
    .line 628
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 630
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    #@13
    move-result-object v0

    #@14
    .line 631
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 632
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@1f
    move-result-object v2

    #@20
    if-eqz v2, :cond_2e

    #@22
    .line 635
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 638
    :cond_2e
    new-instance v2, Landroid/graphics/Rect;

    #@30
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@33
    const/4 v3, 0x0

    #@34
    .line 639
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@37
    move-result v4

    #@38
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@3b
    .line 641
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@3e
    move-result v0

    #@3f
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    #@46
    move-result v1

    #@47
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@4a
    move-result v0

    #@4b
    return v0
.end method

.method private getTextLayoutWidth()I
    .registers 5

    #@0
    .line 618
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLineCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    :goto_6
    if-ge v2, v0, :cond_17

    #@8
    .line 620
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    #@f
    move-result v3

    #@10
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    #@13
    move-result v1

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_6

    #@17
    :cond_17
    float-to-double v0, v1

    #@18
    .line 622
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@1b
    move-result-wide v0

    #@1c
    double-to-int v0, v0

    #@1d
    return v0
.end method

.method private isIconEnd()Z
    .registers 3

    #@0
    .line 878
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_b

    #@5
    const/4 v1, 0x4

    #@6
    if-ne v0, v1, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 v0, 0x1

    #@c
    :goto_c
    return v0
.end method

.method private isIconStart()Z
    .registers 4

    #@0
    .line 874
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_a

    #@5
    const/4 v2, 0x2

    #@6
    if-ne v0, v2, :cond_9

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v1, 0x0

    #@a
    :cond_a
    :goto_a
    return v1
.end method

.method private isIconTop()Z
    .registers 3

    #@0
    .line 882
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@2
    const/16 v1, 0x10

    #@4
    if-eq v0, v1, :cond_d

    #@6
    const/16 v1, 0x20

    #@8
    if-ne v0, v1, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0
.end method

.method private isLayoutRTL()Z
    .registers 3

    #@0
    .line 645
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    :goto_9
    return v1
.end method

.method private isUsingOriginalBackground()Z
    .registers 2

    #@0
    .line 1299
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_c

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

.method private resetIconDrawable()V
    .registers 3

    #@0
    .line 864
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_d

    #@7
    .line 865
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-static {p0, v0, v1, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@c
    goto :goto_24

    #@d
    .line 866
    :cond_d
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 867
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-static {p0, v1, v1, v0, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@18
    goto :goto_24

    #@19
    .line 868
    :cond_19
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_24

    #@1f
    .line 869
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@21
    invoke-static {p0, v1, v0, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@24
    :cond_24
    :goto_24
    return-void
.end method

.method private updateIcon(Z)V
    .registers 8

    #@0
    .line 829
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_43

    #@5
    .line 830
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@f
    .line 831
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    #@11
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@14
    .line 832
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@16
    if-eqz v0, :cond_1d

    #@18
    .line 833
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@1d
    .line 836
    :cond_1d
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@1f
    if-eqz v0, :cond_22

    #@21
    goto :goto_28

    #@22
    :cond_22
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@24
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@27
    move-result v0

    #@28
    .line 837
    :goto_28
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@2a
    if-eqz v2, :cond_2d

    #@2c
    goto :goto_33

    #@2d
    :cond_2d
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@2f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@32
    move-result v2

    #@33
    .line 838
    :goto_33
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@35
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    #@37
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    #@39
    add-int/2addr v0, v4

    #@3a
    add-int/2addr v2, v5

    #@3b
    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3e
    .line 839
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@40
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@43
    :cond_43
    if-eqz p1, :cond_49

    #@45
    .line 844
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    #@48
    return-void

    #@49
    .line 849
    :cond_49
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@4c
    move-result-object p1

    #@4d
    const/4 v0, 0x0

    #@4e
    .line 850
    aget-object v2, p1, v0

    #@50
    .line 851
    aget-object v3, p1, v1

    #@52
    const/4 v4, 0x2

    #@53
    .line 852
    aget-object p1, p1, v4

    #@55
    .line 854
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_5f

    #@5b
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@5d
    if-ne v2, v4, :cond_75

    #@5f
    .line 855
    :cond_5f
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_69

    #@65
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@67
    if-ne p1, v2, :cond_75

    #@69
    .line 856
    :cond_69
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    #@6c
    move-result p1

    #@6d
    if-eqz p1, :cond_74

    #@6f
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@71
    if-eq v3, p1, :cond_74

    #@73
    goto :goto_75

    #@74
    :cond_74
    move v1, v0

    #@75
    :cond_75
    :goto_75
    if-eqz v1, :cond_7a

    #@77
    .line 859
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    #@7a
    :cond_7a
    return-void
.end method

.method private updateIconPosition(II)V
    .registers 8

    #@0
    .line 553
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_b8

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_c

    #@a
    goto/16 :goto_b8

    #@c
    .line 557
    :cond_c
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    #@f
    move-result v0

    #@10
    const/4 v1, 0x2

    #@11
    const/4 v2, 0x0

    #@12
    if-nez v0, :cond_5b

    #@14
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    goto :goto_5b

    #@1b
    .line 589
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    #@1e
    move-result p1

    #@1f
    if-eqz p1, :cond_b2

    #@21
    .line 590
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    #@23
    .line 591
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@25
    const/16 v0, 0x10

    #@27
    if-ne p1, v0, :cond_2f

    #@29
    .line 592
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    #@2b
    .line 593
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@2e
    return-void

    #@2f
    .line 597
    :cond_2f
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@31
    if-nez p1, :cond_39

    #@33
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@38
    move-result p1

    #@39
    .line 602
    :cond_39
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    #@3c
    move-result v0

    #@3d
    sub-int/2addr p2, v0

    #@3e
    .line 603
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    #@41
    move-result v0

    #@42
    sub-int/2addr p2, v0

    #@43
    sub-int/2addr p2, p1

    #@44
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    #@46
    sub-int/2addr p2, p1

    #@47
    .line 606
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    #@4a
    move-result p1

    #@4b
    sub-int/2addr p2, p1

    #@4c
    div-int/2addr p2, v1

    #@4d
    .line 599
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    #@50
    move-result p1

    #@51
    .line 609
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    #@53
    if-eq p2, p1, :cond_b2

    #@55
    .line 610
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    #@57
    .line 611
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@5a
    goto :goto_b2

    #@5b
    .line 558
    :cond_5b
    :goto_5b
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    #@5d
    .line 560
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    #@60
    move-result-object p2

    #@61
    .line 561
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@63
    const/4 v3, 0x1

    #@64
    if-eq v0, v3, :cond_b3

    #@66
    const/4 v4, 0x3

    #@67
    if-eq v0, v4, :cond_b3

    #@69
    if-ne v0, v1, :cond_6f

    #@6b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@6d
    if-eq p2, v0, :cond_b3

    #@6f
    :cond_6f
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@71
    const/4 v1, 0x4

    #@72
    if-ne v0, v1, :cond_79

    #@74
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@76
    if-ne p2, v0, :cond_79

    #@78
    goto :goto_b3

    #@79
    .line 570
    :cond_79
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@7b
    if-nez v0, :cond_83

    #@7d
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@7f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@82
    move-result v0

    #@83
    .line 572
    :cond_83
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    #@86
    move-result v4

    #@87
    sub-int/2addr p1, v4

    #@88
    .line 573
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@8b
    move-result v4

    #@8c
    sub-int/2addr p1, v4

    #@8d
    sub-int/2addr p1, v0

    #@8e
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    #@90
    sub-int/2addr p1, v0

    #@91
    .line 576
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@94
    move-result v0

    #@95
    sub-int/2addr p1, v0

    #@96
    .line 578
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@98
    if-ne p2, v0, :cond_9c

    #@9a
    div-int/lit8 p1, p1, 0x2

    #@9c
    .line 581
    :cond_9c
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isLayoutRTL()Z

    #@9f
    move-result p2

    #@a0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@a2
    if-ne v0, v1, :cond_a5

    #@a4
    goto :goto_a6

    #@a5
    :cond_a5
    move v3, v2

    #@a6
    :goto_a6
    if-eq p2, v3, :cond_a9

    #@a8
    neg-int p1, p1

    #@a9
    .line 585
    :cond_a9
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    #@ab
    if-eq p2, p1, :cond_b2

    #@ad
    .line 586
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    #@af
    .line 587
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@b2
    :cond_b2
    :goto_b2
    return-void

    #@b3
    .line 565
    :cond_b3
    :goto_b3
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    #@b5
    .line 566
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@b8
    :cond_b8
    :goto_b8
    return-void
.end method


# virtual methods
.method public addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .registers 3

    #@0
    .line 1144
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public clearOnCheckedChangeListeners()V
    .registers 2

    #@0
    .line 1159
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 384
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 395
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCornerRadius()I
    .registers 2

    #@0
    .line 1049
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerRadius()I

    #@b
    move-result v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 757
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getIconGravity()I
    .registers 2

    #@0
    .line 1061
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@2
    return v0
.end method

.method public getIconPadding()I
    .registers 2

    #@0
    .line 682
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    #@2
    return v0
.end method

.method public getIconSize()I
    .registers 2

    #@0
    .line 712
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@2
    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 796
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 821
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getInsetBottom()I
    .registers 2

    #@0
    .line 1096
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetBottom()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInsetTop()I
    .registers 2

    #@0
    .line 1116
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetTop()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 923
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    #@b
    move-result-object v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    #@0
    .line 1273
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 1274
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1276
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    const-string v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 965
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    #@b
    move-result-object v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2

    #@0
    .line 1008
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeWidth()I

    #@b
    move-result v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 329
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 330
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 335
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 367
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 368
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 372
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public isCheckable()Z
    .registers 2

    #@0
    .line 1232
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isCheckable()Z

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

.method public isChecked()Z
    .registers 2

    #@0
    .line 1188
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@2
    return v0
.end method

.method public isToggleCheckedStateOnClick()Z
    .registers 2

    #@0
    .line 1212
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isToggleCheckedStateOnClick()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 465
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    #@3
    .line 467
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_12

    #@9
    .line 468
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@b
    .line 469
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@e
    move-result-object v0

    #@f
    .line 468
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@12
    :cond_12
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    #@0
    add-int/lit8 p1, p1, 0x2

    #@2
    .line 1121
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    #@5
    move-result-object p1

    #@6
    .line 1123
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 1124
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    #@e
    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    #@11
    .line 1127
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1c

    #@17
    .line 1128
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    #@19
    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    #@1c
    :cond_1c
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 276
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 277
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@a
    .line 278
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    #@d
    move-result v0

    #@e
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    #@11
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    #@0
    .line 267
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 268
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@a
    .line 269
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    #@d
    move-result v0

    #@e
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    #@11
    .line 270
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    #@14
    move-result v0

    #@15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    #@18
    .line 271
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    #@1f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 449
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    #@3
    .line 454
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    #@6
    move-result p1

    #@7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    #@a
    move-result p2

    #@b
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    #@e
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 292
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 293
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 296
    :cond_8
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    #@a
    .line 297
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 298
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    #@13
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    #@16
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 284
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 285
    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 286
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@b
    iput-boolean v0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    #@d
    return-object v1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    #@0
    .line 459
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@3
    .line 460
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    #@6
    move-result p1

    #@7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    #@a
    move-result p2

    #@b
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    #@e
    return-void
.end method

.method public performClick()Z
    .registers 2

    #@0
    .line 1198
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isToggleCheckedStateOnClick()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 1199
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    #@b
    .line 1202
    :cond_b
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public refreshDrawableState()V
    .registers 3

    #@0
    .line 484
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->refreshDrawableState()V

    #@3
    .line 485
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_16

    #@7
    .line 486
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    #@a
    move-result-object v0

    #@b
    .line 487
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    #@16
    :cond_16
    return-void
.end method

.method public removeOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .registers 3

    #@0
    .line 1154
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 411
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    .line 400
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 401
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundColor(I)V

    #@b
    goto :goto_f

    #@c
    .line 405
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    #@f
    :goto_f
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 425
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_28

    #@6
    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    if-eq p1, v0, :cond_1c

    #@c
    const-string v0, "MaterialButton"

    #@e
    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    #@10
    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 434
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    #@18
    .line 435
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1b
    goto :goto_2b

    #@1c
    .line 440
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@23
    move-result-object p1

    #@24
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@27
    goto :goto_2b

    #@28
    .line 443
    :cond_28
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2b
    :goto_2b
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 418
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 420
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 378
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 389
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@3
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    #@0
    .line 1242
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 1243
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCheckable(Z)V

    #@b
    :cond_b
    return-void
.end method

.method public setChecked(Z)V
    .registers 4

    #@0
    .line 1164
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_4b

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_4b

    #@c
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@e
    if-eq v0, p1, :cond_4b

    #@10
    .line 1165
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@12
    .line 1166
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    #@15
    .line 1169
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object p1

    #@19
    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@1b
    if-eqz p1, :cond_28

    #@1d
    .line 1170
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    #@20
    move-result-object p1

    #@21
    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    #@23
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@25
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedStateChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    #@28
    .line 1174
    :cond_28
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    #@2a
    if-eqz p1, :cond_2d

    #@2c
    return-void

    #@2d
    :cond_2d
    const/4 p1, 0x1

    #@2e
    .line 1178
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    #@30
    .line 1179
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    #@32
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object p1

    #@36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_48

    #@3c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;

    #@42
    .line 1180
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@44
    invoke-interface {v0, p0, v1}, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    #@47
    goto :goto_36

    #@48
    :cond_48
    const/4 p1, 0x0

    #@49
    .line 1182
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    #@4b
    :cond_4b
    return-void
.end method

.method public setCornerRadius(I)V
    .registers 3

    #@0
    .line 1020
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 1021
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerRadius(I)V

    #@b
    :cond_b
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .registers 3

    #@0
    .line 1034
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 1035
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@d
    move-result p1

    #@e
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    #@11
    :cond_11
    return-void
.end method

.method public setElevation(F)V
    .registers 3

    #@0
    .line 476
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setElevation(F)V

    #@3
    .line 477
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_12

    #@9
    .line 478
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@b
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@12
    :cond_12
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 725
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_15

    #@4
    .line 726
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    #@6
    const/4 p1, 0x1

    #@7
    .line 727
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@a
    .line 728
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    #@d
    move-result p1

    #@e
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    #@11
    move-result v0

    #@12
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    #@15
    :cond_15
    return-void
.end method

.method public setIconGravity(I)V
    .registers 3

    #@0
    .line 1072
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@2
    if-eq v0, p1, :cond_11

    #@4
    .line 1073
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    #@6
    .line 1074
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    #@9
    move-result p1

    #@a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    #@d
    move-result v0

    #@e
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    #@11
    :cond_11
    return-void
.end method

.method public setIconPadding(I)V
    .registers 3

    #@0
    .line 667
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 668
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    #@6
    .line 669
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    #@9
    :cond_9
    return-void
.end method

.method public setIconResource(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 743
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 745
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    #@0
    if-ltz p1, :cond_d

    #@2
    .line 697
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@4
    if-eq v0, p1, :cond_c

    #@6
    .line 698
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    #@8
    const/4 p1, 0x1

    #@9
    .line 699
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@c
    :cond_c
    return-void

    #@d
    .line 694
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string v0, "iconSize cannot be less than 0"

    #@11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 769
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_a

    #@4
    .line 770
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    #@6
    const/4 p1, 0x0

    #@7
    .line 771
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@a
    :cond_a
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 807
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    if-eq v0, p1, :cond_a

    #@4
    .line 808
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    const/4 p1, 0x0

    #@7
    .line 809
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    #@a
    :cond_a
    return-void
.end method

.method public setIconTintResource(I)V
    .registers 3

    #@0
    .line 784
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    #@b
    return-void
.end method

.method public setInsetBottom(I)V
    .registers 3

    #@0
    .line 1085
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetBottom(I)V

    #@5
    return-void
.end method

.method public setInsetTop(I)V
    .registers 3

    #@0
    .line 1105
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetTop(I)V

    #@5
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 656
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V
    .registers 2

    #@0
    .line 1287
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    #@2
    return-void
.end method

.method public setPressed(Z)V
    .registers 3

    #@0
    .line 1292
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1293
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;->onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    #@7
    .line 1295
    :cond_7
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    #@a
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 894
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 895
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@b
    :cond_b
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    #@0
    .line 908
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 909
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@11
    :cond_11
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    #@0
    .line 1254
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 1255
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@b
    return-void

    #@c
    .line 1257
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    #@e
    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    #@10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw p1
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .registers 3

    #@0
    .line 1303
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 1304
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShouldDrawSurfaceColorStroke(Z)V

    #@b
    :cond_b
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 936
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 937
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@b
    :cond_b
    return-void
.end method

.method public setStrokeColorResource(I)V
    .registers 3

    #@0
    .line 951
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 952
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@11
    :cond_11
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    #@0
    .line 978
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 979
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeWidth(I)V

    #@b
    :cond_b
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .registers 3

    #@0
    .line 993
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 994
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@d
    move-result p1

    #@e
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    #@11
    :cond_11
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 310
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 311
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@b
    goto :goto_f

    #@c
    .line 315
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@f
    :goto_f
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 348
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 349
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@b
    goto :goto_f

    #@c
    .line 353
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@f
    :goto_f
    return-void
.end method

.method public setTextAlignment(I)V
    .registers 3

    #@0
    .line 499
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextAlignment(I)V

    #@3
    .line 500
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    #@6
    move-result p1

    #@7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    #@a
    move-result v0

    #@b
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    #@e
    return-void
.end method

.method public setToggleCheckedStateOnClick(Z)V
    .registers 3

    #@0
    .line 1222
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setToggleCheckedStateOnClick(Z)V

    #@5
    return-void
.end method

.method public toggle()V
    .registers 2

    #@0
    .line 1193
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    #@2
    xor-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    #@7
    return-void
.end method

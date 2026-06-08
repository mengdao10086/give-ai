.class public Lcom/google/android/material/chip/ChipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATE:[I

.field private static final MAX_CHIP_ICON_HEIGHT:I = 0x18

.field private static final NAMESPACE_APP:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field private static final closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;

.field private checkedIconTint:Landroid/content/res/ColorStateList;

.field private checkedIconVisible:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;

.field private chipIconSize:F

.field private chipIconTint:Landroid/content/res/ColorStateList;

.field private chipIconVisible:Z

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;

.field private chipStrokeWidth:F

.field private chipSurfaceColor:Landroid/content/res/ColorStateList;

.field private closeIcon:Landroid/graphics/drawable/Drawable;

.field private closeIconContentDescription:Ljava/lang/CharSequence;

.field private closeIconEndPadding:F

.field private closeIconRipple:Landroid/graphics/drawable/Drawable;

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;

.field private closeIconVisible:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private compatRippleColor:Landroid/content/res/ColorStateList;

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I

.field private currentChipStrokeColor:I

.field private currentChipSurfaceColor:I

.field private currentCompatRippleColor:I

.field private currentCompositeSurfaceBackgroundColor:I

.field private currentTextColor:I

.field private currentTint:I

.field private final debugPaint:Landroid/graphics/Paint;

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hasChipIconTint:Z

.field private hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private isShapeThemingEnabled:Z

.field private maxWidth:I

.field private final pointF:Landroid/graphics/PointF;

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private final shapePath:Landroid/graphics/Path;

.field private shouldDrawText:Z

.field private showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private text:Ljava/lang/CharSequence;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field private textEndPadding:F

.field private textStartPadding:F

.field private tint:Landroid/content/res/ColorStateList;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;

.field private truncateAt:Landroid/text/TextUtils$TruncateAt;

.field private useCompatRipple:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x101009e

    #@7
    aput v2, v0, v1

    #@9
    .line 166
    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    #@b
    .line 170
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    #@d
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    #@f
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    #@12
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    #@15
    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    #@17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    #@0
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    const/high16 p2, -0x40800000    # -1.0f

    #@5
    .line 176
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    #@7
    .line 242
    new-instance p2, Landroid/graphics/Paint;

    #@9
    const/4 p3, 0x1

    #@a
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    #@d
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@f
    .line 244
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    #@11
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    #@14
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@16
    .line 245
    new-instance p2, Landroid/graphics/RectF;

    #@18
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    #@1b
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@1d
    .line 246
    new-instance p2, Landroid/graphics/PointF;

    #@1f
    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    #@22
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    #@24
    .line 247
    new-instance p2, Landroid/graphics/Path;

    #@26
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    #@29
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    #@2b
    const/16 p2, 0xff

    #@2d
    .line 259
    iput p2, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    #@2f
    .line 263
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@31
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    #@33
    .line 267
    new-instance p2, Ljava/lang/ref/WeakReference;

    #@35
    const/4 p4, 0x0

    #@36
    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@39
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    #@3b
    .line 313
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@3e
    .line 315
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@40
    .line 316
    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    #@42
    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    #@45
    iput-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@47
    const-string v0, ""

    #@49
    .line 318
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@4b
    .line 320
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@4e
    move-result-object p2

    #@4f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@52
    move-result-object p1

    #@53
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@56
    move-result-object p1

    #@57
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    #@59
    iput p1, p2, Landroid/text/TextPaint;->density:F

    #@5b
    .line 321
    iput-object p4, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@5d
    .line 326
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    #@5f
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setState([I)Z

    #@62
    .line 327
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    #@65
    .line 328
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    #@67
    .line 330
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@69
    if-eqz p1, :cond_71

    #@6b
    .line 332
    sget-object p1, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    #@6d
    const/4 p2, -0x1

    #@6e
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    #@71
    :cond_71
    return-void
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 1329
    :cond_3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@6
    .line 1330
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@9
    move-result v0

    #@a
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@d
    .line 1331
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getLevel()I

    #@10
    move-result v0

    #@11
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@14
    .line 1332
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isVisible()Z

    #@17
    move-result v0

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@1c
    .line 1334
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@1e
    if-ne p1, v0, :cond_33

    #@20
    .line 1335
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2d

    #@26
    .line 1336
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2d
    .line 1338
    :cond_2d
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    #@2f
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@32
    return-void

    #@33
    .line 1341
    :cond_33
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@35
    if-ne p1, v0, :cond_40

    #@37
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    #@39
    if-eqz v1, :cond_40

    #@3b
    .line 1342
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    #@3d
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@40
    .line 1344
    :cond_40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_4d

    #@46
    .line 1345
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@4d
    :cond_4d
    return-void
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 6

    #@0
    .line 823
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    #@3
    .line 825
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_f

    #@9
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_49

    #@f
    .line 826
    :cond_f
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    #@11
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    #@13
    add-float/2addr v0, v1

    #@14
    .line 827
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCurrentChipIconWidth()F

    #@17
    move-result v1

    #@18
    .line 829
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_2a

    #@1e
    .line 830
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@20
    int-to-float v2, v2

    #@21
    add-float/2addr v2, v0

    #@22
    iput v2, p2, Landroid/graphics/RectF;->left:F

    #@24
    .line 831
    iget v0, p2, Landroid/graphics/RectF;->left:F

    #@26
    add-float/2addr v0, v1

    #@27
    iput v0, p2, Landroid/graphics/RectF;->right:F

    #@29
    goto :goto_35

    #@2a
    .line 833
    :cond_2a
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@2c
    int-to-float v2, v2

    #@2d
    sub-float/2addr v2, v0

    #@2e
    iput v2, p2, Landroid/graphics/RectF;->right:F

    #@30
    .line 834
    iget v0, p2, Landroid/graphics/RectF;->right:F

    #@32
    sub-float/2addr v0, v1

    #@33
    iput v0, p2, Landroid/graphics/RectF;->left:F

    #@35
    .line 837
    :goto_35
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCurrentChipIconHeight()F

    #@38
    move-result v0

    #@39
    .line 838
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    #@3c
    move-result p1

    #@3d
    const/high16 v1, 0x40000000    # 2.0f

    #@3f
    div-float v1, v0, v1

    #@41
    sub-float/2addr p1, v1

    #@42
    iput p1, p2, Landroid/graphics/RectF;->top:F

    #@44
    .line 839
    iget p1, p2, Landroid/graphics/RectF;->top:F

    #@46
    add-float/2addr p1, v0

    #@47
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    #@49
    :cond_49
    return-void
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5

    #@0
    .line 933
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@3
    .line 935
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_2a

    #@9
    .line 936
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@b
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    #@d
    add-float/2addr v0, v1

    #@e
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@10
    add-float/2addr v0, v1

    #@11
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    #@13
    add-float/2addr v0, v1

    #@14
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    #@16
    add-float/2addr v0, v1

    #@17
    .line 943
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_24

    #@1d
    .line 944
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@1f
    int-to-float p1, p1

    #@20
    sub-float/2addr p1, v0

    #@21
    iput p1, p2, Landroid/graphics/RectF;->right:F

    #@23
    goto :goto_2a

    #@24
    .line 946
    :cond_24
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@26
    int-to-float p1, p1

    #@27
    add-float/2addr p1, v0

    #@28
    iput p1, p2, Landroid/graphics/RectF;->left:F

    #@2a
    :cond_2a
    :goto_2a
    return-void
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5

    #@0
    .line 914
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    #@3
    .line 916
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_42

    #@9
    .line 917
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@b
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    #@d
    add-float/2addr v0, v1

    #@e
    .line 919
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_22

    #@14
    .line 920
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@16
    int-to-float v1, v1

    #@17
    sub-float/2addr v1, v0

    #@18
    iput v1, p2, Landroid/graphics/RectF;->right:F

    #@1a
    .line 921
    iget v0, p2, Landroid/graphics/RectF;->right:F

    #@1c
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@1e
    sub-float/2addr v0, v1

    #@1f
    iput v0, p2, Landroid/graphics/RectF;->left:F

    #@21
    goto :goto_2f

    #@22
    .line 923
    :cond_22
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@24
    int-to-float v1, v1

    #@25
    add-float/2addr v1, v0

    #@26
    iput v1, p2, Landroid/graphics/RectF;->left:F

    #@28
    .line 924
    iget v0, p2, Landroid/graphics/RectF;->left:F

    #@2a
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@2c
    add-float/2addr v0, v1

    #@2d
    iput v0, p2, Landroid/graphics/RectF;->right:F

    #@2f
    .line 927
    :goto_2f
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    #@32
    move-result p1

    #@33
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@35
    const/high16 v1, 0x40000000    # 2.0f

    #@37
    div-float/2addr v0, v1

    #@38
    sub-float/2addr p1, v0

    #@39
    iput p1, p2, Landroid/graphics/RectF;->top:F

    #@3b
    .line 928
    iget p1, p2, Landroid/graphics/RectF;->top:F

    #@3d
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@3f
    add-float/2addr p1, v0

    #@40
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    #@42
    :cond_42
    return-void
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5

    #@0
    .line 952
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    #@3
    .line 954
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_3d

    #@9
    .line 955
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@b
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    #@d
    add-float/2addr v0, v1

    #@e
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@10
    add-float/2addr v0, v1

    #@11
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    #@13
    add-float/2addr v0, v1

    #@14
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    #@16
    add-float/2addr v0, v1

    #@17
    .line 962
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_28

    #@1d
    .line 963
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@1f
    int-to-float v1, v1

    #@20
    iput v1, p2, Landroid/graphics/RectF;->right:F

    #@22
    .line 964
    iget v1, p2, Landroid/graphics/RectF;->right:F

    #@24
    sub-float/2addr v1, v0

    #@25
    iput v1, p2, Landroid/graphics/RectF;->left:F

    #@27
    goto :goto_33

    #@28
    .line 966
    :cond_28
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@2a
    int-to-float v1, v1

    #@2b
    iput v1, p2, Landroid/graphics/RectF;->left:F

    #@2d
    .line 967
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@2f
    int-to-float v1, v1

    #@30
    add-float/2addr v1, v0

    #@31
    iput v1, p2, Landroid/graphics/RectF;->right:F

    #@33
    .line 970
    :goto_33
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@35
    int-to-float v0, v0

    #@36
    iput v0, p2, Landroid/graphics/RectF;->top:F

    #@38
    .line 971
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@3a
    int-to-float p1, p1

    #@3b
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    #@3d
    :cond_3d
    return-void
.end method

.method private calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 6

    #@0
    .line 888
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    #@3
    .line 890
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@5
    if-eqz v0, :cond_44

    #@7
    .line 891
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    #@9
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@c
    move-result v1

    #@d
    add-float/2addr v0, v1

    #@e
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    #@10
    add-float/2addr v0, v1

    #@11
    .line 892
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    #@16
    move-result v2

    #@17
    add-float/2addr v1, v2

    #@18
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    #@1a
    add-float/2addr v1, v2

    #@1b
    .line 894
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_2e

    #@21
    .line 895
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@23
    int-to-float v2, v2

    #@24
    add-float/2addr v2, v0

    #@25
    iput v2, p2, Landroid/graphics/RectF;->left:F

    #@27
    .line 896
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@29
    int-to-float v0, v0

    #@2a
    sub-float/2addr v0, v1

    #@2b
    iput v0, p2, Landroid/graphics/RectF;->right:F

    #@2d
    goto :goto_3a

    #@2e
    .line 898
    :cond_2e
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@30
    int-to-float v2, v2

    #@31
    add-float/2addr v2, v1

    #@32
    iput v2, p2, Landroid/graphics/RectF;->left:F

    #@34
    .line 899
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@36
    int-to-float v1, v1

    #@37
    sub-float/2addr v1, v0

    #@38
    iput v1, p2, Landroid/graphics/RectF;->right:F

    #@3a
    .line 904
    :goto_3a
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@3c
    int-to-float v0, v0

    #@3d
    iput v0, p2, Landroid/graphics/RectF;->top:F

    #@3f
    .line 905
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@41
    int-to-float p1, p1

    #@42
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    #@44
    :cond_44
    return-void
.end method

.method private calculateTextCenterFromBaseline()F
    .registers 3

    #@0
    .line 879
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@8
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    #@b
    .line 880
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@d
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    #@f
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    #@11
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    #@13
    add-float/2addr v0, v1

    #@14
    const/high16 v1, 0x40000000    # 2.0f

    #@16
    div-float/2addr v0, v1

    #@17
    return v0
.end method

.method private canShowCheckedIcon()Z
    .registers 2

    #@0
    .line 533
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_e

    #@8
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;
    .registers 5

    #@0
    .line 280
    new-instance v0, Lcom/google/android/material/chip/ChipDrawable;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 281
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    #@8
    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/chip/ChipDrawable;
    .registers 4

    #@0
    const-string v0, "chip"

    #@2
    .line 299
    invoke-static {p0, p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    #@5
    move-result-object p1

    #@6
    .line 300
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    .line 302
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Entry:I

    #@e
    .line 304
    :cond_e
    sget v1, Lcom/google/android/material/R$attr;->chipStandaloneStyle:I

    #@10
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 8

    #@0
    .line 709
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_34

    #@6
    .line 710
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@8
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@b
    .line 711
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@d
    iget p2, p2, Landroid/graphics/RectF;->left:F

    #@f
    .line 712
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@11
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@13
    .line 714
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@16
    .line 716
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@18
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@1a
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@1d
    move-result v2

    #@1e
    float-to-int v2, v2

    #@1f
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@21
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    #@24
    move-result v3

    #@25
    float-to-int v3, v3

    #@26
    const/4 v4, 0x0

    #@27
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    .line 717
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2f
    neg-float p2, p2

    #@30
    neg-float v0, v0

    #@31
    .line 719
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@34
    :cond_34
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 649
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@2
    if-nez v0, :cond_2f

    #@4
    .line 650
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@6
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    #@8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@b
    .line 651
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@d
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@12
    .line 652
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@14
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@1b
    .line 653
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@1d
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@20
    .line 654
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@22
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    #@25
    move-result v0

    #@26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    #@29
    move-result v1

    #@2a
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@2c
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@2f
    :cond_2f
    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 8

    #@0
    .line 694
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_34

    #@6
    .line 695
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@8
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@b
    .line 696
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@d
    iget p2, p2, Landroid/graphics/RectF;->left:F

    #@f
    .line 697
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@11
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@13
    .line 699
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@16
    .line 701
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@18
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@1a
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@1d
    move-result v2

    #@1e
    float-to-int v2, v2

    #@1f
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@21
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    #@24
    move-result v3

    #@25
    float-to-int v3, v3

    #@26
    const/4 v4, 0x0

    #@27
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    .line 702
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2f
    neg-float p2, p2

    #@30
    neg-float v0, v0

    #@31
    .line 704
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@34
    :cond_34
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 9

    #@0
    .line 663
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-lez v0, :cond_56

    #@7
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@9
    if-nez v0, :cond_56

    #@b
    .line 664
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@d
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@12
    .line 665
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@14
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@19
    .line 666
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@1b
    if-nez v0, :cond_26

    #@1d
    .line 667
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@1f
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@26
    .line 669
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@28
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@2a
    int-to-float v1, v1

    #@2b
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@2d
    const/high16 v3, 0x40000000    # 2.0f

    #@2f
    div-float/2addr v2, v3

    #@30
    add-float/2addr v1, v2

    #@31
    iget v2, p2, Landroid/graphics/Rect;->top:I

    #@33
    int-to-float v2, v2

    #@34
    iget v4, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@36
    div-float/2addr v4, v3

    #@37
    add-float/2addr v2, v4

    #@38
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@3a
    int-to-float v4, v4

    #@3b
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@3d
    div-float/2addr v5, v3

    #@3e
    sub-float/2addr v4, v5

    #@3f
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    #@41
    int-to-float p2, p2

    #@42
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@44
    div-float/2addr v5, v3

    #@45
    sub-float/2addr p2, v5

    #@46
    invoke-virtual {v0, v1, v2, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    #@49
    .line 676
    iget p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    #@4b
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@4d
    div-float/2addr v0, v3

    #@4e
    sub-float/2addr p2, v0

    #@4f
    .line 677
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@51
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@53
    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@56
    :cond_56
    return-void
.end method

.method private drawChipSurface(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 640
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@2
    if-nez v0, :cond_26

    #@4
    .line 641
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@6
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    #@8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@b
    .line 642
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@d
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@12
    .line 643
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@14
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@17
    .line 644
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@19
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    #@1c
    move-result v0

    #@1d
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    #@20
    move-result v1

    #@21
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@23
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@26
    :cond_26
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 8

    #@0
    .line 760
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_4e

    #@6
    .line 761
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@8
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@b
    .line 762
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@d
    iget p2, p2, Landroid/graphics/RectF;->left:F

    #@f
    .line 763
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@11
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@13
    .line 765
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@16
    .line 767
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@18
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@1a
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@1d
    move-result v2

    #@1e
    float-to-int v2, v2

    #@1f
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@21
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    #@24
    move-result v3

    #@25
    float-to-int v3, v3

    #@26
    const/4 v4, 0x0

    #@27
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    .line 769
    sget-boolean v1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@2c
    if-eqz v1, :cond_44

    #@2e
    .line 770
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    #@30
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@32
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@39
    .line 771
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    #@3b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@3e
    .line 772
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    #@40
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@43
    goto :goto_49

    #@44
    .line 774
    :cond_44
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@46
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@49
    :goto_49
    neg-float p2, p2

    #@4a
    neg-float v0, v0

    #@4b
    .line 777
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@4e
    :cond_4e
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 682
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@2
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@7
    .line 683
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@e
    .line 684
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@10
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@13
    .line 685
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@15
    if-nez v0, :cond_27

    #@17
    .line 686
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@19
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    #@1c
    move-result v0

    #@1d
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    #@20
    move-result v1

    #@21
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@23
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@26
    goto :goto_3c

    #@27
    .line 688
    :cond_27
    new-instance v0, Landroid/graphics/RectF;

    #@29
    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@2c
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    #@2e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    #@31
    .line 689
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@33
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->shapePath:Landroid/graphics/Path;

    #@35
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    #@38
    move-result-object v1

    #@39
    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    #@3c
    :goto_3c
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 12

    #@0
    .line 782
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@2
    if-eqz v0, :cond_85

    #@4
    const/high16 v1, -0x1000000

    #@6
    const/16 v2, 0x7f

    #@8
    .line 783
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@f
    .line 786
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@11
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@14
    .line 789
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_20

    #@1a
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2c

    #@20
    .line 790
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@22
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@25
    .line 791
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@27
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@2c
    .line 795
    :cond_2c
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@2e
    if-eqz v0, :cond_44

    #@30
    .line 796
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@32
    int-to-float v4, v0

    #@33
    .line 797
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    #@36
    move-result v5

    #@37
    iget v0, p2, Landroid/graphics/Rect;->right:I

    #@39
    int-to-float v6, v0

    #@3a
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    #@3d
    move-result v7

    #@3e
    iget-object v8, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@40
    move-object v3, p1

    #@41
    .line 796
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@44
    .line 801
    :cond_44
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_56

    #@4a
    .line 802
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@4c
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@4f
    .line 803
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@51
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@53
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@56
    .line 807
    :cond_56
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@58
    const/high16 v1, -0x10000

    #@5a
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@5d
    move-result v1

    #@5e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@61
    .line 808
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@63
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@66
    .line 809
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@68
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@6a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@6d
    .line 812
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@6f
    const v1, -0xff0100

    #@72
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@75
    move-result v1

    #@76
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@79
    .line 813
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@7b
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@7e
    .line 814
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@80
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    #@82
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@85
    :cond_85
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 12

    #@0
    .line 725
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_97

    #@4
    .line 726
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    #@6
    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    #@9
    move-result-object v0

    #@a
    .line 729
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@c
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@f
    .line 731
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@11
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@14
    move-result-object p2

    #@15
    if-eqz p2, :cond_2a

    #@17
    .line 732
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@19
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@1c
    move-result-object p2

    #@1d
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@20
    move-result-object v1

    #@21
    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    #@23
    .line 733
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@25
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@27
    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    #@2a
    .line 735
    :cond_2a
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2c
    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@2f
    move-result-object p2

    #@30
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@33
    .line 737
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@35
    .line 738
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    #@40
    move-result p2

    #@41
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@44
    move-result p2

    #@45
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@47
    .line 739
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@4a
    move-result v0

    #@4b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@4e
    move-result v0

    #@4f
    const/4 v1, 0x0

    #@50
    if-le p2, v0, :cond_54

    #@52
    const/4 p2, 0x1

    #@53
    goto :goto_55

    #@54
    :cond_54
    move p2, v1

    #@55
    :goto_55
    if-eqz p2, :cond_60

    #@57
    .line 742
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@5a
    move-result v1

    #@5b
    .line 743
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@5d
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    #@60
    .line 746
    :cond_60
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@62
    if-eqz p2, :cond_7a

    #@64
    .line 747
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    #@66
    if-eqz v2, :cond_7a

    #@68
    .line 748
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@6a
    .line 749
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@6d
    move-result-object v2

    #@6e
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    #@70
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    #@73
    move-result v3

    #@74
    iget-object v4, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    #@76
    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    #@79
    move-result-object v0

    #@7a
    :cond_7a
    move-object v3, v0

    #@7b
    const/4 v4, 0x0

    #@7c
    .line 752
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@7f
    move-result v5

    #@80
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    #@82
    iget v6, v0, Landroid/graphics/PointF;->x:F

    #@84
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    #@86
    iget v7, v0, Landroid/graphics/PointF;->y:F

    #@88
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@8a
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@8d
    move-result-object v8

    #@8e
    move-object v2, p1

    #@8f
    .line 751
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    #@92
    if-eqz p2, :cond_97

    #@94
    .line 754
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@97
    :cond_97
    return-void
.end method

.method private getCurrentChipIconHeight()F
    .registers 4

    #@0
    .line 561
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@6
    goto :goto_9

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@9
    .line 562
    :goto_9
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    #@b
    const/4 v2, 0x0

    #@c
    cmpg-float v2, v1, v2

    #@e
    if-gtz v2, :cond_2f

    #@10
    if-eqz v0, :cond_2f

    #@12
    .line 563
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@14
    const/16 v2, 0x18

    #@16
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@19
    move-result v1

    #@1a
    float-to-double v1, v1

    #@1b
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@1e
    move-result-wide v1

    #@1f
    double-to-float v1, v1

    #@20
    .line 564
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@23
    move-result v2

    #@24
    int-to-float v2, v2

    #@25
    cmpg-float v2, v2, v1

    #@27
    if-gtz v2, :cond_2f

    #@29
    .line 565
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2c
    move-result v0

    #@2d
    int-to-float v0, v0

    #@2e
    return v0

    #@2f
    :cond_2f
    return v1
.end method

.method private getCurrentChipIconWidth()F
    .registers 4

    #@0
    .line 549
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@6
    goto :goto_9

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@9
    .line 550
    :goto_9
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    #@b
    const/4 v2, 0x0

    #@c
    cmpg-float v2, v1, v2

    #@e
    if-gtz v2, :cond_18

    #@10
    if-eqz v0, :cond_18

    #@12
    .line 551
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@15
    move-result v0

    #@16
    int-to-float v0, v0

    #@17
    return v0

    #@18
    :cond_18
    return v1
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    #@0
    .line 1355
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@7
    :goto_7
    return-object v0
.end method

.method private static hasState([II)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 1376
    :cond_4
    array-length v1, p0

    #@5
    move v2, v0

    #@6
    :goto_6
    if-ge v2, v1, :cond_11

    #@8
    aget v3, p0, v2

    #@a
    if-ne v3, p1, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    return p0

    #@e
    :cond_e
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_6

    #@11
    :cond_11
    return v0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 1151
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@5
    move-result p0

    #@6
    if-eqz p0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 1155
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result p0

    #@6
    if-eqz p0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method private static isStateful(Lcom/google/android/material/resources/TextAppearance;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_14

    #@2
    .line 1160
    invoke-virtual {p0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 1161
    invoke-virtual {p0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@b
    move-result-object p0

    #@c
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@f
    move-result p0

    #@10
    if-eqz p0, :cond_14

    #@12
    const/4 p0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p0, 0x0

    #@15
    :goto_15
    return p0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .registers 11

    #@0
    .line 338
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    #@4
    const/4 v6, 0x0

    #@5
    new-array v5, v6, [I

    #@7
    move-object v1, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    .line 339
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@d
    move-result-object p2

    #@e
    .line 342
    sget p3, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    #@10
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@13
    move-result p3

    #@14
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@16
    .line 343
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@18
    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    #@1a
    .line 344
    invoke-static {p3, p2, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@1d
    move-result-object p3

    #@1e
    .line 343
    invoke-direct {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipSurfaceColor(Landroid/content/res/ColorStateList;)V

    #@21
    .line 345
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@23
    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    #@25
    .line 346
    invoke-static {p3, p2, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@28
    move-result-object p3

    #@29
    .line 345
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    #@2c
    .line 347
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    #@2e
    const/4 v0, 0x0

    #@2f
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@32
    move-result p3

    #@33
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    #@36
    .line 348
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    #@38
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3b
    move-result p3

    #@3c
    if-eqz p3, :cond_47

    #@3e
    .line 349
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    #@40
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@43
    move-result p3

    #@44
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    #@47
    .line 351
    :cond_47
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@49
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    #@4b
    .line 352
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@4e
    move-result-object p3

    #@4f
    .line 351
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    #@52
    .line 353
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    #@54
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@57
    move-result p3

    #@58
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    #@5b
    .line 354
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@5d
    sget v1, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    #@5f
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@62
    move-result-object p3

    #@63
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@66
    .line 356
    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    #@68
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@6b
    move-result-object p3

    #@6c
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    #@6f
    .line 357
    iget-object p3, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@71
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    #@73
    .line 358
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    #@76
    move-result-object p3

    #@77
    .line 359
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    #@79
    .line 360
    invoke-virtual {p3}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    #@7c
    move-result v2

    #@7d
    .line 359
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@80
    move-result v1

    #@81
    .line 361
    invoke-virtual {p3, v1}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    #@84
    .line 370
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    #@87
    .line 372
    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    #@89
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8c
    move-result p3

    #@8d
    const/4 v1, 0x1

    #@8e
    if-eq p3, v1, :cond_a3

    #@90
    const/4 v1, 0x2

    #@91
    if-eq p3, v1, :cond_9d

    #@93
    const/4 v1, 0x3

    #@94
    if-eq p3, v1, :cond_97

    #@96
    goto :goto_a8

    #@97
    .line 382
    :cond_97
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@99
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@9c
    goto :goto_a8

    #@9d
    .line 379
    :cond_9d
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@9f
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@a2
    goto :goto_a8

    #@a3
    .line 376
    :cond_a3
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@a5
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@a8
    .line 390
    :goto_a8
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    #@aa
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ad
    move-result p3

    #@ae
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    #@b1
    const-string p3, "http://schemas.android.com/apk/res-auto"

    #@b3
    if-eqz p1, :cond_ce

    #@b5
    const-string v1, "chipIconEnabled"

    #@b7
    .line 394
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    if-eqz v1, :cond_ce

    #@bd
    const-string v1, "chipIconVisible"

    #@bf
    .line 395
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c2
    move-result-object v1

    #@c3
    if-nez v1, :cond_ce

    #@c5
    .line 396
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    #@c7
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ca
    move-result v1

    #@cb
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    #@ce
    .line 398
    :cond_ce
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@d0
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    #@d2
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    #@d9
    .line 399
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    #@db
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@de
    move-result v1

    #@df
    if-eqz v1, :cond_ec

    #@e1
    .line 400
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@e3
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    #@e5
    .line 401
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@e8
    move-result-object v1

    #@e9
    .line 400
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    #@ec
    .line 403
    :cond_ec
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    #@ee
    const/high16 v2, -0x40800000    # -1.0f

    #@f0
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@f3
    move-result v1

    #@f4
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    #@f7
    .line 405
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    #@f9
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@fc
    move-result v1

    #@fd
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    #@100
    if-eqz p1, :cond_11b

    #@102
    const-string v1, "closeIconEnabled"

    #@104
    .line 410
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@107
    move-result-object v1

    #@108
    if-eqz v1, :cond_11b

    #@10a
    const-string v1, "closeIconVisible"

    #@10c
    .line 411
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10f
    move-result-object v1

    #@110
    if-nez v1, :cond_11b

    #@112
    .line 412
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    #@114
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@117
    move-result v1

    #@118
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    #@11b
    .line 414
    :cond_11b
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@11d
    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    #@11f
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    #@126
    .line 415
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@128
    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    #@12a
    .line 416
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@12d
    move-result-object v1

    #@12e
    .line 415
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    #@131
    .line 417
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    #@133
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@136
    move-result v1

    #@137
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    #@13a
    .line 419
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    #@13c
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@13f
    move-result v1

    #@140
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    #@143
    .line 420
    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    #@145
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@148
    move-result v1

    #@149
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    #@14c
    if-eqz p1, :cond_167

    #@14e
    const-string v1, "checkedIconEnabled"

    #@150
    .line 425
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@153
    move-result-object v1

    #@154
    if-eqz v1, :cond_167

    #@156
    const-string v1, "checkedIconVisible"

    #@158
    .line 426
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15b
    move-result-object p1

    #@15c
    if-nez p1, :cond_167

    #@15e
    .line 427
    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    #@160
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@163
    move-result p1

    #@164
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    #@167
    .line 429
    :cond_167
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@169
    sget p3, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    #@16b
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    #@16e
    move-result-object p1

    #@16f
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    #@172
    .line 430
    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    #@174
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@177
    move-result p1

    #@178
    if-eqz p1, :cond_185

    #@17a
    .line 431
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@17c
    sget p3, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    #@17e
    .line 432
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@181
    move-result-object p1

    #@182
    .line 431
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    #@185
    .line 435
    :cond_185
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@187
    sget p3, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    #@189
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    #@18c
    move-result-object p1

    #@18d
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    #@190
    .line 436
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@192
    sget p3, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    #@194
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    #@197
    move-result-object p1

    #@198
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    #@19b
    .line 438
    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    #@19d
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1a0
    move-result p1

    #@1a1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    #@1a4
    .line 439
    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    #@1a6
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1a9
    move-result p1

    #@1aa
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    #@1ad
    .line 440
    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    #@1af
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1b2
    move-result p1

    #@1b3
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    #@1b6
    .line 441
    sget p1, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    #@1b8
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1bb
    move-result p1

    #@1bc
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    #@1bf
    .line 442
    sget p1, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    #@1c1
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1c4
    move-result p1

    #@1c5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    #@1c8
    .line 443
    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    #@1ca
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1cd
    move-result p1

    #@1ce
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    #@1d1
    .line 444
    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    #@1d3
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1d6
    move-result p1

    #@1d7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    #@1da
    .line 445
    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    #@1dc
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1df
    move-result p1

    #@1e0
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    #@1e3
    .line 447
    sget p1, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    #@1e5
    const p3, 0x7fffffff

    #@1e8
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1eb
    move-result p1

    #@1ec
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    #@1ef
    .line 449
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@1f2
    return-void
.end method

.method private onStateChange([I[I)Z
    .registers 9

    #@0
    .line 1033
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    #@3
    move-result v0

    #@4
    .line 1037
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_10

    #@9
    .line 1038
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    #@b
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@e
    move-result v1

    #@f
    goto :goto_11

    #@10
    :cond_10
    move v1, v2

    #@11
    .line 1040
    :goto_11
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->compositeElevationOverlayIfNeeded(I)I

    #@14
    move-result v1

    #@15
    .line 1041
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    #@17
    const/4 v4, 0x1

    #@18
    if-eq v3, v1, :cond_1d

    #@1a
    .line 1042
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipSurfaceColor:I

    #@1c
    move v0, v4

    #@1d
    .line 1047
    :cond_1d
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    #@1f
    if-eqz v3, :cond_28

    #@21
    .line 1048
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    #@23
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@26
    move-result v3

    #@27
    goto :goto_29

    #@28
    :cond_28
    move v3, v2

    #@29
    .line 1050
    :goto_29
    invoke-virtual {p0, v3}, Lcom/google/android/material/chip/ChipDrawable;->compositeElevationOverlayIfNeeded(I)I

    #@2c
    move-result v3

    #@2d
    .line 1051
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    #@2f
    if-eq v5, v3, :cond_34

    #@31
    .line 1052
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    #@33
    move v0, v4

    #@34
    .line 1057
    :cond_34
    invoke-static {v1, v3}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@37
    move-result v1

    #@38
    .line 1058
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    #@3a
    if-eq v3, v1, :cond_3e

    #@3c
    move v3, v4

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    move v3, v2

    #@3f
    .line 1060
    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@42
    move-result-object v5

    #@43
    if-nez v5, :cond_47

    #@45
    move v5, v4

    #@46
    goto :goto_48

    #@47
    :cond_47
    move v5, v2

    #@48
    :goto_48
    or-int/2addr v3, v5

    #@49
    if-eqz v3, :cond_55

    #@4b
    .line 1062
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompositeSurfaceBackgroundColor:I

    #@4d
    .line 1063
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@54
    move v0, v4

    #@55
    .line 1068
    :cond_55
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    #@57
    if-eqz v1, :cond_60

    #@59
    .line 1069
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    #@5b
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@5e
    move-result v1

    #@5f
    goto :goto_61

    #@60
    :cond_60
    move v1, v2

    #@61
    .line 1071
    :goto_61
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    #@63
    if-eq v3, v1, :cond_68

    #@65
    .line 1072
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    #@67
    move v0, v4

    #@68
    .line 1077
    :cond_68
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    #@6a
    if-eqz v1, :cond_7b

    #@6c
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_7b

    #@72
    .line 1078
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    #@74
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    #@76
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@79
    move-result v1

    #@7a
    goto :goto_7c

    #@7b
    :cond_7b
    move v1, v2

    #@7c
    .line 1080
    :goto_7c
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    #@7e
    if-eq v3, v1, :cond_87

    #@80
    .line 1081
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    #@82
    .line 1082
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    #@84
    if-eqz v1, :cond_87

    #@86
    move v0, v4

    #@87
    .line 1089
    :cond_87
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@89
    .line 1088
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@8c
    move-result-object v1

    #@8d
    if-eqz v1, :cond_ac

    #@8f
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@91
    .line 1089
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v1}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@98
    move-result-object v1

    #@99
    if-eqz v1, :cond_ac

    #@9b
    .line 1093
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@9d
    .line 1091
    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@a0
    move-result-object v1

    #@a1
    .line 1092
    invoke-virtual {v1}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    #@a4
    move-result-object v1

    #@a5
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    #@a7
    .line 1093
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@aa
    move-result v1

    #@ab
    goto :goto_ad

    #@ac
    :cond_ac
    move v1, v2

    #@ad
    .line 1095
    :goto_ad
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    #@af
    if-eq v3, v1, :cond_b4

    #@b1
    .line 1096
    iput v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    #@b3
    move v0, v4

    #@b4
    .line 1100
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@b7
    move-result-object v1

    #@b8
    const v3, 0x10100a0

    #@bb
    invoke-static {v1, v3}, Lcom/google/android/material/chip/ChipDrawable;->hasState([II)Z

    #@be
    move-result v1

    #@bf
    if-eqz v1, :cond_c7

    #@c1
    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    #@c3
    if-eqz v1, :cond_c7

    #@c5
    move v1, v4

    #@c6
    goto :goto_c8

    #@c7
    :cond_c7
    move v1, v2

    #@c8
    .line 1101
    :goto_c8
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    #@ca
    if-eq v3, v1, :cond_e4

    #@cc
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@ce
    if-eqz v3, :cond_e4

    #@d0
    .line 1102
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@d3
    move-result v0

    #@d4
    .line 1103
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    #@d6
    .line 1104
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@d9
    move-result v1

    #@da
    cmpl-float v0, v0, v1

    #@dc
    if-eqz v0, :cond_e1

    #@de
    move v0, v4

    #@df
    move v1, v0

    #@e0
    goto :goto_e5

    #@e1
    :cond_e1
    move v1, v2

    #@e2
    move v0, v4

    #@e3
    goto :goto_e5

    #@e4
    :cond_e4
    move v1, v2

    #@e5
    .line 1112
    :goto_e5
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    #@e7
    if-eqz v3, :cond_f0

    #@e9
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    #@eb
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@ee
    move-result v3

    #@ef
    goto :goto_f1

    #@f0
    :cond_f0
    move v3, v2

    #@f1
    .line 1113
    :goto_f1
    iget v5, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    #@f3
    if-eq v5, v3, :cond_102

    #@f5
    .line 1114
    iput v3, p0, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    #@f7
    .line 1115
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    #@f9
    iget-object v3, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    #@fb
    invoke-static {p0, v0, v3}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@fe
    move-result-object v0

    #@ff
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@101
    goto :goto_103

    #@102
    :cond_102
    move v4, v0

    #@103
    .line 1119
    :goto_103
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@105
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    #@108
    move-result v0

    #@109
    if-eqz v0, :cond_112

    #@10b
    .line 1120
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@10d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@110
    move-result v0

    #@111
    or-int/2addr v4, v0

    #@112
    .line 1122
    :cond_112
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@114
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    #@117
    move-result v0

    #@118
    if-eqz v0, :cond_121

    #@11a
    .line 1123
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@11c
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@11f
    move-result v0

    #@120
    or-int/2addr v4, v0

    #@121
    .line 1125
    :cond_121
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@123
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    #@126
    move-result v0

    #@127
    if-eqz v0, :cond_13e

    #@129
    .line 1130
    array-length v0, p1

    #@12a
    array-length v3, p2

    #@12b
    add-int/2addr v0, v3

    #@12c
    new-array v0, v0, [I

    #@12e
    .line 1131
    array-length v3, p1

    #@12f
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@132
    .line 1132
    array-length p1, p1

    #@133
    array-length v3, p2

    #@134
    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@137
    .line 1134
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@139
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@13c
    move-result p1

    #@13d
    or-int/2addr v4, p1

    #@13e
    .line 1137
    :cond_13e
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@140
    if-eqz p1, :cond_151

    #@142
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    #@144
    invoke-static {p1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    #@147
    move-result p1

    #@148
    if-eqz p1, :cond_151

    #@14a
    .line 1138
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    #@14c
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14f
    move-result p1

    #@150
    or-int/2addr v4, p1

    #@151
    :cond_151
    if-eqz v4, :cond_156

    #@153
    .line 1142
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@156
    :cond_156
    if-eqz v1, :cond_15b

    #@158
    .line 1145
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@15b
    :cond_15b
    return v4
.end method

.method private setChipSurfaceColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1364
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_d

    #@4
    .line 1365
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    #@6
    .line 1366
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@d
    :cond_d
    return-void
.end method

.method private showsCheckedIcon()Z
    .registers 2

    #@0
    .line 523
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_e

    #@8
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method private showsChipIcon()Z
    .registers 2

    #@0
    .line 518
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method private showsCloseIcon()Z
    .registers 2

    #@0
    .line 528
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    if-eqz p1, :cond_6

    #@2
    const/4 v0, 0x0

    #@3
    .line 1320
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@6
    :cond_6
    return-void
.end method

.method private updateCompatRippleColor()V
    .registers 2

    #@0
    .line 1360
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    #@6
    invoke-static {v0}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@9
    move-result-object v0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    #@e
    return-void
.end method

.method private updateFrameworkCloseIconRipple()V
    .registers 5

    #@0
    .line 1899
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@2
    .line 1901
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@c
    sget-object v3, Lcom/google/android/material/chip/ChipDrawable;->closeIconRippleMask:Landroid/graphics/drawable/ShapeDrawable;

    #@e
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@11
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconRipple:Landroid/graphics/drawable/Drawable;

    #@13
    return-void
.end method


# virtual methods
.method calculateChipIconWidth()F
    .registers 3

    #@0
    .line 538
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 539
    :cond_f
    :goto_f
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    #@11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCurrentChipIconWidth()F

    #@14
    move-result v1

    #@15
    add-float/2addr v0, v1

    #@16
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    #@18
    add-float/2addr v0, v1

    #@19
    return v0
.end method

.method calculateCloseIconWidth()F
    .registers 3

    #@0
    .line 578
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 579
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    #@8
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@a
    add-float/2addr v0, v1

    #@b
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    #@d
    add-float/2addr v0, v1

    #@e
    return v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 846
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    #@4
    .line 847
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    #@6
    .line 849
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@8
    if-eqz v1, :cond_37

    #@a
    .line 850
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    #@c
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@f
    move-result v1

    #@10
    add-float/2addr v0, v1

    #@11
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    #@13
    add-float/2addr v0, v1

    #@14
    .line 852
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_23

    #@1a
    .line 853
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@1c
    int-to-float v1, v1

    #@1d
    add-float/2addr v1, v0

    #@1e
    iput v1, p2, Landroid/graphics/PointF;->x:F

    #@20
    .line 854
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    #@22
    goto :goto_2b

    #@23
    .line 856
    :cond_23
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@25
    int-to-float v1, v1

    #@26
    sub-float/2addr v1, v0

    #@27
    iput v1, p2, Landroid/graphics/PointF;->x:F

    #@29
    .line 857
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    #@2b
    .line 860
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    #@2e
    move-result p1

    #@2f
    int-to-float p1, p1

    #@30
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextCenterFromBaseline()F

    #@33
    move-result v1

    #@34
    sub-float/2addr p1, v1

    #@35
    iput p1, p2, Landroid/graphics/PointF;->y:F

    #@37
    :cond_37
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    #@0
    .line 590
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    .line 591
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_59

    #@a
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_11

    #@10
    goto :goto_59

    #@11
    .line 596
    :cond_11
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    #@13
    const/16 v2, 0xff

    #@15
    if-ge v1, v2, :cond_2b

    #@17
    .line 597
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@19
    int-to-float v4, v1

    #@1a
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@1c
    int-to-float v5, v1

    #@1d
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@1f
    int-to-float v6, v1

    #@20
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@22
    int-to-float v7, v1

    #@23
    iget v8, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    #@25
    move-object v3, p1

    #@26
    .line 598
    invoke-static/range {v3 .. v8}, Lcom/google/android/material/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    #@29
    move-result v1

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    const/4 v1, 0x0

    #@2c
    .line 603
    :goto_2c
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipSurface(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@2f
    .line 606
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@32
    .line 608
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@34
    if-eqz v3, :cond_39

    #@36
    .line 609
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    #@39
    .line 612
    :cond_39
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@3c
    .line 615
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@3f
    .line 618
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@42
    .line 621
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@45
    .line 624
    iget-boolean v3, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    #@47
    if-eqz v3, :cond_4c

    #@49
    .line 625
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@4c
    .line 629
    :cond_4c
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@4f
    .line 632
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    #@52
    .line 634
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    #@54
    if-ge v0, v2, :cond_59

    #@56
    .line 635
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@59
    :cond_59
    :goto_59
    return-void
.end method

.method public getAlpha()I
    .registers 2

    #@0
    .line 1238
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    #@2
    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 2040
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 2079
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1422
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getChipCornerRadius()F
    .registers 2

    #@0
    .line 1489
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTopLeftCornerResolvedSize()F

    #@7
    move-result v0

    #@8
    goto :goto_b

    #@9
    :cond_9
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    #@b
    :goto_b
    return v0
.end method

.method public getChipEndPadding()F
    .registers 2

    #@0
    .line 2432
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@2
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1718
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

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
    .line 1786
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    #@2
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1747
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getChipMinHeight()F
    .registers 2

    #@0
    .line 1455
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    #@2
    return v0
.end method

.method public getChipStartPadding()F
    .registers 2

    #@0
    .line 2180
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    #@2
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1526
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .registers 2

    #@0
    .line 1562
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@2
    return v0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .registers 3

    #@0
    .line 484
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@7
    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1868
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

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
    .line 1958
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .registers 2

    #@0
    .line 2396
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    #@2
    return v0
.end method

.method public getCloseIconSize()F
    .registers 2

    #@0
    .line 1930
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@2
    return v0
.end method

.method public getCloseIconStartPadding()F
    .registers 2

    #@0
    .line 2360
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    #@2
    return v0
.end method

.method public getCloseIconState()[I
    .registers 2

    #@0
    .line 1013
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    #@2
    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1910
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .registers 3

    #@0
    .line 492
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@7
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    #@0
    .line 1252
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    #@0
    .line 1663
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    #@2
    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    #@0
    .line 2150
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    #@2
    return-object v0
.end method

.method public getIconEndPadding()F
    .registers 2

    #@0
    .line 2253
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    #@2
    return v0
.end method

.method public getIconStartPadding()F
    .registers 2

    #@0
    .line 2214
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    #@2
    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    #@0
    .line 513
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    #@2
    float-to-int v0, v0

    #@3
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 4

    #@0
    .line 498
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    #@2
    .line 501
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@5
    move-result v1

    #@6
    add-float/2addr v0, v1

    #@7
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    #@9
    add-float/2addr v0, v1

    #@a
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@c
    .line 503
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    #@17
    move-result v1

    #@18
    add-float/2addr v0, v1

    #@19
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    #@1b
    add-float/2addr v0, v1

    #@1c
    .line 505
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    #@1f
    move-result v1

    #@20
    add-float/2addr v0, v1

    #@21
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@23
    add-float/2addr v0, v1

    #@24
    .line 499
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@27
    move-result v0

    #@28
    .line 507
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    #@2a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v0

    #@2e
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    #@0
    .line 2466
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 10

    #@0
    .line 1280
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 1281
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    #@7
    return-void

    #@8
    .line 1284
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    #@b
    move-result-object v0

    #@c
    .line 1285
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_18

    #@12
    .line 1286
    iget v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    #@17
    goto :goto_28

    #@18
    :cond_18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x0

    #@1a
    .line 1288
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    #@21
    move-result v6

    #@22
    iget v7, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    #@24
    move-object v2, p1

    #@25
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@28
    .line 1291
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    #@2b
    move-result v0

    #@2c
    int-to-float v0, v0

    #@2d
    const/high16 v1, 0x437f0000    # 255.0f

    #@2f
    div-float/2addr v0, v1

    #@30
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@33
    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1601
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    #@0
    .line 2119
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1630
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    #@0
    .line 1651
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextEndPadding()F
    .registers 2

    #@0
    .line 2326
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    #@2
    return v0
.end method

.method public getTextStartPadding()F
    .registers 2

    #@0
    .line 2292
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    #@2
    return v0
.end method

.method public getUseCompatRipple()Z
    .registers 2

    #@0
    .line 463
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    #@2
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 1296
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 1298
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    :cond_9
    return-void
.end method

.method public isCheckable()Z
    .registers 2

    #@0
    .line 1962
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    #@2
    return v0
.end method

.method public isCheckedIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1993
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isCheckedIconVisible()Z
    .registers 2

    #@0
    .line 1987
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    #@2
    return v0
.end method

.method public isChipIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1677
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isChipIconVisible()Z
    .registers 2

    #@0
    .line 1671
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    #@2
    return v0
.end method

.method public isCloseIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1827
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isCloseIconStateful()Z
    .registers 2

    #@0
    .line 993
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCloseIconVisible()Z
    .registers 2

    #@0
    .line 1821
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    #@2
    return v0
.end method

.method isShapeThemingEnabled()Z
    .registers 2

    #@0
    .line 585
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@2
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 979
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipSurfaceColor:Landroid/content/res/ColorStateList;

    #@2
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_51

    #@8
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    #@a
    .line 980
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_51

    #@10
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    #@12
    .line 981
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_51

    #@18
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    #@1a
    if-eqz v0, :cond_24

    #@1c
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    #@1e
    .line 982
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_51

    #@24
    :cond_24
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@26
    .line 983
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Lcom/google/android/material/resources/TextAppearance;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_51

    #@30
    .line 984
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_51

    #@36
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@38
    .line 985
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_51

    #@3e
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@40
    .line 986
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_51

    #@46
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    #@48
    .line 987
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_4f

    #@4e
    goto :goto_51

    #@4f
    :cond_4f
    const/4 v0, 0x0

    #@50
    goto :goto_52

    #@51
    :cond_51
    :goto_51
    const/4 v0, 0x1

    #@52
    :goto_52
    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 4

    #@0
    .line 1166
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onLayoutDirectionChanged(I)Z

    #@3
    move-result v0

    #@4
    .line 1168
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_11

    #@a
    .line 1169
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    .line 1171
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1e

    #@17
    .line 1172
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@1c
    move-result v1

    #@1d
    or-int/2addr v0, v1

    #@1e
    .line 1174
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2b

    #@24
    .line 1175
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@29
    move-result p1

    #@2a
    or-int/2addr v0, p1

    #@2b
    :cond_2b
    if-eqz v0, :cond_30

    #@2d
    .line 1179
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@30
    :cond_30
    const/4 p1, 0x1

    #@31
    return p1
.end method

.method protected onLevelChange(I)Z
    .registers 4

    #@0
    .line 1186
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onLevelChange(I)Z

    #@3
    move-result v0

    #@4
    .line 1188
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_11

    #@a
    .line 1189
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    .line 1191
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1e

    #@17
    .line 1192
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@1c
    move-result v1

    #@1d
    or-int/2addr v0, v1

    #@1e
    .line 1194
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2b

    #@24
    .line 1195
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@29
    move-result p1

    #@2a
    or-int/2addr v0, p1

    #@2b
    :cond_2b
    if-eqz v0, :cond_30

    #@2d
    .line 1199
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@30
    :cond_30
    return v0
.end method

.method protected onSizeChange()V
    .registers 2

    #@0
    .line 473
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/chip/ChipDrawable$Delegate;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 475
    invoke-interface {v0}, Lcom/google/android/material/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    #@d
    :cond_d
    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    #@0
    .line 1024
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1025
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    #@7
    .line 1027
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    #@a
    move-result-object v0

    #@b
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    #@e
    move-result p1

    #@f
    return p1
.end method

.method public onTextSizeChange()V
    .registers 1

    #@0
    .line 1018
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@3
    .line 1019
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@6
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    #@0
    .line 1304
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 1306
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@9
    :cond_9
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 1230
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1231
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    #@6
    .line 1232
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@9
    :cond_9
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    #@0
    .line 1970
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    #@2
    if-eq v0, p1, :cond_21

    #@4
    .line 1971
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    #@6
    .line 1973
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@9
    move-result v0

    #@a
    if-nez p1, :cond_13

    #@c
    .line 1974
    iget-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    #@e
    if-eqz p1, :cond_13

    #@10
    const/4 p1, 0x0

    #@11
    .line 1975
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    #@13
    .line 1977
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@16
    move-result p1

    #@17
    .line 1979
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@1a
    cmpl-float p1, v0, p1

    #@1c
    if-eqz p1, :cond_21

    #@1e
    .line 1981
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@21
    :cond_21
    return-void
.end method

.method public setCheckableResource(I)V
    .registers 3

    #@0
    .line 1966
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    #@d
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 2060
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_22

    #@4
    .line 2062
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@7
    move-result v0

    #@8
    .line 2063
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@a
    .line 2064
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@d
    move-result p1

    #@e
    .line 2066
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 2067
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@18
    .line 2069
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@1b
    cmpl-float p1, v0, p1

    #@1d
    if-eqz p1, :cond_22

    #@1f
    .line 2071
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@22
    :cond_22
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2029
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    #@3
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2023
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    #@d
    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 3

    #@0
    .line 2050
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    #@9
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 2100
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_18

    #@4
    .line 2101
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconTint:Landroid/content/res/ColorStateList;

    #@6
    .line 2103
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 2104
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@11
    .line 2107
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@18
    :cond_18
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .registers 3

    #@0
    .line 2089
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .registers 3

    #@0
    .line 1997
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    #@d
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .registers 3

    #@0
    .line 2001
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    #@2
    if-eq v0, p1, :cond_28

    #@4
    .line 2002
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@7
    move-result v0

    #@8
    .line 2003
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    #@a
    .line 2004
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@d
    move-result p1

    #@e
    if-eq v0, p1, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    if-eqz v0, :cond_28

    #@15
    if-eqz p1, :cond_1d

    #@17
    .line 2009
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    goto :goto_22

    #@1d
    .line 2011
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 2014
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@25
    .line 2015
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@28
    :cond_28
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1442
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_d

    #@4
    .line 1443
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    #@6
    .line 1444
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@d
    :cond_d
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .registers 3

    #@0
    .line 1432
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method public setChipCornerRadius(F)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1511
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 1512
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    #@8
    .line 1514
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@13
    :cond_13
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1500
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    #@d
    return-void
.end method

.method public setChipEndPadding(F)V
    .registers 3

    #@0
    .line 2452
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 2453
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    #@8
    .line 2454
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 2455
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@e
    :cond_e
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2442
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    #@d
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 1726
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_34

    #@6
    .line 1728
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@9
    move-result v1

    #@a
    if-eqz p1, :cond_15

    #@c
    .line 1729
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@18
    .line 1730
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@1b
    move-result p1

    #@1c
    .line 1732
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1f
    .line 1733
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2a

    #@25
    .line 1734
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2a
    .line 1737
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@2d
    cmpl-float p1, v1, p1

    #@2f
    if-eqz p1, :cond_34

    #@31
    .line 1739
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@34
    :cond_34
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1713
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    #@3
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1707
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    #@3
    return-void
.end method

.method public setChipIconResource(I)V
    .registers 3

    #@0
    .line 1722
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    #@9
    return-void
.end method

.method public setChipIconSize(F)V
    .registers 3

    #@0
    .line 1808
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_1a

    #@6
    .line 1809
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@9
    move-result v0

    #@a
    .line 1810
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    #@c
    .line 1811
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@f
    move-result p1

    #@10
    .line 1813
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@13
    cmpl-float p1, v0, p1

    #@15
    if-eqz p1, :cond_1a

    #@17
    .line 1815
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@1a
    :cond_1a
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .registers 3

    #@0
    .line 1797
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    #@d
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1767
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->hasChipIconTint:Z

    #@3
    .line 1768
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    #@5
    if-eq v0, p1, :cond_1b

    #@7
    .line 1769
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    #@9
    .line 1770
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_14

    #@f
    .line 1771
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@14
    .line 1774
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@1b
    :cond_1b
    return-void
.end method

.method public setChipIconTintResource(I)V
    .registers 3

    #@0
    .line 1757
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method public setChipIconVisible(I)V
    .registers 3

    #@0
    .line 1681
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    #@d
    return-void
.end method

.method public setChipIconVisible(Z)V
    .registers 3

    #@0
    .line 1685
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    #@2
    if-eq v0, p1, :cond_28

    #@4
    .line 1686
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@7
    move-result v0

    #@8
    .line 1687
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    #@a
    .line 1688
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@d
    move-result p1

    #@e
    if-eq v0, p1, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    if-eqz v0, :cond_28

    #@15
    if-eqz p1, :cond_1d

    #@17
    .line 1693
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    goto :goto_22

    #@1d
    .line 1695
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 1698
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@25
    .line 1699
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@28
    :cond_28
    return-void
.end method

.method public setChipMinHeight(F)V
    .registers 3

    #@0
    .line 1475
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 1476
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    #@8
    .line 1477
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 1478
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@e
    :cond_e
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .registers 3

    #@0
    .line 1465
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    #@d
    return-void
.end method

.method public setChipStartPadding(F)V
    .registers 3

    #@0
    .line 2200
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 2201
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    #@8
    .line 2202
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 2203
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@e
    :cond_e
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .registers 3

    #@0
    .line 2190
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    #@d
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1546
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_14

    #@4
    .line 1547
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    #@6
    .line 1548
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 1549
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@d
    .line 1551
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@14
    :cond_14
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .registers 3

    #@0
    .line 1536
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .registers 3

    #@0
    .line 1582
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 1583
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    #@8
    .line 1585
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@d
    .line 1586
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->isShapeThemingEnabled:Z

    #@f
    if-eqz v0, :cond_14

    #@11
    .line 1587
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    #@14
    .line 1589
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@17
    :cond_17
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .registers 3

    #@0
    .line 1572
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    #@d
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 1876
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_3b

    #@6
    .line 1878
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    #@9
    move-result v1

    #@a
    if-eqz p1, :cond_15

    #@c
    .line 1879
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@18
    .line 1880
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@1a
    if-eqz p1, :cond_1f

    #@1c
    .line 1881
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateFrameworkCloseIconRipple()V

    #@1f
    .line 1883
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    #@22
    move-result p1

    #@23
    .line 1885
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@26
    .line 1886
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_31

    #@2c
    .line 1887
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@2e
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@31
    .line 1890
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@34
    cmpl-float p1, v1, p1

    #@36
    if-eqz p1, :cond_3b

    #@38
    .line 1892
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@3b
    :cond_3b
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 1948
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    #@2
    if-eq v0, p1, :cond_11

    #@4
    .line 1950
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    #@e
    .line 1952
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@11
    :cond_11
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1863
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    #@3
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1857
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(I)V

    #@3
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .registers 3

    #@0
    .line 2416
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 2417
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    #@8
    .line 2418
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 2419
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@e
    move-result p1

    #@f
    if-eqz p1, :cond_14

    #@11
    .line 2420
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@14
    :cond_14
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2406
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    #@d
    return-void
.end method

.method public setCloseIconResource(I)V
    .registers 3

    #@0
    .line 1872
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    #@9
    return-void
.end method

.method public setCloseIconSize(F)V
    .registers 3

    #@0
    .line 1938
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 1939
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    #@8
    .line 1940
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 1941
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@e
    move-result p1

    #@f
    if-eqz p1, :cond_14

    #@11
    .line 1942
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@14
    :cond_14
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .registers 3

    #@0
    .line 1934
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    #@d
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .registers 3

    #@0
    .line 2380
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 2381
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    #@8
    .line 2382
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 2383
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@e
    move-result p1

    #@f
    if-eqz p1, :cond_14

    #@11
    .line 2384
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@14
    :cond_14
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .registers 3

    #@0
    .line 2370
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    #@d
    return-void
.end method

.method public setCloseIconState([I)Z
    .registers 3

    #@0
    .line 1001
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    #@2
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_19

    #@8
    .line 1002
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    #@a
    .line 1003
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_19

    #@10
    .line 1004
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    #@17
    move-result p1

    #@18
    return p1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return p1
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1918
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_18

    #@4
    .line 1919
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    #@6
    .line 1921
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 1922
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@11
    .line 1925
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@18
    :cond_18
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .registers 3

    #@0
    .line 1914
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method public setCloseIconVisible(I)V
    .registers 3

    #@0
    .line 1831
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    #@d
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .registers 3

    #@0
    .line 1835
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    #@2
    if-eq v0, p1, :cond_28

    #@4
    .line 1836
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@7
    move-result v0

    #@8
    .line 1837
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    #@a
    .line 1838
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@d
    move-result p1

    #@e
    if-eq v0, p1, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    if-eqz v0, :cond_28

    #@15
    if-eqz p1, :cond_1d

    #@17
    .line 1843
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    goto :goto_22

    #@1d
    .line 1845
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 1848
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@25
    .line 1849
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@28
    :cond_28
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 1243
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1244
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    #@6
    .line 1245
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@9
    :cond_9
    return-void
.end method

.method public setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V
    .registers 3

    #@0
    .line 468
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    #@7
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 2

    #@0
    .line 1667
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    #@2
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 2

    #@0
    .line 2170
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    #@2
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3

    #@0
    .line 2160
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    #@9
    return-void
.end method

.method public setIconEndPadding(F)V
    .registers 3

    #@0
    .line 2273
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_1a

    #@6
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@9
    move-result v0

    #@a
    .line 2275
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    #@c
    .line 2276
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@f
    move-result p1

    #@10
    .line 2278
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@13
    cmpl-float p1, v0, p1

    #@15
    if-eqz p1, :cond_1a

    #@17
    .line 2280
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@1a
    :cond_1a
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2263
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    #@d
    return-void
.end method

.method public setIconStartPadding(F)V
    .registers 3

    #@0
    .line 2234
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_1a

    #@6
    .line 2235
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@9
    move-result v0

    #@a
    .line 2236
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    #@c
    .line 2237
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    #@f
    move-result p1

    #@10
    .line 2239
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@13
    cmpl-float p1, v0, p1

    #@15
    if-eqz p1, :cond_1a

    #@17
    .line 2241
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@1a
    :cond_1a
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .registers 3

    #@0
    .line 2224
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    #@d
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    #@0
    .line 2475
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    #@2
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1621
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_10

    #@4
    .line 1622
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    #@6
    .line 1623
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    #@9
    .line 1624
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@c
    move-result-object p1

    #@d
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@10
    :cond_10
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    #@0
    .line 1611
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method setShouldDrawText(Z)V
    .registers 2

    #@0
    .line 2489
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    #@2
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 2

    #@0
    .line 2139
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    #@2
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3

    #@0
    .line 2129
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    #@9
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    if-nez p1, :cond_4

    #@2
    const-string p1, ""

    #@4
    .line 1641
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@6
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1a

    #@c
    .line 1642
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->text:Ljava/lang/CharSequence;

    #@e
    .line 1643
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@10
    const/4 v0, 0x1

    #@11
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    #@14
    .line 1644
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@17
    .line 1645
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@1a
    :cond_1a
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 4

    #@0
    .line 1659
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    #@7
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 4

    #@0
    .line 1655
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    #@2
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    #@a
    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    #@0
    .line 1394
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1398
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 1400
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@9
    .line 1401
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@c
    :cond_c
    return-void
.end method

.method public setTextEndPadding(F)V
    .registers 3

    #@0
    .line 2346
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 2347
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    #@8
    .line 2348
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 2349
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@e
    :cond_e
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .registers 3

    #@0
    .line 2336
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    #@d
    return-void
.end method

.method public setTextResource(I)V
    .registers 3

    #@0
    .line 1634
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    #@d
    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    #@0
    .line 1385
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_15

    #@6
    .line 1387
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    #@9
    .line 1388
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@b
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@12
    .line 1389
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onTextSizeChange()V

    #@15
    :cond_15
    return-void
.end method

.method public setTextStartPadding(F)V
    .registers 3

    #@0
    .line 2312
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 2313
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    #@8
    .line 2314
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@b
    .line 2315
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    #@e
    :cond_e
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .registers 3

    #@0
    .line 2302
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    #@d
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1257
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_d

    #@4
    .line 1258
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    #@6
    .line 1259
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@d
    :cond_d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 1265
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    if-eq v0, p1, :cond_11

    #@4
    .line 1266
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    .line 1267
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    #@8
    invoke-static {p0, v0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@e
    .line 1268
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@11
    :cond_11
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .registers 3

    #@0
    .line 454
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    #@2
    if-eq v0, p1, :cond_10

    #@4
    .line 455
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    #@6
    .line 456
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    #@9
    .line 457
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    #@c
    move-result-object p1

    #@d
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    #@10
    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    #@0
    .line 1206
    invoke-super {p0, p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 1208
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_11

    #@a
    .line 1209
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    .line 1211
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1e

    #@17
    .line 1212
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@1c
    move-result v1

    #@1d
    or-int/2addr v0, v1

    #@1e
    .line 1214
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2b

    #@24
    .line 1215
    iget-object v1, p0, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@29
    move-result p1

    #@2a
    or-int/2addr v0, p1

    #@2b
    :cond_2b
    if-eqz v0, :cond_30

    #@2d
    .line 1219
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    #@30
    :cond_30
    return v0
.end method

.method shouldDrawText()Z
    .registers 2

    #@0
    .line 2479
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    #@2
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 1312
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 1314
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@9
    :cond_9
    return-void
.end method

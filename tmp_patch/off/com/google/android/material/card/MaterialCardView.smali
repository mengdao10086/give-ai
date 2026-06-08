.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "MaterialCardView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/card/MaterialCardView$CheckedIconGravity;,
        Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.cardview.widget.CardView"

.field private static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_ICON_GRAVITY_BOTTOM_END:I = 0x800055

.field public static final CHECKED_ICON_GRAVITY_BOTTOM_START:I = 0x800053

.field public static final CHECKED_ICON_GRAVITY_TOP_END:I = 0x800035

.field public static final CHECKED_ICON_GRAVITY_TOP_START:I = 0x800033

.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DRAGGED_STATE_SET:[I

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialCardView"


# instance fields
.field private final cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

.field private checked:Z

.field private dragged:Z

.field private isParentCardViewDoneInitializing:Z

.field private onCheckedChangeListener:Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;


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
    .line 93
    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->CHECKABLE_STATE_SET:[I

    #@b
    new-array v1, v0, [I

    #@d
    const v2, 0x10100a0

    #@10
    aput v2, v1, v3

    #@12
    .line 94
    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->CHECKED_STATE_SET:[I

    #@14
    new-array v0, v0, [I

    #@16
    .line 95
    sget v1, Lcom/google/android/material/R$attr;->state_dragged:I

    #@18
    aput v1, v0, v3

    #@1a
    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->DRAGGED_STATE_SET:[I

    #@1c
    .line 97
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CardView:I

    #@1e
    sput v0, Lcom/google/android/material/card/MaterialCardView;->DEF_STYLE_RES:I

    #@20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 156
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 160
    sget v0, Lcom/google/android/material/R$attr;->materialCardViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 164
    sget v6, Lcom/google/android/material/card/MaterialCardView;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    const/4 p1, 0x0

    #@a
    .line 151
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    #@c
    .line 152
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    #@e
    const/4 v0, 0x1

    #@f
    .line 165
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->isParentCardViewDoneInitializing:Z

    #@11
    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    .line 169
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCardView:[I

    #@17
    new-array v5, p1, [I

    #@19
    move-object v1, p2

    #@1a
    move v3, p3

    #@1b
    move v4, v6

    #@1c
    .line 170
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object p1

    #@20
    .line 174
    new-instance v0, Lcom/google/android/material/card/MaterialCardViewHelper;

    #@22
    invoke-direct {v0, p0, p2, p3, v6}, Lcom/google/android/material/card/MaterialCardViewHelper;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V

    #@25
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@27
    .line 175
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    #@2a
    move-result-object p2

    #@2b
    invoke-virtual {v0, p2}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    #@2e
    .line 177
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    #@31
    move-result p2

    #@32
    .line 178
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    #@35
    move-result p3

    #@36
    .line 179
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    #@39
    move-result v1

    #@3a
    .line 180
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    #@3d
    move-result v2

    #@3e
    .line 176
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->setUserContentPadding(IIII)V

    #@41
    .line 183
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    #@44
    .line 185
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@47
    return-void
.end method

.method static synthetic access$001(Lcom/google/android/material/card/MaterialCardView;)F
    .registers 1

    #@0
    .line 80
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private forceRippleRedrawIfNeeded()V
    .registers 3

    #@0
    .line 680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1a

    #@4
    if-le v0, v1, :cond_b

    #@6
    .line 681
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->forceRippleRedraw()V

    #@b
    :cond_b
    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .registers 3

    #@0
    .line 655
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    .line 656
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@7
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->getBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@12
    return-object v0
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 336
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 358
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCardForegroundColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getCardViewRadius()F
    .registers 2

    #@0
    .line 270
    # invokes: Landroidx/cardview/widget/CardView;->getRadius()F
    invoke-static {p0}, Lcom/google/android/material/card/MaterialCardView;->access$001(Lcom/google/android/material/card/MaterialCardView;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 559
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCheckedIconGravity()I
    .registers 2

    #@0
    .line 694
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIconGravity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCheckedIconMargin()I
    .registers 2

    #@0
    .line 633
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIconMargin()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCheckedIconSize()I
    .registers 2

    #@0
    .line 606
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIconSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 590
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIconTint()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    #@0
    .line 320
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@8
    return v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    #@0
    .line 305
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@8
    return v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    #@0
    .line 315
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@8
    return v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    #@0
    .line 310
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@8
    return v0
.end method

.method public getProgress()F
    .registers 2

    #@0
    .line 291
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getProgress()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRadius()F
    .registers 2

    #@0
    .line 266
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCornerRadius()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 548
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 676
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 233
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 239
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeColorStateList()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2

    #@0
    .line 255
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    #@0
    .line 461
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isCheckable()Z

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
    .line 426
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    #@2
    return v0
.end method

.method public isDragged()Z
    .registers 2

    #@0
    .line 451
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 371
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onAttachedToWindow()V

    #@3
    .line 373
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    move-result-object v0

    #@9
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@c
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    #@0
    add-int/lit8 p1, p1, 0x3

    #@2
    .line 489
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onCreateDrawableState(I)[I

    #@5
    move-result-object p1

    #@6
    .line 490
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 491
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->CHECKABLE_STATE_SET:[I

    #@e
    invoke-static {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    #@11
    .line 494
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1c

    #@17
    .line 495
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->CHECKED_STATE_SET:[I

    #@19
    invoke-static {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    #@1c
    .line 498
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isDragged()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_27

    #@22
    .line 499
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->DRAGGED_STATE_SET:[I

    #@24
    invoke-static {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    #@27
    :cond_27
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 199
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    const-string v0, "androidx.cardview.widget.CardView"

    #@5
    .line 200
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    #@b
    move-result v0

    #@c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    #@f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    #@0
    .line 190
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    const-string v0, "androidx.cardview.widget.CardView"

    #@5
    .line 191
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    .line 192
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    #@b
    move-result v0

    #@c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    #@f
    .line 193
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    #@12
    move-result v0

    #@13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    #@16
    .line 194
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    #@1d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    #@0
    .line 206
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    #@3
    .line 207
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredWidth()I

    #@8
    move-result p2

    #@9
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredHeight()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->recalculateCheckedIconPosition(II)V

    #@10
    return-void
.end method

.method setAncestorContentPadding(IIII)V
    .registers 5

    #@0
    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    #@3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 404
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 409
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->isParentCardViewDoneInitializing:Z

    #@2
    if-eqz v0, :cond_1c

    #@4
    .line 410
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_19

    #@c
    const-string v0, "MaterialCardView"

    #@e
    const-string v1, "Setting a custom background is not supported."

    #@10
    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 412
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setBackgroundOverwritten(Z)V

    #@19
    .line 414
    :cond_19
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    :cond_1c
    return-void
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 421
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 3

    #@0
    .line 325
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 330
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setCardElevation(F)V
    .registers 2

    #@0
    .line 378
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    #@3
    .line 379
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateElevation()V

    #@8
    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 347
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardForegroundColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    #@0
    .line 471
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckable(Z)V

    #@5
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    #@0
    .line 431
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    #@2
    if-eq v0, p1, :cond_7

    #@4
    .line 432
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    #@7
    :cond_7
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 579
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setCheckedIconGravity(I)V
    .registers 3

    #@0
    .line 705
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIconGravity()I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_d

    #@8
    .line 706
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconGravity(I)V

    #@d
    :cond_d
    return-void
.end method

.method public setCheckedIconMargin(I)V
    .registers 3

    #@0
    .line 637
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconMargin(I)V

    #@5
    return-void
.end method

.method public setCheckedIconMarginResource(I)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_10

    #@3
    .line 648
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    .line 649
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c
    move-result p1

    #@d
    .line 648
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconMargin(I)V

    #@10
    :cond_10
    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 4

    #@0
    .line 569
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    #@d
    return-void
.end method

.method public setCheckedIconSize(I)V
    .registers 3

    #@0
    .line 616
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconSize(I)V

    #@5
    return-void
.end method

.method public setCheckedIconSizeResource(I)V
    .registers 4

    #@0
    if-eqz p1, :cond_f

    #@2
    .line 627
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconSize(I)V

    #@f
    :cond_f
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 601
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setClickable(Z)V
    .registers 2

    #@0
    .line 363
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    #@3
    .line 364
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 365
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateClickable()V

    #@a
    :cond_a
    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6

    #@0
    .line 296
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/card/MaterialCardViewHelper;->setUserContentPadding(IIII)V

    #@5
    return-void
.end method

.method public setDragged(Z)V
    .registers 3

    #@0
    .line 442
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 443
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    #@6
    .line 444
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->refreshDrawableState()V

    #@9
    .line 445
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->forceRippleRedrawIfNeeded()V

    #@c
    .line 446
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->invalidate()V

    #@f
    :cond_f
    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 2

    #@0
    .line 384
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    #@3
    .line 385
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    #@8
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;)V
    .registers 2

    #@0
    .line 511
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->onCheckedChangeListener:Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;

    #@2
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 2

    #@0
    .line 397
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    #@3
    .line 398
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    #@8
    .line 399
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@a
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    #@d
    return-void
.end method

.method public setProgress(F)V
    .registers 3

    #@0
    .line 280
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setProgress(F)V

    #@5
    return-void
.end method

.method public setRadius(F)V
    .registers 3

    #@0
    .line 260
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    #@3
    .line 261
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCornerRadius(F)V

    #@8
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 523
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 4

    #@0
    .line 535
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    .line 536
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object p1

    #@a
    .line 535
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    #@d
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    #@0
    .line 663
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->getBoundsAsRectF()Landroid/graphics/RectF;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardView;->setClipToOutline(Z)V

    #@b
    .line 665
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@d
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@10
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 2

    #@0
    .line 216
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@7
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 225
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@5
    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->invalidate()V

    #@8
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    #@0
    .line 248
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setStrokeWidth(I)V

    #@5
    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->invalidate()V

    #@8
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 2

    #@0
    .line 390
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    #@3
    .line 391
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    #@8
    .line 392
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@a
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    #@d
    return-void
.end method

.method public toggle()V
    .registers 4

    #@0
    .line 476
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_28

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_28

    #@c
    .line 477
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    #@e
    const/4 v1, 0x1

    #@f
    xor-int/2addr v0, v1

    #@10
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    #@12
    .line 478
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->refreshDrawableState()V

    #@15
    .line 479
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->forceRippleRedrawIfNeeded()V

    #@18
    .line 480
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@1a
    iget-boolean v2, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    #@1c
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setChecked(ZZ)V

    #@1f
    .line 481
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->onCheckedChangeListener:Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;

    #@21
    if-eqz v0, :cond_28

    #@23
    .line 482
    iget-boolean v1, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    #@25
    invoke-interface {v0, p0, v1}, Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/card/MaterialCardView;Z)V

    #@28
    :cond_28
    return-void
.end method

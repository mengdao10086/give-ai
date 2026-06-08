.class public Lcom/google/android/material/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BadgeUtils"

.field public static final USE_COMPAT_PARENT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 50
    sput-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@3
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 2

    #@0
    .line 48
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    #@3
    return-void
.end method

.method private static attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 4

    #@0
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_19

    #@6
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    .line 145
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$2;

    #@e
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/badge/BadgeUtils$2;-><init>(Landroid/view/View$AccessibilityDelegate;Lcom/google/android/material/badge/BadgeDrawable;)V

    #@15
    .line 145
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@18
    goto :goto_21

    #@19
    .line 156
    :cond_19
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$3;

    #@1b
    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeUtils$3;-><init>(Lcom/google/android/material/badge/BadgeDrawable;)V

    #@1e
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@21
    :goto_21
    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-static {p0, p1, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@4
    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 3

    #@0
    .line 91
    invoke-static {p0, p1, p2}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@3
    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    #@6
    move-result-object p2

    #@7
    if-eqz p2, :cond_11

    #@9
    .line 94
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@10
    goto :goto_1c

    #@11
    .line 96
    :cond_11
    sget-boolean p2, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@13
    if-nez p2, :cond_1d

    #@15
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    #@1c
    :goto_1c
    return-void

    #@1d
    .line 97
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string p1, "Trying to reference null customBadgeParent"

    #@21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw p0
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 111
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V

    #@4
    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V
    .registers 5

    #@0
    .line 127
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$1;

    #@2
    invoke-direct {v0, p1, p2, p0, p3}, Lcom/google/android/material/badge/BadgeUtils$1;-><init>(Landroidx/appcompat/widget/Toolbar;ILcom/google/android/material/badge/BadgeDrawable;Landroid/widget/FrameLayout;)V

    #@5
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    #@8
    return-void
.end method

.method public static createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/internal/ParcelableSparseArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    #@0
    .line 290
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-virtual {p1}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@9
    const/4 v1, 0x0

    #@a
    .line 291
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    #@d
    move-result v2

    #@e
    if-ge v1, v2, :cond_2e

    #@10
    .line 292
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/ParcelableSparseArray;->keyAt(I)I

    #@13
    move-result v2

    #@14
    .line 293
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/google/android/material/badge/BadgeState$State;

    #@1a
    if-eqz v3, :cond_26

    #@1c
    .line 297
    invoke-static {p0, v3}, Lcom/google/android/material/badge/BadgeDrawable;->createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/BadgeDrawable;

    #@1f
    move-result-object v3

    #@20
    .line 298
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_a

    #@26
    .line 295
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string p1, "BadgeDrawable\'s savedState cannot be null"

    #@2a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw p0

    #@2e
    :cond_2e
    return-object v0
.end method

.method public static createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)",
            "Lcom/google/android/material/internal/ParcelableSparseArray;"
        }
    .end annotation

    #@0
    .line 265
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseArray;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 266
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_2a

    #@c
    .line 267
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@f
    move-result v2

    #@10
    .line 268
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    #@16
    if-eqz v3, :cond_22

    #@18
    .line 272
    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeDrawable;->getSavedState()Lcom/google/android/material/badge/BadgeState$State;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_6

    #@22
    .line 270
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string v0, "badgeDrawable cannot be null"

    #@26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw p0

    #@2a
    :cond_2a
    return-object v0
.end method

.method private static detachBadgeContentDescription(Landroid/view/View;)V
    .registers 3

    #@0
    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_19

    #@6
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    .line 208
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$4;

    #@e
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Lcom/google/android/material/badge/BadgeUtils$4;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    #@15
    .line 208
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@18
    goto :goto_1d

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    .line 219
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@1d
    :goto_1d
    return-void
.end method

.method public static detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 179
    :cond_3
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@5
    if-nez v0, :cond_16

    #@7
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_e

    #@d
    goto :goto_16

    #@e
    .line 182
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    #@15
    goto :goto_1e

    #@16
    .line 180
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    #@19
    move-result-object p0

    #@1a
    const/4 p1, 0x0

    #@1b
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@1e
    :goto_1e
    return-void
.end method

.method public static detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;I)V
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 196
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@6
    move-result-object p1

    #@7
    if-eqz p1, :cond_13

    #@9
    .line 198
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeUtils;->removeToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;)V

    #@c
    .line 199
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    #@f
    .line 200
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeContentDescription(Landroid/view/View;)V

    #@12
    goto :goto_27

    #@13
    .line 202
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    #@15
    const-string p1, "Trying to remove badge from a null menuItemView: "

    #@17
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p0

    #@1e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    const-string p1, "BadgeUtils"

    #@24
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    :goto_27
    return-void
.end method

.method static removeToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 235
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalHorizontalOffset(I)V

    #@4
    .line 236
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalVerticalOffset(I)V

    #@7
    return-void
.end method

.method public static setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 4

    #@0
    .line 247
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@8
    .line 249
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@b
    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@e
    return-void
.end method

.method static setToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;Landroid/content/res/Resources;)V
    .registers 3

    #@0
    .line 225
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_horizontal_offset:I

    #@2
    .line 226
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@5
    move-result v0

    #@6
    .line 225
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalHorizontalOffset(I)V

    #@9
    .line 228
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_vertical_offset:I

    #@b
    .line 229
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@e
    move-result p1

    #@f
    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalVerticalOffset(I)V

    #@12
    return-void
.end method

.method public static updateBadgeBounds(Landroid/graphics/Rect;FFFF)V
    .registers 7

    #@0
    sub-float v0, p1, p3

    #@2
    float-to-int v0, v0

    #@3
    sub-float v1, p2, p4

    #@5
    float-to-int v1, v1

    #@6
    add-float/2addr p1, p3

    #@7
    float-to-int p1, p1

    #@8
    add-float/2addr p2, p4

    #@9
    float-to-int p2, p2

    #@a
    .line 69
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    return-void
.end method

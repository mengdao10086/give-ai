.class public Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeDrawable$BadgeGravity;
    }
.end annotation


# static fields
.field public static final BOTTOM_END:I = 0x800055

.field public static final BOTTOM_START:I = 0x800053

.field static final DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX:Ljava/lang/String; = "+"

.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I

.field private static final MAX_CIRCULAR_BADGE_NUMBER_COUNT:I = 0x9

.field public static final TOP_END:I = 0x800035

.field public static final TOP_START:I = 0x800033


# instance fields
.field private anchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeBounds:Landroid/graphics/Rect;

.field private badgeCenterX:F

.field private badgeCenterY:F

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cornerRadius:F

.field private customBadgeParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private halfBadgeHeight:F

.field private halfBadgeWidth:F

.field private maxBadgeNumber:I

.field private final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final state:Lcom/google/android/material/badge/BadgeState;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 149
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    #@2
    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    #@4
    .line 150
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    #@6
    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    #@8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .registers 13

    #@0
    .line 248
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 249
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    #@a
    .line 250
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    #@d
    .line 251
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    #@14
    .line 252
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@16
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@19
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1b
    .line 254
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper;

    #@1d
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    #@20
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@22
    .line 255
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@25
    move-result-object v0

    #@26
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@28
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@2b
    .line 258
    sget v0, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    #@2d
    invoke-direct {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearanceResource(I)V

    #@30
    .line 260
    new-instance v0, Lcom/google/android/material/badge/BadgeState;

    #@32
    move-object v1, v0

    #@33
    move-object v2, p1

    #@34
    move v3, p2

    #@35
    move v4, p3

    #@36
    move v5, p4

    #@37
    move-object v6, p5

    #@38
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/badge/BadgeState;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    #@3b
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@3d
    .line 262
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->restoreState()V

    #@40
    return-void
.end method

.method private calculateCenterAndBounds(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 8

    #@0
    .line 894
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTotalVerticalOffsetForState()I

    #@3
    move-result v0

    #@4
    .line 895
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@6
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    #@9
    move-result v1

    #@a
    const v2, 0x800053

    #@d
    if-eq v1, v2, :cond_1b

    #@f
    const v3, 0x800055

    #@12
    if-eq v1, v3, :cond_1b

    #@14
    .line 903
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v1, v0

    #@17
    int-to-float v0, v1

    #@18
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    #@1a
    goto :goto_21

    #@1b
    .line 898
    :cond_1b
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@1d
    sub-int/2addr v1, v0

    #@1e
    int-to-float v0, v1

    #@1f
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    #@21
    .line 907
    :goto_21
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    #@24
    move-result v0

    #@25
    const/16 v1, 0x9

    #@27
    if-gt v0, v1, :cond_3f

    #@29
    .line 908
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_34

    #@2f
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@31
    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    #@33
    goto :goto_38

    #@34
    :cond_34
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@36
    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    #@38
    :goto_38
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    #@3a
    .line 909
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    #@3c
    .line 910
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    #@3e
    goto :goto_5b

    #@3f
    .line 912
    :cond_3f
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@41
    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    #@43
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    #@45
    .line 913
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    #@47
    .line 914
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 915
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@4d
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    #@50
    move-result v0

    #@51
    const/high16 v1, 0x40000000    # 2.0f

    #@53
    div-float/2addr v0, v1

    #@54
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@56
    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->badgeWidePadding:F

    #@58
    add-float/2addr v0, v1

    #@59
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    #@5b
    .line 920
    :goto_5b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5e
    move-result-object p1

    #@5f
    .line 922
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_68

    #@65
    .line 923
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    #@67
    goto :goto_6a

    #@68
    .line 924
    :cond_68
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    #@6a
    .line 921
    :goto_6a
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@6d
    move-result p1

    #@6e
    .line 926
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTotalHorizontalOffsetForState()I

    #@71
    move-result v0

    #@72
    .line 929
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@74
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    #@77
    move-result v1

    #@78
    const v3, 0x800033

    #@7b
    if-eq v1, v3, :cond_9d

    #@7d
    if-eq v1, v2, :cond_9d

    #@7f
    .line 941
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@82
    move-result p3

    #@83
    if-nez p3, :cond_90

    #@85
    .line 942
    iget p2, p2, Landroid/graphics/Rect;->right:I

    #@87
    int-to-float p2, p2

    #@88
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    #@8a
    add-float/2addr p2, p3

    #@8b
    int-to-float p1, p1

    #@8c
    sub-float/2addr p2, p1

    #@8d
    int-to-float p1, v0

    #@8e
    sub-float/2addr p2, p1

    #@8f
    goto :goto_9a

    #@90
    .line 943
    :cond_90
    iget p2, p2, Landroid/graphics/Rect;->left:I

    #@92
    int-to-float p2, p2

    #@93
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    #@95
    sub-float/2addr p2, p3

    #@96
    int-to-float p1, p1

    #@97
    add-float/2addr p2, p1

    #@98
    int-to-float p1, v0

    #@99
    add-float/2addr p2, p1

    #@9a
    :goto_9a
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    #@9c
    goto :goto_ba

    #@9d
    .line 933
    :cond_9d
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@a0
    move-result p3

    #@a1
    if-nez p3, :cond_ae

    #@a3
    .line 934
    iget p2, p2, Landroid/graphics/Rect;->left:I

    #@a5
    int-to-float p2, p2

    #@a6
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    #@a8
    sub-float/2addr p2, p3

    #@a9
    int-to-float p1, p1

    #@aa
    add-float/2addr p2, p1

    #@ab
    int-to-float p1, v0

    #@ac
    add-float/2addr p2, p1

    #@ad
    goto :goto_b8

    #@ae
    .line 935
    :cond_ae
    iget p2, p2, Landroid/graphics/Rect;->right:I

    #@b0
    int-to-float p2, p2

    #@b1
    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    #@b3
    add-float/2addr p2, p3

    #@b4
    int-to-float p1, p1

    #@b5
    sub-float/2addr p2, p1

    #@b6
    int-to-float p1, v0

    #@b7
    sub-float/2addr p2, p1

    #@b8
    :goto_b8
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    #@ba
    :goto_ba
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 8

    #@0
    .line 191
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    const/4 v2, 0x0

    #@3
    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    #@5
    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    #@7
    const/4 v5, 0x0

    #@8
    move-object v0, v6

    #@9
    move-object v1, p0

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    #@d
    return-object v6
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 9

    #@0
    .line 208
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    #@4
    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    #@6
    const/4 v5, 0x0

    #@7
    move-object v0, v6

    #@8
    move-object v1, p0

    #@9
    move v2, p1

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    #@d
    return-object v6
.end method

.method static createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/BadgeDrawable;
    .registers 9

    #@0
    .line 185
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    #@2
    const/4 v2, 0x0

    #@3
    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    #@5
    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    #@7
    move-object v0, v6

    #@8
    move-object v1, p0

    #@9
    move-object v5, p1

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    #@d
    return-object v6
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 949
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 950
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 951
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@b
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@e
    move-result-object v2

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@13
    move-result v4

    #@14
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@17
    .line 952
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    #@19
    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    #@1b
    .line 955
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@1e
    move-result v0

    #@1f
    div-int/lit8 v0, v0, 0x2

    #@21
    int-to-float v0, v0

    #@22
    add-float/2addr v3, v0

    #@23
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@25
    .line 956
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@28
    move-result-object v0

    #@29
    .line 952
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@2c
    return-void
.end method

.method private getBadgeText()Ljava/lang/String;
    .registers 6

    #@0
    .line 962
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    #@6
    if-gt v0, v1, :cond_1c

    #@8
    .line 963
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    #@15
    move-result v1

    #@16
    int-to-long v1, v1

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 965
    :cond_1c
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    #@1e
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/Context;

    #@24
    if-nez v0, :cond_29

    #@26
    const-string v0, ""

    #@28
    return-object v0

    #@29
    .line 970
    :cond_29
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2b
    .line 971
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    #@2e
    move-result-object v1

    #@2f
    sget v2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    #@31
    .line 972
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    const/4 v2, 0x2

    #@36
    new-array v2, v2, [Ljava/lang/Object;

    #@38
    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    #@3a
    .line 973
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v3

    #@3e
    const/4 v4, 0x0

    #@3f
    aput-object v3, v2, v4

    #@41
    const/4 v3, 0x1

    #@42
    const-string v4, "+"

    #@44
    aput-object v4, v2, v3

    #@46
    .line 970
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method private getTotalHorizontalOffsetForState()I
    .registers 3

    #@0
    .line 888
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithText()I

    #@b
    move-result v0

    #@c
    goto :goto_13

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@f
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    #@12
    move-result v0

    #@13
    .line 889
    :goto_13
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@15
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getAdditionalHorizontalOffset()I

    #@18
    move-result v1

    #@19
    add-int/2addr v0, v1

    #@1a
    return v0
.end method

.method private getTotalVerticalOffsetForState()I
    .registers 3

    #@0
    .line 882
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithText()I

    #@b
    move-result v0

    #@c
    goto :goto_13

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@f
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    #@12
    move-result v0

    #@13
    .line 883
    :goto_13
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@15
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getAdditionalVerticalOffset()I

    #@18
    move-result v1

    #@19
    add-int/2addr v0, v1

    #@1a
    return v0
.end method

.method private onAlphaUpdated()V
    .registers 3

    #@0
    .line 582
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    #@d
    .line 583
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@10
    return-void
.end method

.method private onBackgroundColorUpdated()V
    .registers 3

    #@0
    .line 408
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBackgroundColor()I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object v0

    #@a
    .line 409
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@c
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@f
    move-result-object v1

    #@10
    if-eq v1, v0, :cond_1a

    #@12
    .line 410
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@14
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@17
    .line 411
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@1a
    :cond_1a
    return-void
.end method

.method private onBadgeGravityUpdated()V
    .registers 3

    #@0
    .line 554
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_21

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_21

    #@a
    .line 555
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    #@c
    .line 556
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/view/View;

    #@12
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    #@14
    if-eqz v1, :cond_1d

    #@16
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/widget/FrameLayout;

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v1, 0x0

    #@1e
    .line 555
    :goto_1e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@21
    :cond_21
    return-void
.end method

.method private onBadgeTextColorUpdated()V
    .registers 3

    #@0
    .line 440
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@8
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeTextColor()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    #@f
    .line 441
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@12
    return-void
.end method

.method private onMaxCharacterCountUpdated()V
    .registers 3

    #@0
    .line 530
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateMaxBadgeNumber()V

    #@3
    .line 531
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    #@9
    .line 532
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@c
    .line 533
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@f
    return-void
.end method

.method private onNumberUpdated()V
    .registers 3

    #@0
    .line 501
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    #@6
    .line 502
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@9
    .line 503
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@c
    return-void
.end method

.method private onVisibilityUpdated()V
    .registers 3

    #@0
    .line 221
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->isVisible()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(ZZ)Z

    #@a
    .line 225
    sget-boolean v1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@c
    if-eqz v1, :cond_23

    #@e
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_23

    #@14
    if-nez v0, :cond_23

    #@16
    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/view/ViewGroup;

    #@20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    #@23
    :cond_23
    return-void
.end method

.method private restoreState()V
    .registers 1

    #@0
    .line 231
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxCharacterCountUpdated()V

    #@3
    .line 233
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onNumberUpdated()V

    #@6
    .line 234
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onAlphaUpdated()V

    #@9
    .line 235
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBackgroundColorUpdated()V

    #@c
    .line 236
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    #@f
    .line 237
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeGravityUpdated()V

    #@12
    .line 239
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@15
    .line 240
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onVisibilityUpdated()V

    #@18
    return-void
.end method

.method private setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 4

    #@0
    .line 838
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p1, :cond_9

    #@8
    return-void

    #@9
    .line 841
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    #@b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/content/Context;

    #@11
    if-nez v0, :cond_14

    #@13
    return-void

    #@14
    .line 845
    :cond_14
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@16
    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    #@19
    .line 846
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@1c
    return-void
.end method

.method private setTextAppearanceResource(I)V
    .registers 4

    #@0
    .line 830
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/Context;

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 834
    :cond_b
    new-instance v1, Lcom/google/android/material/resources/TextAppearance;

    #@d
    invoke-direct {v1, v0, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    #@10
    invoke-direct {p0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    #@13
    return-void
.end method

.method private tryWrapAnchorInCompatParent(Landroid/view/View;)V
    .registers 7

    #@0
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup;

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 343
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    #@b
    move-result v1

    #@c
    sget v2, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    #@e
    if-eq v1, v2, :cond_1a

    #@10
    :cond_10
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    #@12
    if-eqz v1, :cond_1b

    #@14
    .line 344
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    if-ne v1, v0, :cond_1b

    #@1a
    :cond_1a
    return-void

    #@1b
    .line 348
    :cond_1b
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->updateAnchorParentToNotClip(Landroid/view/View;)V

    #@1e
    .line 351
    new-instance v1, Landroid/widget/FrameLayout;

    #@20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@27
    .line 352
    sget v2, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    #@29
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    #@2c
    const/4 v2, 0x0

    #@2d
    .line 353
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    #@30
    .line 354
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    #@33
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3a
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3d
    move-result v2

    #@3e
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    #@41
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@44
    move-result v2

    #@45
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    #@48
    .line 359
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@4b
    move-result v2

    #@4c
    .line 360
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@4f
    .line 361
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@51
    const/4 v4, -0x1

    #@52
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@55
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@58
    .line 364
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@5b
    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@5e
    .line 366
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@60
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@63
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    #@65
    .line 370
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$1;

    #@67
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/badge/BadgeDrawable$1;-><init>(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@6a
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    #@6d
    return-void
.end method

.method private static updateAnchorParentToNotClip(Landroid/view/View;)V
    .registers 2

    #@0
    .line 380
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/view/ViewGroup;

    #@6
    const/4 v0, 0x0

    #@7
    .line 381
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    #@a
    .line 382
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    #@d
    return-void
.end method

.method private updateCenterAndBounds()V
    .registers 7

    #@0
    .line 850
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/Context;

    #@8
    .line 851
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    #@a
    const/4 v2, 0x0

    #@b
    if-eqz v1, :cond_14

    #@d
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/view/View;

    #@13
    goto :goto_15

    #@14
    :cond_14
    move-object v1, v2

    #@15
    :goto_15
    if-eqz v0, :cond_6d

    #@17
    if-nez v1, :cond_1a

    #@19
    goto :goto_6d

    #@1a
    .line 855
    :cond_1a
    new-instance v3, Landroid/graphics/Rect;

    #@1c
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@1f
    .line 856
    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@24
    .line 858
    new-instance v4, Landroid/graphics/Rect;

    #@26
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@29
    .line 860
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@2c
    .line 862
    iget-object v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    #@2e
    if-eqz v5, :cond_36

    #@30
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/view/ViewGroup;

    #@36
    :cond_36
    if-nez v2, :cond_3c

    #@38
    .line 863
    sget-boolean v5, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@3a
    if-eqz v5, :cond_47

    #@3c
    :cond_3c
    if-nez v2, :cond_44

    #@3e
    .line 866
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/view/ViewGroup;

    #@44
    .line 867
    :cond_44
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@47
    .line 870
    :cond_47
    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/material/badge/BadgeDrawable;->calculateCenterAndBounds(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    #@4a
    .line 872
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    #@4c
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    #@4e
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    #@50
    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    #@52
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    #@54
    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/material/badge/BadgeUtils;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    #@57
    .line 874
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@59
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    #@5b
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    #@5e
    .line 875
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    #@60
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v0

    #@64
    if-nez v0, :cond_6d

    #@66
    .line 876
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@68
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@6d
    :cond_6d
    :goto_6d
    return-void
.end method

.method private updateMaxBadgeNumber()V
    .registers 5

    #@0
    .line 979
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    #@3
    move-result v0

    #@4
    int-to-double v0, v0

    #@5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@7
    sub-double/2addr v0, v2

    #@8
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    #@a
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@d
    move-result-wide v0

    #@e
    double-to-int v0, v0

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    #@13
    return-void
.end method


# virtual methods
.method public clearNumber()V
    .registers 2

    #@0
    .line 494
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 495
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->clearNumber()V

    #@b
    .line 496
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onNumberUpdated()V

    #@e
    :cond_e
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 605
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    .line 606
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_25

    #@a
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_25

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_17

    #@16
    goto :goto_25

    #@17
    .line 609
    :cond_17
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@19
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    #@1c
    .line 610
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_25

    #@22
    .line 611
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->drawText(Landroid/graphics/Canvas;)V

    #@25
    :cond_25
    :goto_25
    return-void
.end method

.method getAdditionalHorizontalOffset()I
    .registers 2

    #@0
    .line 747
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalHorizontalOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getAdditionalVerticalOffset()I
    .registers 2

    #@0
    .line 826
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalVerticalOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAlpha()I
    .registers 2

    #@0
    .line 572
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getAlpha()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    #@0
    .line 393
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getBadgeGravity()I
    .registers 2

    #@0
    .line 538
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBadgeNumberLocale()Ljava/util/Locale;
    .registers 2

    #@0
    .line 447
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBadgeTextColor()I
    .registers 2

    #@0
    .line 423
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 7

    #@0
    .line 646
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 649
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_60

    #@e
    .line 650
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@10
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionQuantityStrings()I

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_5f

    #@16
    .line 651
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    #@18
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/content/Context;

    #@1e
    if-nez v0, :cond_21

    #@20
    return-object v1

    #@21
    .line 655
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    #@24
    move-result v1

    #@25
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    #@27
    const/4 v3, 0x0

    #@28
    const/4 v4, 0x1

    #@29
    if-gt v1, v2, :cond_4a

    #@2b
    .line 657
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@31
    .line 659
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionQuantityStrings()I

    #@34
    move-result v1

    #@35
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    #@38
    move-result v2

    #@39
    new-array v4, v4, [Ljava/lang/Object;

    #@3b
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    #@3e
    move-result v5

    #@3f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v5

    #@43
    aput-object v5, v4, v3

    #@45
    .line 658
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0

    #@4a
    .line 661
    :cond_4a
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@4c
    .line 662
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionExceedsMaxBadgeNumberStringResource()I

    #@4f
    move-result v1

    #@50
    new-array v2, v4, [Ljava/lang/Object;

    #@52
    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    #@54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v4

    #@58
    aput-object v4, v2, v3

    #@5a
    .line 661
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0

    #@5f
    :cond_5f
    return-object v1

    #@60
    .line 668
    :cond_60
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@62
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionNumberless()Ljava/lang/CharSequence;

    #@65
    move-result-object v0

    #@66
    return-object v0
.end method

.method public getCustomBadgeParent()Landroid/widget/FrameLayout;
    .registers 2

    #@0
    .line 334
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_b

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/widget/FrameLayout;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return-object v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    #@0
    .line 693
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHorizontalOffsetWithText()I
    .registers 2

    #@0
    .line 733
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithText()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHorizontalOffsetWithoutText()I
    .registers 2

    #@0
    .line 713
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    #@0
    .line 594
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    #@0
    .line 600
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxCharacterCount()I
    .registers 2

    #@0
    .line 513
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxCharacterCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNumber()I
    .registers 2

    #@0
    .line 473
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumber()I

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

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method getSavedState()Lcom/google/android/material/badge/BadgeState$State;
    .registers 2

    #@0
    .line 178
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getOverridingState()Lcom/google/android/material/badge/BadgeState$State;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVerticalOffset()I
    .registers 2

    #@0
    .line 771
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVerticalOffsetWithText()I
    .registers 2

    #@0
    .line 811
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithText()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVerticalOffsetWithoutText()I
    .registers 2

    #@0
    .line 791
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNumber()Z
    .registers 2

    #@0
    .line 460
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasNumber()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onStateChange([I)Z
    .registers 2

    #@0
    .line 628
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public onTextSizeChange()V
    .registers 1

    #@0
    .line 623
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@3
    return-void
.end method

.method setAdditionalHorizontalOffset(I)V
    .registers 3

    #@0
    .line 742
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAdditionalHorizontalOffset(I)V

    #@5
    .line 743
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@8
    return-void
.end method

.method setAdditionalVerticalOffset(I)V
    .registers 3

    #@0
    .line 820
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAdditionalVerticalOffset(I)V

    #@5
    .line 821
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@8
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 577
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAlpha(I)V

    #@5
    .line 578
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onAlphaUpdated()V

    #@8
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    .line 403
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBackgroundColor(I)V

    #@5
    .line 404
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBackgroundColorUpdated()V

    #@8
    return-void
.end method

.method public setBadgeGravity(I)V
    .registers 3

    #@0
    .line 547
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_10

    #@8
    .line 548
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeGravity(I)V

    #@d
    .line 549
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeGravityUpdated()V

    #@10
    :cond_10
    return-void
.end method

.method public setBadgeNumberLocale(Ljava/util/Locale;)V
    .registers 3

    #@0
    .line 452
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_14

    #@c
    .line 453
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@e
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setNumberLocale(Ljava/util/Locale;)V

    #@11
    .line 454
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@14
    :cond_14
    return-void
.end method

.method public setBadgeTextColor(I)V
    .registers 3

    #@0
    .line 433
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    #@9
    move-result v0

    #@a
    if-eq v0, p1, :cond_14

    #@c
    .line 434
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@e
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeTextColor(I)V

    #@11
    .line 435
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    #@14
    :cond_14
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    #@0
    return-void
.end method

.method public setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V
    .registers 3

    #@0
    .line 641
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V

    #@5
    return-void
.end method

.method public setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 632
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionNumberless(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setContentDescriptionQuantityStringsResource(I)V
    .registers 3

    #@0
    .line 636
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionQuantityStringsResource(I)V

    #@5
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2

    #@0
    .line 680
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffsetWithoutText(I)V

    #@3
    .line 681
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffsetWithText(I)V

    #@6
    return-void
.end method

.method public setHorizontalOffsetWithText(I)V
    .registers 3

    #@0
    .line 723
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setHorizontalOffsetWithText(I)V

    #@5
    .line 724
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@8
    return-void
.end method

.method public setHorizontalOffsetWithoutText(I)V
    .registers 3

    #@0
    .line 703
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setHorizontalOffsetWithoutText(I)V

    #@5
    .line 704
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@8
    return-void
.end method

.method public setMaxCharacterCount(I)V
    .registers 3

    #@0
    .line 523
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxCharacterCount()I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_10

    #@8
    .line 524
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setMaxCharacterCount(I)V

    #@d
    .line 525
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxCharacterCountUpdated()V

    #@10
    :cond_10
    return-void
.end method

.method public setNumber(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 485
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result p1

    #@5
    .line 486
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumber()I

    #@a
    move-result v0

    #@b
    if-eq v0, p1, :cond_15

    #@d
    .line 487
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@f
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setNumber(I)V

    #@12
    .line 488
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onNumberUpdated()V

    #@15
    :cond_15
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2

    #@0
    .line 758
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffsetWithoutText(I)V

    #@3
    .line 759
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffsetWithText(I)V

    #@6
    return-void
.end method

.method public setVerticalOffsetWithText(I)V
    .registers 3

    #@0
    .line 801
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVerticalOffsetWithText(I)V

    #@5
    .line 802
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@8
    return-void
.end method

.method public setVerticalOffsetWithoutText(I)V
    .registers 3

    #@0
    .line 781
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVerticalOffsetWithoutText(I)V

    #@5
    .line 782
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@8
    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    #@0
    .line 216
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVisible(Z)V

    #@5
    .line 217
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onVisibilityUpdated()V

    #@8
    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 298
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@4
    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 279
    instance-of v0, p2, Landroid/widget/FrameLayout;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 282
    check-cast p2, Landroid/widget/FrameLayout;

    #@6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@9
    return-void

    #@a
    .line 280
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string p2, "customBadgeParent must be a FrameLayout"

    #@e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 4

    #@0
    .line 317
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    #@7
    .line 319
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@9
    if-eqz v0, :cond_11

    #@b
    if-nez p2, :cond_11

    #@d
    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->tryWrapAnchorInCompatParent(Landroid/view/View;)V

    #@10
    goto :goto_18

    #@11
    .line 322
    :cond_11
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@13
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@16
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    #@18
    .line 324
    :goto_18
    sget-boolean p2, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    #@1a
    if-nez p2, :cond_1f

    #@1c
    .line 325
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->updateAnchorParentToNotClip(Landroid/view/View;)V

    #@1f
    .line 327
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    #@22
    .line 328
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    #@25
    return-void
.end method

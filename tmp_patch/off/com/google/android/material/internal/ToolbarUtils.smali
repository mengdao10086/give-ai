.class public Lcom/google/android/material/internal/ToolbarUtils;
.super Ljava/lang/Object;
.source "ToolbarUtils.java"


# static fields
.field private static final VIEW_TOP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 48
    new-instance v0, Lcom/google/android/material/internal/ToolbarUtils$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/internal/ToolbarUtils$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;
    .registers 5

    #@0
    .line 156
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_25

    #@6
    const/4 v0, 0x0

    #@7
    .line 158
    :goto_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_25

    #@d
    .line 159
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    .line 160
    instance-of v2, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@13
    if-eqz v2, :cond_22

    #@15
    .line 161
    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    #@17
    .line 162
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@1e
    move-result v2

    #@1f
    if-ne v2, p1, :cond_22

    #@21
    return-object v1

    #@22
    :cond_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_7

    #@25
    :cond_25
    const/4 p0, 0x0

    #@26
    return-object p0
.end method

.method public static getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 125
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_15

    #@7
    .line 126
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 127
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    #@d
    if-eqz v2, :cond_12

    #@f
    .line 128
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    #@11
    return-object v1

    #@12
    :cond_12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_1

    #@15
    :cond_15
    const/4 p0, 0x0

    #@16
    return-object p0
.end method

.method private static getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    const/4 v1, 0x0

    #@5
    .line 96
    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@8
    move-result v2

    #@9
    if-ge v1, v2, :cond_33

    #@b
    .line 97
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 98
    instance-of v3, v2, Landroid/widget/ImageView;

    #@11
    if-eqz v3, :cond_30

    #@13
    .line 99
    check-cast v2, Landroid/widget/ImageView;

    #@15
    .line 100
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v3

    #@19
    if-eqz v3, :cond_30

    #@1b
    .line 102
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1e
    move-result-object v4

    #@1f
    if-eqz v4, :cond_30

    #@21
    .line 103
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_30

    #@2f
    return-object v2

    #@30
    :cond_30
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_5

    #@33
    :cond_33
    return-object v0
.end method

.method public static getLogoImageView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageView;
    .registers 2

    #@0
    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;
    .registers 6

    #@0
    .line 136
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    :cond_8
    const/4 v2, 0x0

    #@9
    .line 140
    :goto_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@c
    move-result v3

    #@d
    if-ge v2, v3, :cond_23

    #@f
    .line 141
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v3

    #@13
    .line 142
    instance-of v4, v3, Landroid/widget/ImageButton;

    #@15
    if-eqz v4, :cond_20

    #@17
    .line 143
    check-cast v3, Landroid/widget/ImageButton;

    #@19
    .line 144
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v4

    #@1d
    if-ne v4, v0, :cond_20

    #@1f
    return-object v3

    #@20
    :cond_20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_9

    #@23
    :cond_23
    return-object v1
.end method

.method public static getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;
    .registers 3

    #@0
    .line 113
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_13

    #@6
    .line 116
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-le v0, v1, :cond_13

    #@d
    const/4 v0, 0x0

    #@e
    .line 117
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object p0

    #@12
    return-object p0

    #@13
    :cond_13
    const/4 p0, 0x0

    #@14
    return-object p0
.end method

.method public static getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .registers 2

    #@0
    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    .line 69
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 p0, 0x0

    #@f
    goto :goto_18

    #@10
    :cond_10
    sget-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    #@12
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@15
    move-result-object p0

    #@16
    check-cast p0, Landroid/widget/TextView;

    #@18
    :goto_18
    return-object p0
.end method

.method private static getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/Toolbar;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    #@0
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 74
    :goto_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_26

    #@c
    .line 75
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    .line 76
    instance-of v3, v2, Landroid/widget/TextView;

    #@12
    if-eqz v3, :cond_23

    #@14
    .line 77
    check-cast v2, Landroid/widget/TextView;

    #@16
    .line 78
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_23

    #@20
    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    :cond_23
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_6

    #@26
    :cond_26
    return-object v0
.end method

.method public static getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    .line 63
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 p0, 0x0

    #@f
    goto :goto_18

    #@10
    :cond_10
    sget-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    #@12
    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@15
    move-result-object p0

    #@16
    check-cast p0, Landroid/widget/TextView;

    #@18
    :goto_18
    return-object p0
.end method

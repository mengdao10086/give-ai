.class Landroidx/appcompat/widget/AppCompatDrawableManager$1;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatDrawableManager;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private final TINT_CHECKABLE_BUTTON_LIST:[I

.field private final TINT_COLOR_CONTROL_NORMAL:[I

.field private final TINT_COLOR_CONTROL_STATE_LIST:[I


# direct methods
.method constructor <init>()V
    .registers 11

    #@0
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    new-array v1, v0, [I

    #@6
    .line 68
    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    #@8
    const/4 v3, 0x0

    #@9
    aput v2, v1, v3

    #@b
    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    #@d
    const/4 v4, 0x1

    #@e
    aput v2, v1, v4

    #@10
    sget v2, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    #@12
    const/4 v5, 0x2

    #@13
    aput v2, v1, v5

    #@15
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    #@17
    const/4 v1, 0x7

    #@18
    new-array v2, v1, [I

    #@1a
    .line 79
    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    #@1c
    aput v6, v2, v3

    #@1e
    sget v6, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    #@20
    aput v6, v2, v4

    #@22
    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    #@24
    aput v6, v2, v5

    #@26
    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    #@28
    aput v6, v2, v0

    #@2a
    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    #@2c
    const/4 v7, 0x4

    #@2d
    aput v6, v2, v7

    #@2f
    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    #@31
    const/4 v8, 0x5

    #@32
    aput v6, v2, v8

    #@34
    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    #@36
    const/4 v9, 0x6

    #@37
    aput v6, v2, v9

    #@39
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_NORMAL:[I

    #@3b
    new-array v1, v1, [I

    #@3d
    .line 93
    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    #@3f
    aput v2, v1, v3

    #@41
    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    #@43
    aput v2, v1, v4

    #@45
    sget v2, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    #@47
    aput v2, v1, v5

    #@49
    sget v2, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    #@4b
    aput v2, v1, v0

    #@4d
    sget v2, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl:I

    #@4f
    aput v2, v1, v7

    #@51
    sget v2, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl:I

    #@53
    aput v2, v1, v8

    #@55
    sget v2, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl:I

    #@57
    aput v2, v1, v9

    #@59
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    #@5b
    new-array v1, v0, [I

    #@5d
    .line 108
    sget v2, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    #@5f
    aput v2, v1, v3

    #@61
    sget v2, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    #@63
    aput v2, v1, v4

    #@65
    sget v2, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    #@67
    aput v2, v1, v5

    #@69
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    #@6b
    new-array v1, v5, [I

    #@6d
    .line 118
    sget v2, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    #@6f
    aput v2, v1, v3

    #@71
    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    #@73
    aput v2, v1, v4

    #@75
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_STATE_LIST:[I

    #@77
    new-array v1, v7, [I

    #@79
    .line 128
    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    #@7b
    aput v2, v1, v3

    #@7d
    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    #@7f
    aput v2, v1, v4

    #@81
    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_check_material_anim:I

    #@83
    aput v2, v1, v5

    #@85
    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_radio_material_anim:I

    #@87
    aput v2, v1, v0

    #@89
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_CHECKABLE_BUTTON_LIST:[I

    #@8b
    return-void
.end method

.method private arrayContains([II)Z
    .registers 7

    #@0
    .line 360
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    move v2, v1

    #@3
    :goto_3
    if-ge v2, v0, :cond_e

    #@5
    aget v3, p1, v2

    #@7
    if-ne v3, p2, :cond_b

    #@9
    const/4 p1, 0x1

    #@a
    return p1

    #@b
    :cond_b
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_3

    #@e
    :cond_e
    return v1
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 143
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 8

    #@0
    const/4 v0, 0x4

    #@1
    new-array v1, v0, [[I

    #@3
    new-array v0, v0, [I

    #@5
    .line 158
    sget v2, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    #@7
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@a
    move-result v2

    #@b
    .line 160
    sget v3, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    #@d
    invoke-static {p1, v3}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    #@10
    move-result p1

    #@11
    .line 164
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    #@13
    const/4 v4, 0x0

    #@14
    aput-object v3, v1, v4

    #@16
    aput p1, v0, v4

    #@18
    .line 168
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    #@1a
    const/4 v3, 0x1

    #@1b
    aput-object p1, v1, v3

    #@1d
    .line 169
    invoke-static {v2, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@20
    move-result p1

    #@21
    aput p1, v0, v3

    #@23
    .line 172
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    #@25
    const/4 v3, 0x2

    #@26
    aput-object p1, v1, v3

    #@28
    .line 173
    invoke-static {v2, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    #@2b
    move-result p1

    #@2c
    aput p1, v0, v3

    #@2e
    .line 177
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    #@30
    const/4 v2, 0x3

    #@31
    aput-object p1, v1, v2

    #@33
    aput p2, v0, v2

    #@35
    .line 181
    new-instance p1, Landroid/content/res/ColorStateList;

    #@37
    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@3a
    return-object p1
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 148
    sget v0, Landroidx/appcompat/R$attr;->colorAccent:I

    #@2
    .line 149
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@5
    move-result v0

    #@6
    .line 148
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 136
    sget v0, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    #@2
    .line 137
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@5
    move-result v0

    #@6
    .line 136
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 9

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [[I

    #@3
    new-array v0, v0, [I

    #@5
    .line 189
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    #@7
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@a
    move-result-object v2

    #@b
    const/4 v3, 0x2

    #@c
    const/4 v4, 0x1

    #@d
    const/4 v5, 0x0

    #@e
    if-eqz v2, :cond_37

    #@10
    .line 192
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_37

    #@16
    .line 197
    sget-object v6, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    #@18
    aput-object v6, v1, v5

    #@1a
    .line 198
    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1d
    move-result v6

    #@1e
    aput v6, v0, v5

    #@20
    .line 201
    sget-object v5, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    #@22
    aput-object v5, v1, v4

    #@24
    .line 202
    sget v5, Landroidx/appcompat/R$attr;->colorControlActivated:I

    #@26
    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@29
    move-result p1

    #@2a
    aput p1, v0, v4

    #@2c
    .line 206
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    #@2e
    aput-object p1, v1, v3

    #@30
    .line 207
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@33
    move-result p1

    #@34
    aput p1, v0, v3

    #@36
    goto :goto_5b

    #@37
    .line 213
    :cond_37
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    #@39
    aput-object v2, v1, v5

    #@3b
    .line 214
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    #@3d
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    #@40
    move-result v2

    #@41
    aput v2, v0, v5

    #@43
    .line 218
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    #@45
    aput-object v2, v1, v4

    #@47
    .line 219
    sget v2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    #@49
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@4c
    move-result v2

    #@4d
    aput v2, v0, v4

    #@4f
    .line 223
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    #@51
    aput-object v2, v1, v3

    #@53
    .line 224
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    #@55
    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@58
    move-result p1

    #@59
    aput p1, v0, v3

    #@5b
    .line 228
    :goto_5b
    new-instance p1, Landroid/content/res/ColorStateList;

    #@5d
    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@60
    return-object p1
.end method

.method private getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .registers 8

    #@0
    .line 260
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7
    move-result p3

    #@8
    .line 262
    sget v0, Landroidx/appcompat/R$drawable;->abc_star_black_48dp:I

    #@a
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    .line 264
    sget v1, Landroidx/appcompat/R$drawable;->abc_star_half_black_48dp:I

    #@10
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p1

    #@14
    .line 269
    instance-of p2, v0, Landroid/graphics/drawable/BitmapDrawable;

    #@16
    const/4 v1, 0x0

    #@17
    if-eqz p2, :cond_31

    #@19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1c
    move-result p2

    #@1d
    if-ne p2, p3, :cond_31

    #@1f
    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@22
    move-result p2

    #@23
    if-ne p2, p3, :cond_31

    #@25
    .line 272
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@27
    .line 274
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    #@29
    .line 275
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@30
    goto :goto_4d

    #@31
    .line 277
    :cond_31
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@33
    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@36
    move-result-object p2

    #@37
    .line 279
    new-instance v2, Landroid/graphics/Canvas;

    #@39
    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3c
    .line 280
    invoke-virtual {v0, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3f
    .line 281
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@42
    .line 282
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@44
    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@47
    .line 284
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #@49
    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@4c
    move-object p2, v2

    #@4d
    .line 286
    :goto_4d
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@4f
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    #@52
    .line 289
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@54
    if-eqz v2, :cond_65

    #@56
    .line 290
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@59
    move-result v2

    #@5a
    if-ne v2, p3, :cond_65

    #@5c
    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5f
    move-result v2

    #@60
    if-ne v2, p3, :cond_65

    #@62
    .line 293
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    #@64
    goto :goto_7b

    #@65
    .line 295
    :cond_65
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@67
    invoke-static {p3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@6a
    move-result-object v2

    #@6b
    .line 297
    new-instance v3, Landroid/graphics/Canvas;

    #@6d
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@70
    .line 298
    invoke-virtual {p1, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@73
    .line 299
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@76
    .line 300
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    #@78
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@7b
    .line 303
    :goto_7b
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    #@7d
    const/4 v2, 0x3

    #@7e
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    #@80
    aput-object v0, v2, v1

    #@82
    const/4 v0, 0x1

    #@83
    aput-object p1, v2, v0

    #@85
    const/4 p1, 0x2

    #@86
    aput-object p2, v2, p1

    #@88
    invoke-direct {p3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@8b
    const/high16 p2, 0x1020000

    #@8d
    .line 306
    invoke-virtual {p3, v1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    #@90
    const p2, 0x102000f

    #@93
    .line 307
    invoke-virtual {p3, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    #@96
    const p2, 0x102000d

    #@99
    .line 308
    invoke-virtual {p3, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    #@9c
    return-object p3
.end method

.method private setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5

    #@0
    .line 313
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 314
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    :cond_a
    if-nez p3, :cond_10

    #@c
    .line 316
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@f
    move-result-object p3

    #@10
    :cond_10
    invoke-static {p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@13
    move-result-object p2

    #@14
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@17
    return-void
.end method


# virtual methods
.method public createDrawableFor(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    #@0
    .line 234
    sget v0, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    #@2
    if-ne p3, v0, :cond_1f

    #@4
    .line 235
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    #@6
    const/4 v0, 0x2

    #@7
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    #@9
    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    #@b
    .line 236
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    #@14
    .line 238
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object p1

    #@18
    const/4 p2, 0x1

    #@19
    aput-object p1, v0, p2

    #@1b
    invoke-direct {p3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@1e
    return-object p3

    #@1f
    .line 242
    :cond_1f
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    #@21
    if-ne p3, v0, :cond_2a

    #@23
    .line 243
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_big:I

    #@25
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    #@28
    move-result-object p1

    #@29
    return-object p1

    #@2a
    .line 246
    :cond_2a
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    #@2c
    if-ne p3, v0, :cond_35

    #@2e
    .line 247
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_medium:I

    #@30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    #@33
    move-result-object p1

    #@34
    return-object p1

    #@35
    .line 250
    :cond_35
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    #@37
    if-ne p3, v0, :cond_40

    #@39
    .line 251
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_small:I

    #@3b
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    #@3e
    move-result-object p1

    #@3f
    return-object p1

    #@40
    :cond_40
    const/4 p1, 0x0

    #@41
    return-object p1
.end method

.method public getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    #@0
    .line 372
    sget v0, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    #@2
    if-ne p2, v0, :cond_b

    #@4
    .line 373
    sget p2, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    #@6
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object p1

    #@a
    return-object p1

    #@b
    .line 374
    :cond_b
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    #@d
    if-ne p2, v0, :cond_16

    #@f
    .line 375
    sget p2, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    #@11
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@14
    move-result-object p1

    #@15
    return-object p1

    #@16
    .line 376
    :cond_16
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    #@18
    if-ne p2, v0, :cond_1f

    #@1a
    .line 377
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    #@1d
    move-result-object p1

    #@1e
    return-object p1

    #@1f
    .line 378
    :cond_1f
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    #@21
    if-ne p2, v0, :cond_28

    #@23
    .line 379
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    #@26
    move-result-object p1

    #@27
    return-object p1

    #@28
    .line 380
    :cond_28
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    #@2a
    if-ne p2, v0, :cond_31

    #@2c
    .line 381
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    #@2f
    move-result-object p1

    #@30
    return-object p1

    #@31
    .line 382
    :cond_31
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    #@33
    if-ne p2, v0, :cond_3a

    #@35
    .line 383
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    #@38
    move-result-object p1

    #@39
    return-object p1

    #@3a
    .line 384
    :cond_3a
    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    #@3c
    if-eq p2, v0, :cond_7d

    #@3e
    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    #@40
    if-ne p2, v0, :cond_43

    #@42
    goto :goto_7d

    #@43
    .line 387
    :cond_43
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_NORMAL:[I

    #@45
    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_52

    #@4b
    .line 388
    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    #@4d
    invoke-static {p1, p2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@50
    move-result-object p1

    #@51
    return-object p1

    #@52
    .line 389
    :cond_52
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_STATE_LIST:[I

    #@54
    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_61

    #@5a
    .line 390
    sget p2, Landroidx/appcompat/R$color;->abc_tint_default:I

    #@5c
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@5f
    move-result-object p1

    #@60
    return-object p1

    #@61
    .line 391
    :cond_61
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_CHECKABLE_BUTTON_LIST:[I

    #@63
    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_70

    #@69
    .line 392
    sget p2, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    #@6b
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@6e
    move-result-object p1

    #@6f
    return-object p1

    #@70
    .line 393
    :cond_70
    sget v0, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    #@72
    if-ne p2, v0, :cond_7b

    #@74
    .line 394
    sget p2, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    #@76
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@79
    move-result-object p1

    #@7a
    return-object p1

    #@7b
    :cond_7b
    const/4 p1, 0x0

    #@7c
    return-object p1

    #@7d
    .line 386
    :cond_7d
    :goto_7d
    sget p2, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    #@7f
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@82
    move-result-object p1

    #@83
    return-object p1
.end method

.method public getTintModeForDrawableRes(I)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    #@0
    .line 452
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    #@2
    if-ne p1, v0, :cond_7

    #@4
    .line 453
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    :goto_8
    return-object p1
.end method

.method public tintDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 9

    #@0
    .line 323
    sget v0, Landroidx/appcompat/R$drawable;->abc_seekbar_track_material:I

    #@2
    const/4 v1, 0x1

    #@3
    const v2, 0x102000d

    #@6
    const v3, 0x102000f

    #@9
    const/high16 v4, 0x1020000

    #@b
    if-ne p2, v0, :cond_43

    #@d
    .line 324
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    #@f
    .line 326
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object p2

    #@13
    sget v0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    #@15
    .line 327
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@18
    move-result v0

    #@19
    .line 328
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@1c
    move-result-object v4

    #@1d
    .line 325
    invoke-direct {p0, p2, v0, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    #@20
    .line 330
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object p2

    #@24
    sget v0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    #@26
    .line 331
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@29
    move-result v0

    #@2a
    .line 332
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@2d
    move-result-object v3

    #@2e
    .line 329
    invoke-direct {p0, p2, v0, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    #@31
    .line 334
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object p2

    #@35
    sget p3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    #@37
    .line 335
    invoke-static {p1, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@3a
    move-result p1

    #@3b
    .line 336
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@3e
    move-result-object p3

    #@3f
    .line 333
    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    #@42
    return v1

    #@43
    .line 338
    :cond_43
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    #@45
    if-eq p2, v0, :cond_52

    #@47
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    #@49
    if-eq p2, v0, :cond_52

    #@4b
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    #@4d
    if-ne p2, v0, :cond_50

    #@4f
    goto :goto_52

    #@50
    :cond_50
    const/4 p1, 0x0

    #@51
    return p1

    #@52
    .line 341
    :cond_52
    :goto_52
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    #@54
    .line 343
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@57
    move-result-object p2

    #@58
    sget v0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    #@5a
    .line 344
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    #@5d
    move-result v0

    #@5e
    .line 345
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@61
    move-result-object v4

    #@62
    .line 342
    invoke-direct {p0, p2, v0, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    #@65
    .line 347
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@68
    move-result-object p2

    #@69
    sget v0, Landroidx/appcompat/R$attr;->colorControlActivated:I

    #@6b
    .line 348
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@6e
    move-result v0

    #@6f
    .line 349
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@72
    move-result-object v3

    #@73
    .line 346
    invoke-direct {p0, p2, v0, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    #@76
    .line 351
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@79
    move-result-object p2

    #@7a
    sget p3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    #@7c
    .line 352
    invoke-static {p1, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@7f
    move-result p1

    #@80
    .line 353
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@83
    move-result-object p3

    #@84
    .line 350
    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    #@87
    return v1
.end method

.method public tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 11

    #@0
    .line 402
    # getter for: Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object v0

    #@4
    .line 407
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    #@6
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, -0x1

    #@d
    if-eqz v1, :cond_15

    #@f
    .line 408
    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    #@11
    :goto_11
    move-object v1, v0

    #@12
    move v5, v2

    #@13
    :goto_13
    move v0, v4

    #@14
    goto :goto_4f

    #@15
    .line 410
    :cond_15
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    #@17
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_20

    #@1d
    .line 411
    sget p2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    #@1f
    goto :goto_11

    #@20
    .line 413
    :cond_20
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    #@22
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    #@25
    move-result v1

    #@26
    const v5, 0x1010031

    #@29
    if-eqz v1, :cond_32

    #@2b
    .line 416
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@2d
    :goto_2d
    move-object v1, v0

    #@2e
    move v0, v4

    #@2f
    move p2, v5

    #@30
    move v5, v2

    #@31
    goto :goto_4f

    #@32
    .line 417
    :cond_32
    sget v1, Landroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    #@34
    if-ne p2, v1, :cond_46

    #@36
    const p2, 0x42233333    # 40.8f

    #@39
    .line 420
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@3c
    move-result p2

    #@3d
    const v1, 0x1010030

    #@40
    move v5, v2

    #@41
    move-object v6, v0

    #@42
    move v0, p2

    #@43
    move p2, v1

    #@44
    move-object v1, v6

    #@45
    goto :goto_4f

    #@46
    .line 421
    :cond_46
    sget v1, Landroidx/appcompat/R$drawable;->abc_dialog_material_background:I

    #@48
    if-ne p2, v1, :cond_4b

    #@4a
    goto :goto_2d

    #@4b
    :cond_4b
    move-object v1, v0

    #@4c
    move p2, v3

    #@4d
    move v5, p2

    #@4e
    goto :goto_13

    #@4f
    :goto_4f
    if-eqz v5, :cond_6c

    #@51
    .line 427
    invoke-static {p3}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_5b

    #@57
    .line 428
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@5a
    move-result-object p3

    #@5b
    .line 431
    :cond_5b
    invoke-static {p1, p2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@5e
    move-result p1

    #@5f
    .line 432
    invoke-static {p1, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@62
    move-result-object p1

    #@63
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@66
    if-eq v0, v4, :cond_6b

    #@68
    .line 435
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@6b
    :cond_6b
    return v2

    #@6c
    :cond_6c
    return v3
.end method

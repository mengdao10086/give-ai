.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api21Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;
    }
.end annotation


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_FONT_WEIGHT_UNSPECIFIED:I = -0x1


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    #@0
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 75
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@6
    const/4 v0, -0x1

    #@7
    .line 76
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@9
    .line 81
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@b
    .line 82
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@d
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    #@10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@12
    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .registers 4

    #@0
    if-eqz p1, :cond_d

    #@2
    if-eqz p2, :cond_d

    #@4
    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    #@9
    move-result-object v0

    #@a
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    #@d
    :cond_d
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .registers 3

    #@0
    .line 551
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_11

    #@6
    .line 553
    new-instance p1, Landroidx/appcompat/widget/TintInfo;

    #@8
    invoke-direct {p1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@b
    const/4 p2, 0x1

    #@c
    .line 554
    iput-boolean p2, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@e
    .line 555
    iput-object p0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@10
    return-object p1

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    return-object p0
.end method

.method private setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12

    #@0
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x2

    #@4
    if-nez p5, :cond_52

    #@6
    if-eqz p6, :cond_9

    #@8
    goto :goto_52

    #@9
    :cond_9
    if-nez p1, :cond_11

    #@b
    if-nez p2, :cond_11

    #@d
    if-nez p3, :cond_11

    #@f
    if-eqz p4, :cond_71

    #@11
    .line 686
    :cond_11
    iget-object p5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@13
    invoke-static {p5}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object p5

    #@17
    .line 687
    aget-object p6, p5, v2

    #@19
    if-nez p6, :cond_40

    #@1b
    aget-object v4, p5, v3

    #@1d
    if-eqz v4, :cond_20

    #@1f
    goto :goto_40

    #@20
    .line 695
    :cond_20
    iget-object p5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@22
    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object p5

    #@26
    .line 696
    iget-object p6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@28
    if-eqz p1, :cond_2b

    #@2a
    goto :goto_2d

    #@2b
    .line 697
    :cond_2b
    aget-object p1, p5, v2

    #@2d
    :goto_2d
    if-eqz p2, :cond_30

    #@2f
    goto :goto_32

    #@30
    .line 698
    :cond_30
    aget-object p2, p5, v1

    #@32
    :goto_32
    if-eqz p3, :cond_35

    #@34
    goto :goto_37

    #@35
    .line 699
    :cond_35
    aget-object p3, p5, v3

    #@37
    :goto_37
    if-eqz p4, :cond_3a

    #@39
    goto :goto_3c

    #@3a
    .line 700
    :cond_3a
    aget-object p4, p5, v0

    #@3c
    .line 696
    :goto_3c
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@3f
    goto :goto_71

    #@40
    .line 688
    :cond_40
    :goto_40
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@42
    if-eqz p2, :cond_45

    #@44
    goto :goto_47

    #@45
    .line 689
    :cond_45
    aget-object p2, p5, v1

    #@47
    :goto_47
    aget-object p3, p5, v3

    #@49
    if-eqz p4, :cond_4c

    #@4b
    goto :goto_4e

    #@4c
    .line 690
    :cond_4c
    aget-object p4, p5, v0

    #@4e
    .line 688
    :goto_4e
    invoke-static {p1, p6, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@51
    return-void

    #@52
    .line 676
    :cond_52
    :goto_52
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@54
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@57
    move-result-object p1

    #@58
    .line 677
    iget-object p3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@5a
    if-eqz p5, :cond_5d

    #@5c
    goto :goto_5f

    #@5d
    .line 678
    :cond_5d
    aget-object p5, p1, v2

    #@5f
    :goto_5f
    if-eqz p2, :cond_62

    #@61
    goto :goto_64

    #@62
    .line 679
    :cond_62
    aget-object p2, p1, v1

    #@64
    :goto_64
    if-eqz p6, :cond_67

    #@66
    goto :goto_69

    #@67
    .line 680
    :cond_67
    aget-object p6, p1, v3

    #@69
    :goto_69
    if-eqz p4, :cond_6c

    #@6b
    goto :goto_6e

    #@6c
    .line 681
    :cond_6c
    aget-object p4, p1, v0

    #@6e
    .line 677
    :goto_6e
    invoke-static {p3, p5, p2, p6, p4}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@71
    :cond_71
    :goto_71
    return-void
.end method

.method private setCompoundTints()V
    .registers 2

    #@0
    .line 663
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    #@4
    .line 664
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    #@6
    .line 665
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    #@8
    .line 666
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    #@a
    .line 667
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    #@c
    .line 668
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    #@e
    return-void
.end method

.method private setTextSizeInternal(IF)V
    .registers 4

    #@0
    .line 592
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    #@5
    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 12

    #@0
    .line 345
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    #@2
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@4
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@a
    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/4 v1, 0x2

    #@d
    const/4 v2, -0x1

    #@e
    const/4 v3, 0x0

    #@f
    const/16 v4, 0x1c

    #@11
    if-lt v0, v4, :cond_23

    #@13
    .line 348
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    #@15
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@1b
    if-eq v0, v2, :cond_23

    #@1d
    .line 351
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@1f
    and-int/2addr v0, v1

    #@20
    or-int/2addr v0, v3

    #@21
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@23
    .line 355
    :cond_23
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    #@25
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@28
    move-result v0

    #@29
    const/4 v5, 0x1

    #@2a
    if-nez v0, :cond_5c

    #@2c
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    #@2e
    .line 356
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_35

    #@34
    goto :goto_5c

    #@35
    .line 418
    :cond_35
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    #@37
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@3a
    move-result p1

    #@3b
    if-eqz p1, :cond_5b

    #@3d
    .line 420
    iput-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    #@3f
    .line 421
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    #@41
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@44
    move-result p1

    #@45
    if-eq p1, v5, :cond_57

    #@47
    if-eq p1, v1, :cond_52

    #@49
    const/4 p2, 0x3

    #@4a
    if-eq p1, p2, :cond_4d

    #@4c
    goto :goto_5b

    #@4d
    .line 432
    :cond_4d
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@4f
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@51
    goto :goto_5b

    #@52
    .line 428
    :cond_52
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@54
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@56
    goto :goto_5b

    #@57
    .line 424
    :cond_57
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@59
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@5b
    :cond_5b
    :goto_5b
    return-void

    #@5c
    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    #@5d
    .line 357
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@5f
    .line 358
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    #@61
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_6a

    #@67
    .line 359
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    #@69
    goto :goto_6c

    #@6a
    .line 360
    :cond_6a
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    #@6c
    .line 361
    :goto_6c
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@6e
    .line 362
    iget v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@70
    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    #@73
    move-result p1

    #@74
    if-nez p1, :cond_b2

    #@76
    .line 364
    new-instance p1, Ljava/lang/ref/WeakReference;

    #@78
    iget-object v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@7a
    invoke-direct {p1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@7d
    .line 365
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    #@7f
    invoke-direct {v8, p0, v6, v7, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    #@82
    .line 384
    :try_start_82
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@84
    invoke-virtual {p2, v0, p1, v8}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    #@87
    move-result-object p1

    #@88
    if-eqz p1, :cond_a9

    #@8a
    .line 386
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8c
    if-lt v6, v4, :cond_a7

    #@8e
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@90
    if-eq v6, v2, :cond_a7

    #@92
    .line 389
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@95
    move-result-object p1

    #@96
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@98
    iget v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@9a
    and-int/2addr v7, v1

    #@9b
    if-eqz v7, :cond_9f

    #@9d
    move v7, v5

    #@9e
    goto :goto_a0

    #@9f
    :cond_9f
    move v7, v3

    #@a0
    .line 388
    :goto_a0
    invoke-static {p1, v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@a3
    move-result-object p1

    #@a4
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@a6
    goto :goto_a9

    #@a7
    .line 392
    :cond_a7
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@a9
    .line 396
    :cond_a9
    :goto_a9
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@ab
    if-nez p1, :cond_af

    #@ad
    move p1, v5

    #@ae
    goto :goto_b0

    #@af
    :cond_af
    move p1, v3

    #@b0
    :goto_b0
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_b2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_82 .. :try_end_b2} :catch_b2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_82 .. :try_end_b2} :catch_b2

    #@b2
    .line 401
    :catch_b2
    :cond_b2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@b4
    if-nez p1, :cond_df

    #@b6
    .line 403
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@b9
    move-result-object p1

    #@ba
    if-eqz p1, :cond_df

    #@bc
    .line 405
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@be
    if-lt p2, v4, :cond_d7

    #@c0
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@c2
    if-eq p2, v2, :cond_d7

    #@c4
    .line 408
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@c7
    move-result-object p1

    #@c8
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@ca
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@cc
    and-int/2addr v0, v1

    #@cd
    if-eqz v0, :cond_d0

    #@cf
    move v3, v5

    #@d0
    .line 407
    :cond_d0
    invoke-static {p1, p2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@d3
    move-result-object p1

    #@d4
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@d6
    goto :goto_df

    #@d7
    .line 411
    :cond_d7
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@d9
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@dc
    move-result-object p1

    #@dd
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@df
    :cond_df
    :goto_df
    return-void
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .registers 6

    #@0
    .line 526
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    if-nez v0, :cond_12

    #@6
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    #@8
    if-nez v0, :cond_12

    #@a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    #@c
    if-nez v0, :cond_12

    #@e
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    #@10
    if-eqz v0, :cond_36

    #@12
    .line 528
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    .line 529
    aget-object v3, v0, v2

    #@1a
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    #@1c
    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    #@1f
    const/4 v3, 0x1

    #@20
    .line 530
    aget-object v3, v0, v3

    #@22
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    #@24
    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    #@27
    .line 531
    aget-object v3, v0, v1

    #@29
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    #@2b
    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    #@2e
    const/4 v3, 0x3

    #@2f
    .line 532
    aget-object v0, v0, v3

    #@31
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    #@33
    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    #@36
    .line 535
    :cond_36
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    #@38
    if-nez v0, :cond_3e

    #@3a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    #@3c
    if-eqz v0, :cond_52

    #@3e
    .line 536
    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@40
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@43
    move-result-object v0

    #@44
    .line 537
    aget-object v2, v0, v2

    #@46
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    #@48
    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    #@4b
    .line 538
    aget-object v0, v0, v1

    #@4d
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    #@4f
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    #@52
    :cond_52
    return-void
.end method

.method autoSizeText()V
    .registers 2

    #@0
    .line 582
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    #@5
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2

    #@0
    .line 627
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2

    #@0
    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2

    #@0
    .line 619
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2

    #@0
    .line 631
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2

    #@0
    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 636
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0
.end method

.method getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 650
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0
.end method

.method isAutoSizeEnabled()Z
    .registers 2

    #@0
    .line 588
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 19

    #@0
    move-object/from16 v7, p0

    #@2
    move-object/from16 v8, p1

    #@4
    move/from16 v9, p2

    #@6
    .line 87
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v10

    #@c
    .line 88
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    #@f
    move-result-object v11

    #@10
    .line 91
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    #@12
    const/4 v12, 0x0

    #@13
    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@16
    move-result-object v13

    #@17
    .line 93
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@19
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    #@1f
    .line 94
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@22
    move-result-object v4

    #@23
    const/4 v6, 0x0

    #@24
    move-object/from16 v3, p1

    #@26
    move/from16 v5, p2

    #@28
    .line 93
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@2b
    .line 97
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    #@2d
    const/4 v14, -0x1

    #@2e
    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@31
    move-result v0

    #@32
    .line 99
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    #@34
    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_46

    #@3a
    .line 100
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    #@3c
    .line 101
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@3f
    move-result v1

    #@40
    .line 100
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    #@43
    move-result-object v1

    #@44
    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    #@46
    .line 103
    :cond_46
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    #@48
    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_5a

    #@4e
    .line 104
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    #@50
    .line 105
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@53
    move-result v1

    #@54
    .line 104
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    #@57
    move-result-object v1

    #@58
    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    #@5a
    .line 107
    :cond_5a
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    #@5c
    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_6e

    #@62
    .line 108
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    #@64
    .line 109
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@67
    move-result v1

    #@68
    .line 108
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    #@6b
    move-result-object v1

    #@6c
    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    #@6e
    .line 111
    :cond_6e
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    #@70
    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_82

    #@76
    .line 112
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    #@78
    .line 113
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@7b
    move-result v1

    #@7c
    .line 112
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    #@7f
    move-result-object v1

    #@80
    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    #@82
    .line 117
    :cond_82
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    #@84
    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_96

    #@8a
    .line 118
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    #@8c
    .line 119
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@8f
    move-result v1

    #@90
    .line 118
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    #@93
    move-result-object v1

    #@94
    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    #@96
    .line 121
    :cond_96
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    #@98
    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@9b
    move-result v1

    #@9c
    if-eqz v1, :cond_aa

    #@9e
    .line 122
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    #@a0
    .line 123
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@a3
    move-result v1

    #@a4
    .line 122
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    #@a7
    move-result-object v1

    #@a8
    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    #@aa
    .line 127
    :cond_aa
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@ad
    .line 132
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@af
    .line 133
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@b2
    move-result-object v1

    #@b3
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    #@b5
    const/4 v2, 0x1

    #@b6
    const/4 v13, 0x0

    #@b7
    if-eq v0, v14, :cond_fa

    #@b9
    .line 144
    sget-object v3, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    #@bb
    invoke-static {v10, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    #@be
    move-result-object v0

    #@bf
    if-nez v1, :cond_d1

    #@c1
    .line 145
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    #@c3
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@c6
    move-result v3

    #@c7
    if-eqz v3, :cond_d1

    #@c9
    .line 147
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    #@cb
    invoke-virtual {v0, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@ce
    move-result v3

    #@cf
    move v4, v2

    #@d0
    goto :goto_d3

    #@d1
    :cond_d1
    move v3, v12

    #@d2
    move v4, v3

    #@d3
    .line 150
    :goto_d3
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    #@d6
    .line 166
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    #@d8
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@db
    move-result v5

    #@dc
    if-eqz v5, :cond_e5

    #@de
    .line 167
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    #@e0
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@e3
    move-result-object v5

    #@e4
    goto :goto_e6

    #@e5
    :cond_e5
    move-object v5, v13

    #@e6
    .line 169
    :goto_e6
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    #@e8
    .line 170
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@eb
    move-result v6

    #@ec
    if-eqz v6, :cond_f5

    #@ee
    .line 171
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    #@f0
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@f3
    move-result-object v6

    #@f4
    goto :goto_f6

    #@f5
    :cond_f5
    move-object v6, v13

    #@f6
    .line 173
    :goto_f6
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@f9
    goto :goto_fe

    #@fa
    :cond_fa
    move v3, v12

    #@fb
    move v4, v3

    #@fc
    move-object v5, v13

    #@fd
    move-object v6, v5

    #@fe
    .line 177
    :goto_fe
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    #@100
    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@103
    move-result-object v0

    #@104
    if-nez v1, :cond_115

    #@106
    .line 179
    sget v15, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    #@108
    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@10b
    move-result v15

    #@10c
    if-eqz v15, :cond_115

    #@10e
    .line 181
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    #@110
    invoke-virtual {v0, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@113
    move-result v3

    #@114
    goto :goto_116

    #@115
    :cond_115
    move v2, v4

    #@116
    .line 198
    :goto_116
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    #@118
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@11b
    move-result v4

    #@11c
    if-eqz v4, :cond_124

    #@11e
    .line 199
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    #@120
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@123
    move-result-object v5

    #@124
    .line 202
    :cond_124
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    #@126
    .line 203
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@129
    move-result v4

    #@12a
    if-eqz v4, :cond_132

    #@12c
    .line 204
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    #@12e
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@131
    move-result-object v6

    #@132
    .line 207
    :cond_132
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #@134
    const/16 v15, 0x1c

    #@136
    if-lt v4, v15, :cond_14e

    #@138
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@13a
    .line 208
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@13d
    move-result v4

    #@13e
    if-eqz v4, :cond_14e

    #@140
    .line 209
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@142
    invoke-virtual {v0, v4, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@145
    move-result v4

    #@146
    if-nez v4, :cond_14e

    #@148
    .line 210
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@14a
    const/4 v15, 0x0

    #@14b
    invoke-virtual {v4, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    #@14e
    .line 214
    :cond_14e
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    #@151
    .line 215
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@154
    if-nez v1, :cond_15b

    #@156
    if-eqz v2, :cond_15b

    #@158
    .line 227
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    #@15b
    .line 229
    :cond_15b
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@15d
    if-eqz v0, :cond_170

    #@15f
    .line 230
    iget v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    #@161
    if-ne v1, v14, :cond_16b

    #@163
    .line 231
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@165
    iget v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@167
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #@16a
    goto :goto_170

    #@16b
    .line 233
    :cond_16b
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@16d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@170
    :cond_170
    :goto_170
    if-eqz v6, :cond_177

    #@172
    .line 237
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@174
    invoke-static {v0, v6}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z

    #@177
    :cond_177
    if-eqz v5, :cond_182

    #@179
    .line 241
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@17b
    invoke-static {v5}, Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    #@17e
    move-result-object v1

    #@17f
    invoke-static {v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;->setTextLocales(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    #@182
    .line 249
    :cond_182
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@184
    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    #@187
    .line 251
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    #@189
    if-eqz v0, :cond_1c6

    #@18b
    .line 253
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@18d
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    #@190
    move-result v0

    #@191
    if-eqz v0, :cond_1c6

    #@193
    .line 255
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@195
    .line 256
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    #@198
    move-result-object v0

    #@199
    .line 257
    array-length v1, v0

    #@19a
    if-lez v1, :cond_1c6

    #@19c
    .line 258
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@19e
    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->getAutoSizeStepGranularity(Landroid/widget/TextView;)I

    #@1a1
    move-result v1

    #@1a2
    int-to-float v1, v1

    #@1a3
    const/high16 v2, -0x40800000    # -1.0f

    #@1a5
    cmpl-float v1, v1, v2

    #@1a7
    if-eqz v1, :cond_1c1

    #@1a9
    .line 262
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@1ab
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@1ad
    .line 263
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    #@1b0
    move-result v1

    #@1b1
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@1b3
    .line 264
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    #@1b6
    move-result v2

    #@1b7
    iget-object v3, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@1b9
    .line 265
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    #@1bc
    move-result v3

    #@1bd
    .line 262
    invoke-static {v0, v1, v2, v3, v12}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    #@1c0
    goto :goto_1c6

    #@1c1
    .line 268
    :cond_1c1
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@1c3
    invoke-static {v1, v0, v12}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V

    #@1c6
    .line 276
    :cond_1c6
    :goto_1c6
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    #@1c8
    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    #@1cb
    move-result-object v8

    #@1cc
    .line 281
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    #@1ce
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@1d1
    move-result v0

    #@1d2
    if-eq v0, v14, :cond_1da

    #@1d4
    .line 284
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@1d7
    move-result-object v0

    #@1d8
    move-object v1, v0

    #@1d9
    goto :goto_1db

    #@1da
    :cond_1da
    move-object v1, v13

    #@1db
    .line 286
    :goto_1db
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    #@1dd
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@1e0
    move-result v0

    #@1e1
    if-eq v0, v14, :cond_1e9

    #@1e3
    .line 289
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@1e6
    move-result-object v0

    #@1e7
    move-object v2, v0

    #@1e8
    goto :goto_1ea

    #@1e9
    :cond_1e9
    move-object v2, v13

    #@1ea
    .line 291
    :goto_1ea
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    #@1ec
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@1ef
    move-result v0

    #@1f0
    if-eq v0, v14, :cond_1f8

    #@1f2
    .line 294
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@1f5
    move-result-object v0

    #@1f6
    move-object v3, v0

    #@1f7
    goto :goto_1f9

    #@1f8
    :cond_1f8
    move-object v3, v13

    #@1f9
    .line 296
    :goto_1f9
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    #@1fb
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@1fe
    move-result v0

    #@1ff
    if-eq v0, v14, :cond_207

    #@201
    .line 299
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@204
    move-result-object v0

    #@205
    move-object v4, v0

    #@206
    goto :goto_208

    #@207
    :cond_207
    move-object v4, v13

    #@208
    .line 301
    :goto_208
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    #@20a
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@20d
    move-result v0

    #@20e
    if-eq v0, v14, :cond_216

    #@210
    .line 304
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@213
    move-result-object v0

    #@214
    move-object v5, v0

    #@215
    goto :goto_217

    #@216
    :cond_216
    move-object v5, v13

    #@217
    .line 306
    :goto_217
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    #@219
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@21c
    move-result v0

    #@21d
    if-eq v0, v14, :cond_225

    #@21f
    .line 309
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@222
    move-result-object v0

    #@223
    move-object v6, v0

    #@224
    goto :goto_226

    #@225
    :cond_225
    move-object v6, v13

    #@226
    :goto_226
    move-object/from16 v0, p0

    #@228
    .line 311
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@22b
    .line 314
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    #@22d
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@230
    move-result v0

    #@231
    if-eqz v0, :cond_23e

    #@233
    .line 315
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    #@235
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@238
    move-result-object v0

    #@239
    .line 317
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@23b
    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    #@23e
    .line 319
    :cond_23e
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    #@240
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@243
    move-result v0

    #@244
    if-eqz v0, :cond_255

    #@246
    .line 320
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    #@248
    .line 321
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@24b
    move-result v0

    #@24c
    .line 320
    invoke-static {v0, v13}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@24f
    move-result-object v0

    #@250
    .line 322
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@252
    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    #@255
    .line 325
    :cond_255
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    #@257
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@25a
    move-result v0

    #@25b
    .line 327
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    #@25d
    invoke-virtual {v8, v1, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@260
    move-result v1

    #@261
    .line 329
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    #@263
    invoke-virtual {v8, v2, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@266
    move-result v2

    #@267
    .line 332
    invoke-virtual {v8}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@26a
    if-eq v0, v14, :cond_271

    #@26c
    .line 334
    iget-object v3, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@26e
    invoke-static {v3, v0}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    #@271
    :cond_271
    if-eq v1, v14, :cond_278

    #@273
    .line 337
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@275
    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    #@278
    :cond_278
    if-eq v2, v14, :cond_27f

    #@27a
    .line 340
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@27c
    invoke-static {v0, v2}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    #@27f
    :cond_27f
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    #@0
    .line 440
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    #@2
    if-eqz v0, :cond_24

    #@4
    .line 441
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@6
    .line 442
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Landroid/widget/TextView;

    #@c
    if-eqz p1, :cond_24

    #@e
    .line 444
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1f

    #@14
    .line 445
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@16
    .line 446
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextHelper$2;

    #@18
    invoke-direct {v1, p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextHelper$2;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    #@1b
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    #@1e
    goto :goto_24

    #@1f
    .line 453
    :cond_1f
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@21
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #@24
    :cond_24
    :goto_24
    return-void
.end method

.method onLayout(ZIIII)V
    .registers 6

    #@0
    .line 564
    sget-boolean p1, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    #@2
    if-nez p1, :cond_7

    #@4
    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    #@7
    :cond_7
    return-void
.end method

.method onSetCompoundDrawables()V
    .registers 1

    #@0
    .line 522
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    #@3
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .registers 6

    #@0
    .line 460
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    #@2
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    #@5
    move-result-object p2

    #@6
    .line 462
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    #@8
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    if-eqz v0, :cond_18

    #@f
    .line 467
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    #@11
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@14
    move-result v0

    #@15
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    #@18
    .line 495
    :cond_18
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@1a
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2f

    #@20
    .line 496
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@22
    const/4 v2, -0x1

    #@23
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_2f

    #@29
    .line 497
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@2f
    .line 501
    :cond_2f
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    #@32
    .line 503
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    #@34
    .line 504
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@37
    move-result p1

    #@38
    if-eqz p1, :cond_47

    #@3a
    .line 505
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    #@3c
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    if-eqz p1, :cond_47

    #@42
    .line 508
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@44
    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z

    #@47
    .line 511
    :cond_47
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@4a
    .line 512
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    #@4c
    if-eqz p1, :cond_55

    #@4e
    .line 513
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@50
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    #@52
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #@55
    :cond_55
    return-void
.end method

.method populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    #@0
    .line 721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-ge v0, v1, :cond_f

    #@6
    if-eqz p2, :cond_f

    #@8
    .line 722
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@b
    move-result-object p1

    #@c
    invoke-static {p3, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    #@f
    :cond_f
    return-void
.end method

.method setAllCaps(Z)V
    .registers 3

    #@0
    .line 518
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    #@5
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    #@5
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 610
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    #@5
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    #@0
    .line 596
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    #@5
    return-void
.end method

.method setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 640
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 641
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 643
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 644
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@11
    if-eqz p1, :cond_15

    #@13
    const/4 p1, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@18
    .line 645
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    #@1b
    return-void
.end method

.method setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 655
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 657
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    #@11
    if-eqz p1, :cond_15

    #@13
    const/4 p1, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@18
    .line 659
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    #@1b
    return-void
.end method

.method setTextSize(IF)V
    .registers 4

    #@0
    .line 572
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    #@2
    if-nez v0, :cond_d

    #@4
    .line 573
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_d

    #@a
    .line 574
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    #@d
    :cond_d
    return-void
.end method

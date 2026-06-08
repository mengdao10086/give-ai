.class public Landroidx/appcompat/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatSpinner$Api16Impl;,
        Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;,
        Landroidx/appcompat/widget/AppCompatSpinner$Api23Impl;,
        Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;,
        Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;,
        Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;,
        Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;,
        Landroidx/appcompat/widget/AppCompatSpinner$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field mDropDownWidth:I

.field private mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

.field private mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


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
    const v2, 0x10102f1

    #@7
    aput v2, v0, v1

    #@9
    .line 86
    sput-object v0, Landroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 123
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 139
    sget v1, Landroidx/appcompat/R$attr;->spinnerStyle:I

    #@3
    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 151
    sget v0, Landroidx/appcompat/R$attr;->spinnerStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    .line 167
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    .line 187
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .registers 12

    #@0
    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 113
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@a
    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    invoke-static {p0, v0}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    #@11
    .line 220
    sget-object v0, Landroidx/appcompat/R$styleable;->Spinner:[I

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@17
    move-result-object v0

    #@18
    .line 223
    new-instance v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@1a
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    #@1d
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@1f
    if-eqz p5, :cond_29

    #@21
    .line 226
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    #@23
    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    #@26
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    #@28
    goto :goto_3b

    #@29
    .line 228
    :cond_29
    sget p5, Landroidx/appcompat/R$styleable;->Spinner_popupTheme:I

    #@2b
    invoke-virtual {v0, p5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@2e
    move-result p5

    #@2f
    if-eqz p5, :cond_39

    #@31
    .line 230
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    #@33
    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@36
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    #@38
    goto :goto_3b

    #@39
    .line 232
    :cond_39
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    #@3b
    :goto_3b
    const/4 p5, -0x1

    #@3c
    const/4 v2, 0x0

    #@3d
    if-ne p4, p5, :cond_6d

    #@3f
    .line 239
    :try_start_3f
    sget-object p5, Landroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    #@41
    invoke-virtual {p1, p2, p5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@44
    move-result-object p5
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_45} :catch_59
    .catchall {:try_start_3f .. :try_end_45} :catchall_57

    #@45
    .line 241
    :try_start_45
    invoke-virtual {p5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_4f

    #@4b
    .line 242
    invoke-virtual {p5, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4e
    move-result p4
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4f} :catch_55
    .catchall {:try_start_45 .. :try_end_4f} :catchall_65

    #@4f
    :cond_4f
    if-eqz p5, :cond_6d

    #@51
    .line 248
    :goto_51
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    #@54
    goto :goto_6d

    #@55
    :catch_55
    move-exception v3

    #@56
    goto :goto_5b

    #@57
    :catchall_57
    move-exception p1

    #@58
    goto :goto_67

    #@59
    :catch_59
    move-exception v3

    #@5a
    move-object p5, v2

    #@5b
    :goto_5b
    :try_start_5b
    const-string v4, "AppCompatSpinner"

    #@5d
    const-string v5, "Could not read android:spinnerMode"

    #@5f
    .line 245
    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_65

    #@62
    if-eqz p5, :cond_6d

    #@64
    goto :goto_51

    #@65
    :catchall_65
    move-exception p1

    #@66
    move-object v2, p5

    #@67
    :goto_67
    if-eqz v2, :cond_6c

    #@69
    .line 248
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@6c
    .line 250
    :cond_6c
    throw p1

    #@6d
    :cond_6d
    :goto_6d
    const/4 p5, 0x1

    #@6e
    if-eqz p4, :cond_aa

    #@70
    if-eq p4, p5, :cond_73

    #@72
    goto :goto_ba

    #@73
    .line 260
    :cond_73
    new-instance p4, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    #@75
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    #@77
    invoke-direct {p4, p0, v3, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@7a
    .line 261
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    #@7c
    sget-object v4, Landroidx/appcompat/R$styleable;->Spinner:[I

    #@7e
    invoke-static {v3, p2, v4, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@81
    move-result-object v1

    #@82
    .line 263
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    #@84
    const/4 v4, -0x2

    #@85
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    #@88
    move-result v3

    #@89
    iput v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    #@8b
    .line 265
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_popupBackground:I

    #@8d
    .line 266
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@90
    move-result-object v3

    #@91
    .line 265
    invoke-virtual {p4, v3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@94
    .line 267
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    #@96
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {p4, v3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    #@9d
    .line 268
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@a0
    .line 270
    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@a2
    .line 271
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$1;

    #@a4
    invoke-direct {v1, p0, p0, p4}, Landroidx/appcompat/widget/AppCompatSpinner$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    #@a7
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    #@a9
    goto :goto_ba

    #@aa
    .line 255
    :cond_aa
    new-instance p4, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;

    #@ac
    invoke-direct {p4, p0}, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    #@af
    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@b1
    .line 256
    sget v1, Landroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    #@b3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    invoke-interface {p4, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    #@ba
    .line 289
    :goto_ba
    sget p4, Landroidx/appcompat/R$styleable;->Spinner_android_entries:I

    #@bc
    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/TintTypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@bf
    move-result-object p4

    #@c0
    if-eqz p4, :cond_d2

    #@c2
    .line 291
    new-instance v1, Landroid/widget/ArrayAdapter;

    #@c4
    const v3, 0x1090008

    #@c7
    invoke-direct {v1, p1, v3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@ca
    .line 293
    sget p1, Landroidx/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    #@cc
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    #@cf
    .line 294
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@d2
    .line 297
    :cond_d2
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@d5
    .line 299
    iput-boolean p5, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    #@d7
    .line 303
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    #@d9
    if-eqz p1, :cond_e0

    #@db
    .line 304
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@de
    .line 305
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    #@e0
    .line 308
    :cond_e0
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@e2
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    #@e5
    return-void
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 573
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    #@7
    move-result v1

    #@8
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@b
    move-result v1

    #@c
    .line 575
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    #@f
    move-result v2

    #@10
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13
    move-result v2

    #@14
    .line 579
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    #@17
    move-result v3

    #@18
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v3

    #@1c
    .line 580
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v5, v3, 0xf

    #@22
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@25
    move-result v4

    #@26
    sub-int v5, v4, v3

    #@28
    rsub-int/lit8 v5, v5, 0xf

    #@2a
    sub-int/2addr v3, v5

    #@2b
    .line 582
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v3

    #@2f
    const/4 v5, 0x0

    #@30
    move v6, v3

    #@31
    move-object v7, v5

    #@32
    move v3, v0

    #@33
    :goto_33
    if-ge v6, v4, :cond_5e

    #@35
    .line 584
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    #@38
    move-result v8

    #@39
    if-eq v8, v0, :cond_3d

    #@3b
    move-object v7, v5

    #@3c
    move v0, v8

    #@3d
    .line 589
    :cond_3d
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@40
    move-result-object v7

    #@41
    .line 590
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@44
    move-result-object v8

    #@45
    if-nez v8, :cond_50

    #@47
    .line 591
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    #@49
    const/4 v9, -0x2

    #@4a
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@4d
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@50
    .line 595
    :cond_50
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    #@53
    .line 596
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    #@56
    move-result v8

    #@57
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    #@5a
    move-result v3

    #@5b
    add-int/lit8 v6, v6, 0x1

    #@5d
    goto :goto_33

    #@5e
    :cond_5e
    if-eqz p2, :cond_6f

    #@60
    .line 601
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@62
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@65
    .line 602
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@67
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@69
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@6b
    iget p2, p2, Landroid/graphics/Rect;->right:I

    #@6d
    add-int/2addr p1, p2

    #@6e
    add-int/2addr v3, p1

    #@6f
    :cond_6f
    return v3
.end method

.method protected drawableStateChanged()V
    .registers 2

    #@0
    .line 558
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    #@3
    .line 559
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 560
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    #@a
    :cond_a
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    #@0
    .line 380
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 381
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getHorizontalOffset()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 383
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    #@0
    .line 354
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 355
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getVerticalOffset()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 357
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    #@0
    .line 399
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 400
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    #@6
    return v0

    #@7
    .line 402
    :cond_7
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
    .registers 2

    #@0
    .line 610
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 335
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 336
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 338
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 316
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 479
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    goto :goto_d

    #@9
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 523
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 524
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

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

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 552
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 553
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

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

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 426
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    #@3
    .line 428
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@5
    if-eqz v0, :cond_12

    #@7
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_12

    #@d
    .line 429
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@f
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->dismiss()V

    #@12
    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    #@0
    .line 443
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    #@3
    .line 445
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@5
    if-eqz p2, :cond_32

    #@7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@a
    move-result p2

    #@b
    const/high16 v0, -0x80000000

    #@d
    if-ne p2, v0, :cond_32

    #@f
    .line 446
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    #@12
    move-result p2

    #@13
    .line 448
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    #@1e
    move-result v0

    #@1f
    .line 447
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@22
    move-result p2

    #@23
    .line 449
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@26
    move-result p1

    #@27
    .line 447
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result p1

    #@2b
    .line 450
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    #@2e
    move-result p2

    #@2f
    .line 447
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    #@32
    :cond_32
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 632
    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    #@2
    .line 634
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@9
    .line 636
    iget-boolean p1, p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    #@b
    if-eqz p1, :cond_1b

    #@d
    .line 637
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object p1

    #@11
    if-eqz p1, :cond_1b

    #@13
    .line 639
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$2;

    #@15
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    #@18
    .line 655
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@1b
    :cond_1b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 624
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    #@2
    .line 625
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 626
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@b
    if-eqz v1, :cond_15

    #@d
    invoke-interface {v1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_15

    #@13
    const/4 v1, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v1, 0x0

    #@16
    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    #@18
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 435
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    return p1

    #@c
    .line 438
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public performClick()Z
    .registers 2

    #@0
    .line 456
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_f

    #@4
    .line 458
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_d

    #@a
    .line 459
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 465
    :cond_f
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    #@0
    .line 81
    check-cast p1, Landroid/widget/SpinnerAdapter;

    #@2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@5
    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    #@0
    .line 411
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 412
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    #@6
    return-void

    #@7
    .line 416
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@a
    .line 418
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@c
    if-eqz v0, :cond_24

    #@e
    .line 419
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    #@10
    if-nez v0, :cond_16

    #@12
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    #@15
    move-result-object v0

    #@16
    .line 420
    :cond_16
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@18
    new-instance v2, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;

    #@1a
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {v2, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    #@21
    invoke-interface {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    #@24
    :cond_24
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 492
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 493
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 494
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    #@0
    .line 484
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    #@3
    .line 485
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 486
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    #@a
    :cond_a
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3

    #@0
    .line 364
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 365
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setHorizontalOriginalOffset(I)V

    #@7
    .line 366
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@9
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setHorizontalOffset(I)V

    #@c
    goto :goto_10

    #@d
    .line 368
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    #@10
    :goto_10
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3

    #@0
    .line 345
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 346
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setVerticalOffset(I)V

    #@7
    goto :goto_b

    #@8
    .line 348
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    #@b
    :goto_b
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 3

    #@0
    .line 390
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 391
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    #@6
    goto :goto_a

    #@7
    .line 393
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    #@a
    :goto_a
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 321
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 322
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7
    goto :goto_b

    #@8
    .line 324
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    :goto_b
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3

    #@0
    .line 330
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 470
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 471
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    #@7
    goto :goto_b

    #@8
    .line 473
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    #@b
    :goto_b
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 508
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 509
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@7
    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 537
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 538
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@7
    :cond_7
    return-void
.end method

.method showPopup()V
    .registers 4

    #@0
    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@2
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->getTextDirection(Landroid/view/View;)I

    #@5
    move-result v1

    #@6
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->getTextAlignment(Landroid/view/View;)I

    #@9
    move-result v2

    #@a
    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    #@d
    return-void
.end method

.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"

# interfaces
.implements Landroidx/appcompat/widget/EmojiCompatConfigurationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SwitchCompat$Api18Impl;,
        Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/appcompat/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

.field private mEmojiCompatInitCallback:Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

.field private mEnforceSwitchWidth:Z

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOffTransformed:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextOnTransformed:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 120
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat$1;

    #@2
    const-class v1, Ljava/lang/Float;

    #@4
    const-string v2, "thumbPos"

    #@6
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/SwitchCompat$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@9
    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    #@b
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [I

    #@e
    const/4 v1, 0x0

    #@f
    const v2, 0x10100a0

    #@12
    aput v2, v0, v1

    #@14
    .line 212
    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    #@16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 222
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 233
    sget v0, Landroidx/appcompat/R$attr;->switchStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    #@0
    .line 247
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 134
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@6
    .line 135
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    const/4 v1, 0x0

    #@9
    .line 136
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    #@b
    .line 137
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    #@d
    .line 140
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 141
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@11
    .line 142
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    #@13
    .line 143
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    #@15
    .line 159
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 194
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mEnforceSwitchWidth:Z

    #@1e
    .line 209
    new-instance v3, Landroid/graphics/Rect;

    #@20
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@25
    .line 249
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    #@28
    move-result-object v3

    #@29
    invoke-static {p0, v3}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    #@2c
    .line 251
    new-instance v3, Landroid/text/TextPaint;

    #@2e
    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(I)V

    #@31
    iput-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@33
    .line 253
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object v4

    #@37
    .line 254
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3a
    move-result-object v4

    #@3b
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    #@3d
    iput v4, v3, Landroid/text/TextPaint;->density:F

    #@3f
    .line 256
    sget-object v3, Landroidx/appcompat/R$styleable;->SwitchCompat:[I

    #@41
    invoke-static {p1, p2, v3, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@44
    move-result-object v3

    #@45
    .line 258
    sget-object v6, Landroidx/appcompat/R$styleable;->SwitchCompat:[I

    #@47
    .line 260
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@4a
    move-result-object v8

    #@4b
    const/4 v10, 0x0

    #@4c
    move-object v4, p0

    #@4d
    move-object v5, p1

    #@4e
    move-object v7, p2

    #@4f
    move v9, p3

    #@50
    .line 258
    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@53
    .line 262
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    #@55
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@58
    move-result-object v4

    #@59
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@5b
    if-eqz v4, :cond_60

    #@5d
    .line 264
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@60
    .line 266
    :cond_60
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_track:I

    #@62
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@65
    move-result-object v4

    #@66
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@68
    if-eqz v4, :cond_6d

    #@6a
    .line 268
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@6d
    .line 270
    :cond_6d
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    #@6f
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@72
    move-result-object v4

    #@73
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    #@76
    .line 271
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    #@78
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@7b
    move-result-object v4

    #@7c
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    #@7f
    .line 272
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_showText:I

    #@81
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@84
    move-result v4

    #@85
    iput-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@87
    .line 273
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    #@89
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@8c
    move-result v4

    #@8d
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    #@8f
    .line 275
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    #@91
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@94
    move-result v4

    #@95
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    #@97
    .line 277
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    #@99
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@9c
    move-result v4

    #@9d
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    #@9f
    .line 279
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    #@a1
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@a4
    move-result v4

    #@a5
    iput-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    #@a7
    .line 281
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTint:I

    #@a9
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@ac
    move-result-object v4

    #@ad
    if-eqz v4, :cond_b3

    #@af
    .line 283
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@b1
    .line 284
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    #@b3
    .line 286
    :cond_b3
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I

    #@b5
    const/4 v5, -0x1

    #@b6
    .line 287
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@b9
    move-result v4

    #@ba
    .line 286
    invoke-static {v4, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@bd
    move-result-object v4

    #@be
    .line 288
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c0
    if-eq v6, v4, :cond_c6

    #@c2
    .line 289
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c4
    .line 290
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    #@c6
    .line 292
    :cond_c6
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    #@c8
    if-nez v4, :cond_ce

    #@ca
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    #@cc
    if-eqz v4, :cond_d1

    #@ce
    .line 293
    :cond_ce
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    #@d1
    .line 296
    :cond_d1
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_trackTint:I

    #@d3
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@d6
    move-result-object v4

    #@d7
    if-eqz v4, :cond_dd

    #@d9
    .line 298
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@db
    .line 299
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    #@dd
    .line 301
    :cond_dd
    sget v4, Landroidx/appcompat/R$styleable;->SwitchCompat_trackTintMode:I

    #@df
    .line 302
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@e2
    move-result v4

    #@e3
    .line 301
    invoke-static {v4, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@e6
    move-result-object v0

    #@e7
    .line 303
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e9
    if-eq v4, v0, :cond_ef

    #@eb
    .line 304
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@ed
    .line 305
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    #@ef
    .line 307
    :cond_ef
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    #@f1
    if-nez v0, :cond_f7

    #@f3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    #@f5
    if-eqz v0, :cond_fa

    #@f7
    .line 308
    :cond_f7
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    #@fa
    .line 311
    :cond_fa
    sget v0, Landroidx/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    #@fc
    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@ff
    move-result v0

    #@100
    if-eqz v0, :cond_105

    #@102
    .line 314
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    #@105
    .line 317
    :cond_105
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextHelper;

    #@107
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    #@10a
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    #@10c
    .line 318
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    #@10f
    .line 320
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@112
    .line 322
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@115
    move-result-object p1

    #@116
    .line 323
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@119
    move-result v0

    #@11a
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    #@11c
    .line 324
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@11f
    move-result p1

    #@120
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    #@122
    .line 326
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@125
    move-result-object p1

    #@126
    .line 327
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    #@129
    .line 330
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->refreshDrawableState()V

    #@12c
    .line 331
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@12f
    move-result p1

    #@130
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    #@133
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 6

    #@0
    if-eqz p1, :cond_5

    #@2
    const/high16 p1, 0x3f800000    # 1.0f

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 p1, 0x0

    #@6
    .line 1140
    :goto_6
    sget-object v0, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    #@8
    const/4 v1, 0x1

    #@9
    new-array v2, v1, [F

    #@b
    const/4 v3, 0x0

    #@c
    aput p1, v2, v3

    #@e
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@11
    move-result-object p1

    #@12
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@14
    const-wide/16 v2, 0xfa

    #@16
    .line 1141
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@19
    .line 1143
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@1b
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SwitchCompat$Api18Impl;->setAutoCancel(Landroid/animation/ObjectAnimator;Z)V

    #@1e
    .line 1145
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@20
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    #@23
    return-void
.end method

.method private applyThumbTint()V
    .registers 3

    #@0
    .line 753
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3b

    #@4
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    #@6
    if-nez v1, :cond_c

    #@8
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    #@a
    if-eqz v1, :cond_3b

    #@c
    .line 754
    :cond_c
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    .line 756
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    #@18
    if-eqz v1, :cond_1f

    #@1a
    .line 757
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@1f
    .line 760
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    #@21
    if-eqz v0, :cond_2a

    #@23
    .line 761
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 766
    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3b

    #@32
    .line 767
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    :cond_3b
    return-void
.end method

.method private applyTrackTint()V
    .registers 3

    #@0
    .line 624
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3b

    #@4
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    #@6
    if-nez v1, :cond_c

    #@8
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    #@a
    if-eqz v1, :cond_3b

    #@c
    .line 625
    :cond_c
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    .line 627
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    #@18
    if-eqz v1, :cond_1f

    #@1a
    .line 628
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@1f
    .line 631
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    #@21
    if-eqz v0, :cond_2a

    #@23
    .line 632
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 637
    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3b

    #@32
    .line 638
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    :cond_3b
    return-void
.end method

.method private cancelPositionAnimator()V
    .registers 2

    #@0
    .line 1149
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1150
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@7
    :cond_7
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 3

    #@0
    .line 1099
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x3

    #@5
    .line 1100
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@8
    .line 1101
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    .line 1102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@e
    return-void
.end method

.method private static constrain(FFF)F
    .registers 4

    #@0
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_6

    #@4
    move p0, p1

    #@5
    goto :goto_b

    #@6
    :cond_6
    cmpl-float p1, p0, p2

    #@8
    if-lez p1, :cond_b

    #@a
    move p0, p2

    #@b
    :cond_b
    :goto_b
    return p0
.end method

.method private doTransformForOnOffText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 876
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    #@6
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_10

    #@c
    .line 878
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    #@f
    move-result-object p1

    #@10
    :cond_10
    return-object p1
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;
    .registers 2

    #@0
    .line 1614
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1615
    new-instance v0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@6
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;-><init>(Landroid/widget/TextView;)V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@b
    .line 1617
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@d
    return-object v0
.end method

.method private getTargetCheckedState()Z
    .registers 3

    #@0
    .line 1155
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    #@2
    const/high16 v1, 0x3f000000    # 0.5f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-lez v0, :cond_a

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

.method private getThumbOffset()I
    .registers 3

    #@0
    .line 1422
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    const/high16 v0, 0x3f800000    # 1.0f

    #@8
    .line 1423
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    #@a
    sub-float/2addr v0, v1

    #@b
    goto :goto_e

    #@c
    .line 1425
    :cond_c
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    #@e
    .line 1427
    :goto_e
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    #@11
    move-result v1

    #@12
    int-to-float v1, v1

    #@13
    mul-float/2addr v0, v1

    #@14
    const/high16 v1, 0x3f000000    # 0.5f

    #@16
    add-float/2addr v0, v1

    #@17
    float-to-int v0, v0

    #@18
    return v0
.end method

.method private getThumbScrollRange()I
    .registers 5

    #@0
    .line 1431
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_26

    #@4
    .line 1432
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@6
    .line 1433
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@9
    .line 1436
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v0, :cond_12

    #@d
    .line 1437
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    #@10
    move-result-object v0

    #@11
    goto :goto_14

    #@12
    .line 1439
    :cond_12
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    #@14
    .line 1442
    :goto_14
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    #@16
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    #@18
    sub-int/2addr v2, v3

    #@19
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@1b
    sub-int/2addr v2, v3

    #@1c
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@1e
    sub-int/2addr v2, v1

    #@1f
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@21
    sub-int/2addr v2, v1

    #@22
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@24
    sub-int/2addr v2, v0

    #@25
    return v2

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method private hitThumb(FF)Z
    .registers 9

    #@0
    .line 1003
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 1008
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    #@9
    move-result v0

    #@a
    .line 1010
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@11
    .line 1011
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    #@13
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    #@15
    sub-int/2addr v2, v3

    #@16
    .line 1012
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    #@18
    add-int/2addr v4, v0

    #@19
    sub-int/2addr v4, v3

    #@1a
    .line 1013
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    #@1c
    add-int/2addr v0, v4

    #@1d
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@1f
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@21
    add-int/2addr v0, v3

    #@22
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@24
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@26
    add-int/2addr v0, v3

    #@27
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    #@29
    add-int/2addr v0, v3

    #@2a
    .line 1015
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    #@2c
    add-int/2addr v5, v3

    #@2d
    int-to-float v3, v4

    #@2e
    cmpl-float v3, p1, v3

    #@30
    if-lez v3, :cond_42

    #@32
    int-to-float v0, v0

    #@33
    cmpg-float p1, p1, v0

    #@35
    if-gez p1, :cond_42

    #@37
    int-to-float p1, v2

    #@38
    cmpl-float p1, p2, p1

    #@3a
    if-lez p1, :cond_42

    #@3c
    int-to-float p1, v5

    #@3d
    cmpg-float p1, p2, p1

    #@3f
    if-gez p1, :cond_42

    #@41
    const/4 v1, 0x1

    #@42
    :cond_42
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 11

    #@0
    .line 993
    new-instance v8, Landroid/text/StaticLayout;

    #@2
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@4
    if-eqz p1, :cond_11

    #@6
    .line 995
    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    #@9
    move-result v0

    #@a
    float-to-double v0, v0

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int v0, v0

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    move v3, v0

    #@13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@15
    const/high16 v5, 0x3f800000    # 1.0f

    #@17
    const/4 v6, 0x0

    #@18
    const/4 v7, 0x1

    #@19
    move-object v0, v8

    #@1a
    move-object v1, p1

    #@1b
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@1e
    return-object v8
.end method

.method private setOffStateDescriptionOnRAndAbove()V
    .registers 3

    #@0
    .line 1589
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_17

    #@6
    .line 1592
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@8
    if-nez v0, :cond_14

    #@a
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    sget v1, Landroidx/appcompat/R$string;->abc_capital_off:I

    #@10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1590
    :cond_14
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@17
    :cond_17
    return-void
.end method

.method private setOnStateDescriptionOnRAndAbove()V
    .registers 3

    #@0
    .line 1580
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_17

    #@6
    .line 1583
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@8
    if-nez v0, :cond_14

    #@a
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    sget v1, Landroidx/appcompat/R$string;->abc_capital_on:I

    #@10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1581
    :cond_14
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@17
    :cond_17
    return-void
.end method

.method private setSwitchTypefaceByIndex(II)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_11

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_e

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p1, v0, :cond_b

    #@9
    const/4 p1, 0x0

    #@a
    goto :goto_13

    #@b
    .line 394
    :cond_b
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@d
    goto :goto_13

    #@e
    .line 390
    :cond_e
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@10
    goto :goto_13

    #@11
    .line 386
    :cond_11
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@13
    .line 398
    :goto_13
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    #@16
    return-void
.end method

.method private setTextOffInternal(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 850
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@2
    .line 851
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->doTransformForOnOffText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOffTransformed:Ljava/lang/CharSequence;

    #@8
    const/4 p1, 0x0

    #@9
    .line 852
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    #@b
    .line 853
    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@d
    if-eqz p1, :cond_12

    #@f
    .line 854
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->setupEmojiCompatLoadCallback()V

    #@12
    :cond_12
    return-void
.end method

.method private setTextOnInternal(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 811
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@2
    .line 812
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->doTransformForOnOffText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOnTransformed:Ljava/lang/CharSequence;

    #@8
    const/4 p1, 0x0

    #@9
    .line 813
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    #@b
    .line 814
    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@d
    if-eqz p1, :cond_12

    #@f
    .line 815
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->setupEmojiCompatLoadCallback()V

    #@12
    :cond_12
    return-void
.end method

.method private setupEmojiCompatLoadCallback()V
    .registers 4

    #@0
    .line 1642
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mEmojiCompatInitCallback:Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

    #@2
    if-nez v0, :cond_2a

    #@4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@6
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_d

    #@c
    goto :goto_2a

    #@d
    .line 1645
    :cond_d
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2a

    #@13
    .line 1646
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@16
    move-result-object v0

    #@17
    .line 1647
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x3

    #@1c
    if-eq v1, v2, :cond_20

    #@1e
    if-nez v1, :cond_2a

    #@20
    .line 1651
    :cond_20
    new-instance v1, Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

    #@22
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    #@25
    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mEmojiCompatInitCallback:Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

    #@27
    .line 1652
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    #@2a
    :cond_2a
    :goto_2a
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    .line 1111
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    #@3
    .line 1115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x1

    #@8
    if-ne v1, v2, :cond_12

    #@a
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_12

    #@10
    move v1, v2

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v1, v0

    #@13
    .line 1116
    :goto_13
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@16
    move-result v3

    #@17
    if-eqz v1, :cond_49

    #@19
    .line 1119
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    const/16 v4, 0x3e8

    #@1d
    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@20
    .line 1120
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@22
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@25
    move-result v1

    #@26
    .line 1121
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@29
    move-result v4

    #@2a
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    #@2c
    int-to-float v5, v5

    #@2d
    cmpl-float v4, v4, v5

    #@2f
    if-lez v4, :cond_44

    #@31
    .line 1122
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@34
    move-result v4

    #@35
    const/4 v5, 0x0

    #@36
    if-eqz v4, :cond_3d

    #@38
    cmpg-float v1, v1, v5

    #@3a
    if-gez v1, :cond_42

    #@3c
    goto :goto_4a

    #@3d
    :cond_3d
    cmpl-float v1, v1, v5

    #@3f
    if-lez v1, :cond_42

    #@41
    goto :goto_4a

    #@42
    :cond_42
    move v2, v0

    #@43
    goto :goto_4a

    #@44
    .line 1124
    :cond_44
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    #@47
    move-result v2

    #@48
    goto :goto_4a

    #@49
    :cond_49
    move v2, v3

    #@4a
    :goto_4a
    if-eq v2, v3, :cond_4f

    #@4c
    .line 1131
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->playSoundEffect(I)V

    #@4f
    .line 1134
    :cond_4f
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    #@52
    .line 1135
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    #@55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    #@0
    .line 1262
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@2
    .line 1263
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    #@4
    .line 1264
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    #@6
    .line 1265
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    #@8
    .line 1266
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    #@a
    .line 1268
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    #@d
    move-result v5

    #@e
    add-int/2addr v5, v1

    #@f
    .line 1271
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v6, :cond_18

    #@13
    .line 1272
    invoke-static {v6}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    #@16
    move-result-object v6

    #@17
    goto :goto_1a

    #@18
    .line 1274
    :cond_18
    sget-object v6, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    #@1a
    .line 1278
    :goto_1a
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v7, :cond_61

    #@1e
    .line 1279
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@21
    .line 1282
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@23
    add-int/2addr v5, v7

    #@24
    if-eqz v6, :cond_5a

    #@26
    .line 1290
    iget v7, v6, Landroid/graphics/Rect;->left:I

    #@28
    iget v8, v0, Landroid/graphics/Rect;->left:I

    #@2a
    if-le v7, v8, :cond_32

    #@2c
    .line 1291
    iget v7, v6, Landroid/graphics/Rect;->left:I

    #@2e
    iget v8, v0, Landroid/graphics/Rect;->left:I

    #@30
    sub-int/2addr v7, v8

    #@31
    add-int/2addr v1, v7

    #@32
    .line 1293
    :cond_32
    iget v7, v6, Landroid/graphics/Rect;->top:I

    #@34
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@36
    if-le v7, v8, :cond_3f

    #@38
    .line 1294
    iget v7, v6, Landroid/graphics/Rect;->top:I

    #@3a
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@3c
    sub-int/2addr v7, v8

    #@3d
    add-int/2addr v7, v2

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v7, v2

    #@40
    .line 1296
    :goto_40
    iget v8, v6, Landroid/graphics/Rect;->right:I

    #@42
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@44
    if-le v8, v9, :cond_4c

    #@46
    .line 1297
    iget v8, v6, Landroid/graphics/Rect;->right:I

    #@48
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@4a
    sub-int/2addr v8, v9

    #@4b
    sub-int/2addr v3, v8

    #@4c
    .line 1299
    :cond_4c
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    #@4e
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    #@50
    if-le v8, v9, :cond_5b

    #@52
    .line 1300
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@54
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@56
    sub-int/2addr v6, v8

    #@57
    sub-int v6, v4, v6

    #@59
    goto :goto_5c

    #@5a
    :cond_5a
    move v7, v2

    #@5b
    :cond_5b
    move v6, v4

    #@5c
    .line 1303
    :goto_5c
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@5e
    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@61
    .line 1307
    :cond_61
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@63
    if-eqz v1, :cond_80

    #@65
    .line 1308
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@68
    .line 1310
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@6a
    sub-int v1, v5, v1

    #@6c
    .line 1311
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    #@6e
    add-int/2addr v5, v3

    #@6f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@71
    add-int/2addr v5, v0

    #@72
    .line 1312
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@74
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@77
    .line 1314
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    #@7a
    move-result-object v0

    #@7b
    if-eqz v0, :cond_80

    #@7d
    .line 1316
    invoke-static {v0, v1, v2, v5, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    #@80
    .line 1322
    :cond_80
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    #@83
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4

    #@0
    .line 1483
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    #@3
    .line 1486
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 1487
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    #@a
    .line 1490
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 1491
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    #@11
    :cond_11
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 5

    #@0
    .line 1460
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    #@3
    .line 1462
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    #@6
    move-result-object v0

    #@7
    .line 1465
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v1, :cond_17

    #@c
    .line 1466
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_17

    #@12
    .line 1467
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    move-result v1

    #@16
    or-int/2addr v2, v1

    #@17
    .line 1470
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@19
    if-eqz v1, :cond_26

    #@1b
    .line 1471
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_26

    #@21
    .line 1472
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@24
    move-result v0

    #@25
    or-int/2addr v2, v0

    #@26
    :cond_26
    if-eqz v2, :cond_2b

    #@28
    .line 1476
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    #@2b
    :cond_2b
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    #@0
    .line 1392
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 1393
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1395
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    #@e
    move-result v0

    #@f
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    #@11
    add-int/2addr v0, v1

    #@12
    .line 1396
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_1f

    #@1c
    .line 1397
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    #@1e
    add-int/2addr v0, v1

    #@1f
    :cond_1f
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    #@0
    .line 1404
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 1405
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1407
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    #@e
    move-result v0

    #@f
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    #@11
    add-int/2addr v0, v1

    #@12
    .line 1408
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_1f

    #@1c
    .line 1409
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    #@1e
    add-int/2addr v0, v1

    #@1f
    :cond_1f
    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    #@0
    .line 1558
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    #@3
    move-result-object v0

    #@4
    .line 1557
    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->unwrapCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getShowText()Z
    .registers 2

    #@0
    .line 909
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@2
    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    #@0
    .line 793
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    #@2
    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    #@0
    .line 492
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    #@2
    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    #@0
    .line 466
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    #@2
    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 842
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 803
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 684
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method protected final getThumbPosition()F
    .registers 2

    #@0
    .line 1163
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    #@2
    return v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    #@0
    .line 516
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    #@2
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 717
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 749
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 557
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 589
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    #@0
    .line 1631
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->isEnabled()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    #@0
    .line 1502
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    #@3
    .line 1504
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 1505
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@a
    .line 1508
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 1509
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@11
    .line 1512
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@13
    if-eqz v0, :cond_23

    #@15
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_23

    #@1b
    .line 1513
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@1d
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    #@20
    const/4 v0, 0x0

    #@21
    .line 1514
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@23
    :cond_23
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    #@0
    add-int/lit8 p1, p1, 0x1

    #@2
    .line 1451
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    #@5
    move-result-object p1

    #@6
    .line 1452
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 1453
    sget-object v0, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    #@e
    invoke-static {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    #@11
    :cond_11
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    #@0
    .line 1327
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 1329
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@5
    .line 1330
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v1, :cond_d

    #@9
    .line 1332
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@c
    goto :goto_10

    #@d
    .line 1334
    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@10
    .line 1337
    :goto_10
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    #@12
    .line 1338
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    #@14
    .line 1339
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v2, v4

    #@17
    .line 1340
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@19
    sub-int/2addr v3, v4

    #@1a
    .line 1342
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v1, :cond_4c

    #@1e
    .line 1344
    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    #@20
    if-eqz v5, :cond_49

    #@22
    if-eqz v4, :cond_49

    #@24
    .line 1345
    invoke-static {v4}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    #@27
    move-result-object v5

    #@28
    .line 1346
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@2b
    .line 1347
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@2d
    iget v7, v5, Landroid/graphics/Rect;->left:I

    #@2f
    add-int/2addr v6, v7

    #@30
    iput v6, v0, Landroid/graphics/Rect;->left:I

    #@32
    .line 1348
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@34
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@36
    sub-int/2addr v6, v5

    #@37
    iput v6, v0, Landroid/graphics/Rect;->right:I

    #@39
    .line 1350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3c
    move-result v5

    #@3d
    .line 1351
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@3f
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@42
    .line 1352
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@45
    .line 1353
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@48
    goto :goto_4c

    #@49
    .line 1355
    :cond_49
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@4c
    .line 1359
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@4f
    move-result v0

    #@50
    if-eqz v4, :cond_55

    #@52
    .line 1362
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@55
    .line 1365
    :cond_55
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_5e

    #@5b
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    #@5d
    goto :goto_60

    #@5e
    :cond_5e
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    #@60
    :goto_60
    if-eqz v1, :cond_a3

    #@62
    .line 1367
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    #@65
    move-result-object v5

    #@66
    .line 1368
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    #@68
    if-eqz v6, :cond_74

    #@6a
    .line 1369
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@6c
    const/4 v8, 0x0

    #@6d
    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@70
    move-result v6

    #@71
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    #@74
    .line 1371
    :cond_74
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@76
    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    #@78
    if-eqz v4, :cond_84

    #@7a
    .line 1375
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7d
    move-result-object v4

    #@7e
    .line 1376
    iget v5, v4, Landroid/graphics/Rect;->left:I

    #@80
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@82
    add-int/2addr v5, v4

    #@83
    goto :goto_88

    #@84
    .line 1378
    :cond_84
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getWidth()I

    #@87
    move-result v5

    #@88
    .line 1381
    :goto_88
    div-int/lit8 v5, v5, 0x2

    #@8a
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    #@8d
    move-result v4

    #@8e
    div-int/lit8 v4, v4, 0x2

    #@90
    sub-int/2addr v5, v4

    #@91
    add-int/2addr v2, v3

    #@92
    .line 1382
    div-int/lit8 v2, v2, 0x2

    #@94
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    #@97
    move-result v3

    #@98
    div-int/lit8 v3, v3, 0x2

    #@9a
    sub-int/2addr v2, v3

    #@9b
    int-to-float v3, v5

    #@9c
    int-to-float v2, v2

    #@9d
    .line 1383
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@a0
    .line 1384
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    #@a3
    .line 1387
    :cond_a3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@a6
    return-void
.end method

.method onEmojiCompatInitializedForSwitchText()V
    .registers 2

    #@0
    .line 1665
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@2
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    #@5
    .line 1666
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@7
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    #@a
    .line 1667
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@d
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 1520
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    const-string v0, "android.widget.Switch"

    #@5
    .line 1521
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    #@0
    .line 1526
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    const-string v0, "android.widget.Switch"

    #@5
    .line 1527
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@8
    .line 1528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@a
    const/16 v1, 0x1e

    #@c
    if-ge v0, v1, :cond_42

    #@e
    .line 1529
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_17

    #@14
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@16
    goto :goto_19

    #@17
    :cond_17
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@19
    .line 1530
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_42

    #@1f
    .line 1531
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    .line 1532
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2d

    #@29
    .line 1533
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@2c
    goto :goto_42

    #@2d
    .line 1535
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    .line 1536
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const/16 v3, 0x20

    #@38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3f
    .line 1537
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@42
    :cond_42
    :goto_42
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 1206
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    #@3
    .line 1210
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    const/4 p2, 0x0

    #@6
    if-eqz p1, :cond_2e

    #@8
    .line 1211
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@a
    .line 1212
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    if-eqz p3, :cond_12

    #@e
    .line 1213
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@11
    goto :goto_15

    #@12
    .line 1215
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@15
    .line 1218
    :goto_15
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-static {p3}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    #@1a
    move-result-object p3

    #@1b
    .line 1219
    iget p4, p3, Landroid/graphics/Rect;->left:I

    #@1d
    iget p5, p1, Landroid/graphics/Rect;->left:I

    #@1f
    sub-int/2addr p4, p5

    #@20
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    #@23
    move-result p4

    #@24
    .line 1220
    iget p3, p3, Landroid/graphics/Rect;->right:I

    #@26
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@28
    sub-int/2addr p3, p1

    #@29
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result p2

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    move p4, p2

    #@2f
    .line 1225
    :goto_2f
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@32
    move-result p1

    #@33
    if-eqz p1, :cond_40

    #@35
    .line 1226
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingLeft()I

    #@38
    move-result p1

    #@39
    add-int/2addr p1, p4

    #@3a
    .line 1227
    iget p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    #@3c
    add-int/2addr p3, p1

    #@3d
    sub-int/2addr p3, p4

    #@3e
    sub-int/2addr p3, p2

    #@3f
    goto :goto_51

    #@40
    .line 1229
    :cond_40
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getWidth()I

    #@43
    move-result p1

    #@44
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingRight()I

    #@47
    move-result p3

    #@48
    sub-int/2addr p1, p3

    #@49
    sub-int p3, p1, p2

    #@4b
    .line 1230
    iget p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    #@4d
    sub-int p1, p3, p1

    #@4f
    add-int/2addr p1, p4

    #@50
    add-int/2addr p1, p2

    #@51
    .line 1235
    :goto_51
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getGravity()I

    #@54
    move-result p2

    #@55
    and-int/lit8 p2, p2, 0x70

    #@57
    const/16 p4, 0x10

    #@59
    if-eq p2, p4, :cond_75

    #@5b
    const/16 p4, 0x50

    #@5d
    if-eq p2, p4, :cond_66

    #@5f
    .line 1238
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    #@62
    move-result p2

    #@63
    .line 1239
    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    #@65
    goto :goto_8a

    #@66
    .line 1249
    :cond_66
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getHeight()I

    #@69
    move-result p2

    #@6a
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    #@6d
    move-result p4

    #@6e
    sub-int p4, p2, p4

    #@70
    .line 1250
    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    #@72
    sub-int p2, p4, p2

    #@74
    goto :goto_8b

    #@75
    .line 1243
    :cond_75
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    #@78
    move-result p2

    #@79
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getHeight()I

    #@7c
    move-result p4

    #@7d
    add-int/2addr p2, p4

    #@7e
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    #@81
    move-result p4

    #@82
    sub-int/2addr p2, p4

    #@83
    div-int/lit8 p2, p2, 0x2

    #@85
    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    #@87
    div-int/lit8 p5, p4, 0x2

    #@89
    sub-int/2addr p2, p5

    #@8a
    :goto_8a
    add-int/2addr p4, p2

    #@8b
    .line 1254
    :goto_8b
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    #@8d
    .line 1255
    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    #@8f
    .line 1256
    iput p4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    #@91
    .line 1257
    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    #@93
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    #@0
    .line 914
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@2
    if-eqz v0, :cond_1c

    #@4
    .line 915
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    #@6
    if-nez v0, :cond_10

    #@8
    .line 916
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOnTransformed:Ljava/lang/CharSequence;

    #@a
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    #@10
    .line 919
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    #@12
    if-nez v0, :cond_1c

    #@14
    .line 920
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOffTransformed:Ljava/lang/CharSequence;

    #@16
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    #@1c
    .line 924
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    #@1e
    .line 927
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    const/4 v2, 0x0

    #@21
    if-eqz v1, :cond_39

    #@23
    .line 929
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@26
    .line 930
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@28
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2b
    move-result v1

    #@2c
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@2e
    sub-int/2addr v1, v3

    #@2f
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@31
    sub-int/2addr v1, v3

    #@32
    .line 931
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@37
    move-result v3

    #@38
    goto :goto_3b

    #@39
    :cond_39
    move v1, v2

    #@3a
    move v3, v1

    #@3b
    .line 938
    :goto_3b
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@3d
    if-eqz v4, :cond_55

    #@3f
    .line 939
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    #@41
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    #@44
    move-result v4

    #@45
    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    #@47
    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    #@4a
    move-result v5

    #@4b
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result v4

    #@4f
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    #@51
    mul-int/lit8 v5, v5, 0x2

    #@53
    add-int/2addr v4, v5

    #@54
    goto :goto_56

    #@55
    :cond_55
    move v4, v2

    #@56
    .line 945
    :goto_56
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@59
    move-result v1

    #@5a
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    #@5c
    .line 948
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@5e
    if-eqz v1, :cond_6a

    #@60
    .line 949
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@63
    .line 950
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@65
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@68
    move-result v2

    #@69
    goto :goto_6d

    #@6a
    .line 952
    :cond_6a
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@6d
    .line 958
    :goto_6d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@6f
    .line 959
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@71
    .line 960
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@73
    if-eqz v4, :cond_85

    #@75
    .line 961
    invoke-static {v4}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    #@78
    move-result-object v4

    #@79
    .line 962
    iget v5, v4, Landroid/graphics/Rect;->left:I

    #@7b
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    #@7e
    move-result v1

    #@7f
    .line 963
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@81
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@84
    move-result v0

    #@85
    .line 967
    :cond_85
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mEnforceSwitchWidth:Z

    #@87
    if-eqz v4, :cond_96

    #@89
    .line 968
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    #@8b
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    #@8d
    mul-int/lit8 v5, v5, 0x2

    #@8f
    add-int/2addr v5, v1

    #@90
    add-int/2addr v5, v0

    #@91
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@94
    move-result v0

    #@95
    goto :goto_98

    #@96
    .line 969
    :cond_96
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    #@98
    .line 970
    :goto_98
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@9b
    move-result v1

    #@9c
    .line 971
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    #@9e
    .line 972
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    #@a0
    .line 974
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    #@a3
    .line 976
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getMeasuredHeight()I

    #@a6
    move-result p1

    #@a7
    if-ge p1, v1, :cond_b0

    #@a9
    .line 978
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getMeasuredWidthAndState()I

    #@ac
    move-result p1

    #@ad
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setMeasuredDimension(II)V

    #@b0
    :cond_b0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 984
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 986
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_c

    #@9
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@b
    goto :goto_e

    #@c
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@e
    :goto_e
    if-eqz v0, :cond_17

    #@10
    .line 988
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@13
    move-result-object p1

    #@14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    .line 1021
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@5
    .line 1022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    if-eqz v0, :cond_9d

    #@c
    const/4 v2, 0x2

    #@d
    if-eq v0, v1, :cond_89

    #@f
    if-eq v0, v2, :cond_16

    #@11
    const/4 v3, 0x3

    #@12
    if-eq v0, v3, :cond_89

    #@14
    goto/16 :goto_b7

    #@16
    .line 1036
    :cond_16
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    #@18
    if-eq v0, v1, :cond_55

    #@1a
    if-eq v0, v2, :cond_1e

    #@1c
    goto/16 :goto_b7

    #@1e
    .line 1056
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@21
    move-result p1

    #@22
    .line 1057
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    #@25
    move-result v0

    #@26
    .line 1058
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    #@28
    sub-float v2, p1, v2

    #@2a
    const/high16 v3, 0x3f800000    # 1.0f

    #@2c
    const/4 v4, 0x0

    #@2d
    if-eqz v0, :cond_32

    #@2f
    int-to-float v0, v0

    #@30
    div-float/2addr v2, v0

    #@31
    goto :goto_3b

    #@32
    :cond_32
    cmpl-float v0, v2, v4

    #@34
    if-lez v0, :cond_38

    #@36
    move v2, v3

    #@37
    goto :goto_3b

    #@38
    :cond_38
    const/high16 v0, -0x40800000    # -1.0f

    #@3a
    move v2, v0

    #@3b
    .line 1067
    :goto_3b
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_42

    #@41
    neg-float v2, v2

    #@42
    .line 1070
    :cond_42
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    #@44
    add-float/2addr v0, v2

    #@45
    invoke-static {v0, v4, v3}, Landroidx/appcompat/widget/SwitchCompat;->constrain(FFF)F

    #@48
    move-result v0

    #@49
    .line 1071
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    #@4b
    cmpl-float v2, v0, v2

    #@4d
    if-eqz v2, :cond_54

    #@4f
    .line 1072
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    #@51
    .line 1073
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    #@54
    :cond_54
    return v1

    #@55
    .line 1042
    :cond_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@58
    move-result v0

    #@59
    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@5c
    move-result v3

    #@5d
    .line 1044
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    #@5f
    sub-float v4, v0, v4

    #@61
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@64
    move-result v4

    #@65
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    #@67
    int-to-float v5, v5

    #@68
    cmpl-float v4, v4, v5

    #@6a
    if-gtz v4, :cond_7b

    #@6c
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    #@6e
    sub-float v4, v3, v4

    #@70
    .line 1045
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@73
    move-result v4

    #@74
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    #@76
    int-to-float v5, v5

    #@77
    cmpl-float v4, v4, v5

    #@79
    if-lez v4, :cond_b7

    #@7b
    .line 1046
    :cond_7b
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    #@7d
    .line 1047
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    #@80
    move-result-object p1

    #@81
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@84
    .line 1048
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    #@86
    .line 1049
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    #@88
    return v1

    #@89
    .line 1083
    :cond_89
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    #@8b
    if-ne v0, v2, :cond_94

    #@8d
    .line 1084
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    #@90
    .line 1086
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@93
    return v1

    #@94
    :cond_94
    const/4 v0, 0x0

    #@95
    .line 1089
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    #@97
    .line 1090
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@99
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@9c
    goto :goto_b7

    #@9d
    .line 1025
    :cond_9d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@a0
    move-result v0

    #@a1
    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@a4
    move-result v2

    #@a5
    .line 1027
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_b7

    #@ab
    invoke-direct {p0, v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->hitThumb(FF)Z

    #@ae
    move-result v3

    #@af
    if-eqz v3, :cond_b7

    #@b1
    .line 1028
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    #@b3
    .line 1029
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    #@b5
    .line 1030
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    #@b7
    .line 1095
    :cond_b7
    :goto_b7
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@ba
    move-result p1

    #@bb
    return p1
.end method

.method public setAllCaps(Z)V
    .registers 3

    #@0
    .line 1599
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setAllCaps(Z)V

    #@3
    .line 1600
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setAllCaps(Z)V

    #@a
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    #@0
    .line 1183
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@3
    .line 1187
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_d

    #@9
    .line 1190
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->setOnStateDescriptionOnRAndAbove()V

    #@c
    goto :goto_10

    #@d
    .line 1192
    :cond_d
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->setOffStateDescriptionOnRAndAbove()V

    #@10
    .line 1195
    :goto_10
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_20

    #@16
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_20

    #@1c
    .line 1196
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    #@1f
    goto :goto_2c

    #@20
    .line 1199
    :cond_20
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->cancelPositionAnimator()V

    #@23
    if-eqz p1, :cond_28

    #@25
    const/high16 p1, 0x3f800000    # 1.0f

    #@27
    goto :goto_29

    #@28
    :cond_28
    const/4 p1, 0x0

    #@29
    .line 1200
    :goto_29
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    #@2c
    :goto_2c
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    #@0
    .line 1551
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    #@3
    move-result-object p1

    #@4
    .line 1550
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    #@7
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .registers 3

    #@0
    .line 1622
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setEnabled(Z)V

    #@7
    .line 1624
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@9
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    #@c
    .line 1625
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@e
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    #@11
    .line 1626
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@14
    return-void
.end method

.method protected final setEnforceSwitchWidth(Z)V
    .registers 2

    #@0
    .line 1568
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mEnforceSwitchWidth:Z

    #@2
    .line 1569
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    #@5
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3

    #@0
    .line 1605
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    #@7
    move-result-object p1

    #@8
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setFilters([Landroid/text/InputFilter;)V

    #@b
    return-void
.end method

.method public setShowText(Z)V
    .registers 3

    #@0
    .line 890
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@2
    if-eq v0, p1, :cond_e

    #@4
    .line 891
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    #@6
    .line 892
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 894
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->setupEmojiCompatLoadCallback()V

    #@e
    :cond_e
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2

    #@0
    .line 782
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    #@2
    .line 783
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    #@5
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2

    #@0
    .line 478
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    #@2
    .line 479
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@5
    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2

    #@0
    .line 453
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    #@2
    .line 454
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@5
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 6

    #@0
    .line 341
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    #@2
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    #@5
    move-result-object p1

    #@6
    .line 347
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    #@8
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@b
    move-result-object p2

    #@c
    if-eqz p2, :cond_11

    #@e
    .line 349
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    #@10
    goto :goto_17

    #@11
    .line 352
    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    #@14
    move-result-object p2

    #@15
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    #@17
    .line 355
    :goto_17
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@1d
    move-result p2

    #@1e
    if-eqz p2, :cond_33

    #@20
    int-to-float p2, p2

    #@21
    .line 357
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@23
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    #@26
    move-result v1

    #@27
    cmpl-float v1, p2, v1

    #@29
    if-eqz v1, :cond_33

    #@2b
    .line 358
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@2d
    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    #@30
    .line 359
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@33
    .line 364
    :cond_33
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    #@35
    const/4 v1, -0x1

    #@36
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@39
    move-result p2

    #@3a
    .line 365
    sget v2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    #@3c
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@3f
    move-result v1

    #@40
    .line 367
    invoke-direct {p0, p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V

    #@43
    .line 369
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    #@45
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@48
    move-result p2

    #@49
    if-eqz p2, :cond_57

    #@4b
    .line 371
    new-instance p2, Landroidx/appcompat/text/AllCapsTransformationMethod;

    #@4d
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    #@50
    move-result-object v0

    #@51
    invoke-direct {p2, v0}, Landroidx/appcompat/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    #@54
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    #@56
    goto :goto_5a

    #@57
    :cond_57
    const/4 p2, 0x0

    #@58
    .line 373
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    #@5a
    .line 376
    :goto_5a
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    #@5c
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    #@5f
    .line 377
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    #@61
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    #@64
    .line 379
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@67
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    .line 436
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_14

    #@8
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1e

    #@14
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@16
    .line 437
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@19
    move-result-object v0

    #@1a
    if-nez v0, :cond_29

    #@1c
    if-eqz p1, :cond_29

    #@1e
    .line 438
    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@20
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@23
    .line 440
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@26
    .line 441
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    #@29
    :cond_29
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    if-lez p2, :cond_32

    #@4
    if-nez p1, :cond_b

    #@6
    .line 410
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@9
    move-result-object p1

    #@a
    goto :goto_f

    #@b
    .line 412
    :cond_b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@e
    move-result-object p1

    #@f
    .line 415
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    #@12
    if-eqz p1, :cond_19

    #@14
    .line 417
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    #@17
    move-result p1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move p1, v1

    #@1a
    :goto_1a
    not-int p1, p1

    #@1b
    and-int/2addr p1, p2

    #@1c
    .line 419
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@1e
    and-int/lit8 v2, p1, 0x1

    #@20
    if-eqz v2, :cond_23

    #@22
    const/4 v1, 0x1

    #@23
    :cond_23
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@26
    .line 420
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@28
    and-int/lit8 p1, p1, 0x2

    #@2a
    if-eqz p1, :cond_2e

    #@2c
    const/high16 v0, -0x41800000    # -0.25f

    #@2e
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@31
    goto :goto_3f

    #@32
    .line 422
    :cond_32
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@34
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@37
    .line 423
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    #@39
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@3c
    .line 424
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    #@3f
    :goto_3f
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 864
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    #@3
    .line 865
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@6
    .line 866
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_f

    #@c
    .line 869
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->setOffStateDescriptionOnRAndAbove()V

    #@f
    :cond_f
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 826
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    #@3
    .line 827
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@6
    .line 828
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 831
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->setOnStateDescriptionOnRAndAbove()V

    #@f
    :cond_f
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 652
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v1, 0x0

    #@5
    .line 653
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8
    .line 655
    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 657
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    .line 659
    :cond_f
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@12
    return-void
.end method

.method setThumbPosition(F)V
    .registers 2

    #@0
    .line 1172
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    #@2
    .line 1173
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    #@5
    return-void
.end method

.method public setThumbResource(I)V
    .registers 3

    #@0
    .line 671
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2

    #@0
    .line 503
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    #@2
    .line 504
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@5
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 702
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    const/4 p1, 0x1

    #@3
    .line 703
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    #@5
    .line 705
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    #@8
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 733
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    const/4 p1, 0x1

    #@3
    .line 734
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    #@5
    .line 736
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    #@8
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 527
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v1, 0x0

    #@5
    .line 528
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8
    .line 530
    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 532
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    .line 534
    :cond_f
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    #@12
    return-void
.end method

.method public setTrackResource(I)V
    .registers 3

    #@0
    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 574
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@2
    const/4 p1, 0x1

    #@3
    .line 575
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    #@5
    .line 577
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    #@8
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 604
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    const/4 p1, 0x1

    #@3
    .line 605
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    #@5
    .line 607
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    #@8
    return-void
.end method

.method public toggle()V
    .registers 2

    #@0
    .line 1178
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    #@3
    move-result v0

    #@4
    xor-int/lit8 v0, v0, 0x1

    #@6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    #@9
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    .line 1497
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_11

    #@6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-eq p1, v0, :cond_11

    #@a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    if-ne p1, v0, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x1

    #@12
    :goto_12
    return p1
.end method

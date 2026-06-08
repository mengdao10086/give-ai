.class Landroidx/appcompat/app/AppCompatDelegateImpl;
.super Landroidx/appcompat/app/AppCompatDelegate;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$Api26Impl;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$Api24Impl;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$Api21Impl;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$Api17Impl;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$ContextThemeWrapperCompatApi17Impl;
    }
.end annotation


# static fields
.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final IS_PRE_LOLLIPOP:Z

.field private static final sCanApplyOverrideConfiguration:Z

.field private static final sCanReturnDifferentContext:Z

.field private static sInstalledExceptionHandler:Z

.field private static final sLocalNightModes:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

.field mActionMode:Landroidx/appcompat/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

.field private mActivityHandlesUiMode:Z

.field private mActivityHandlesUiModeChecked:Z

.field final mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

.field private mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

.field private mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

.field private mAutoBatteryNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

.field private mAutoTimeNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

.field private mBaseContextAttached:Z

.field private mClosingActionMenu:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

.field mDestroyed:Z

.field private mEffectiveConfiguration:Landroid/content/res/Configuration;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mHandleNativeActionModes:Z

.field mHasActionBar:Z

.field final mHost:Ljava/lang/Object;

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsFloating:Z

.field private mLayoutIncludeDetector:Landroidx/appcompat/app/LayoutIncludeDetector;

.field private mLocalNightMode:I

.field private mLongPressBackDown:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

.field private mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field private mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mThemeResId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 136
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@5
    sput-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->sLocalNightModes:Landroidx/collection/SimpleArrayMap;

    #@7
    const/4 v0, 0x0

    #@8
    .line 137
    sput-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    #@a
    const/4 v1, 0x1

    #@b
    new-array v2, v1, [I

    #@d
    const v3, 0x1010054

    #@10
    aput v3, v2, v0

    #@12
    .line 139
    sput-object v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    #@14
    const-string v0, "robolectric"

    #@16
    .line 145
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@18
    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    xor-int/2addr v0, v1

    #@1d
    sput-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanReturnDifferentContext:Z

    #@1f
    .line 151
    sput-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanApplyOverrideConfiguration:Z

    #@21
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 292
    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/AppCompatCallback;)V
    .registers 5

    #@0
    .line 296
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 304
    invoke-direct {p0, p1, v0, p3, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;)V
    .registers 4

    #@0
    .line 300
    invoke-direct {p0, p1, p2, p3, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V
    .registers 7

    #@0
    .line 308
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegate;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 213
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@6
    const/4 v0, 0x1

    #@7
    .line 215
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    #@9
    const/16 v0, -0x64

    #@b
    .line 257
    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@d
    .line 269
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    #@f
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$2;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@12
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@14
    .line 309
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@16
    .line 310
    iput-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    #@18
    .line 311
    iput-object p4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@1a
    .line 313
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@1c
    if-ne p1, v0, :cond_32

    #@1e
    instance-of p1, p4, Landroid/app/Dialog;

    #@20
    if-eqz p1, :cond_32

    #@22
    .line 314
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->tryUnwrapContext()Landroidx/appcompat/app/AppCompatActivity;

    #@25
    move-result-object p1

    #@26
    if-eqz p1, :cond_32

    #@28
    .line 321
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegate;->getLocalNightMode()I

    #@2f
    move-result p1

    #@30
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@32
    .line 324
    :cond_32
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@34
    if-ne p1, v0, :cond_59

    #@36
    .line 326
    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->sLocalNightModes:Landroidx/collection/SimpleArrayMap;

    #@38
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object p3

    #@3c
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3f
    move-result-object p3

    #@40
    invoke-virtual {p1, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object p3

    #@44
    check-cast p3, Ljava/lang/Integer;

    #@46
    if-eqz p3, :cond_59

    #@48
    .line 328
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result p3

    #@4c
    iput p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@4e
    .line 330
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@51
    move-result-object p3

    #@52
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@55
    move-result-object p3

    #@56
    invoke-virtual {p1, p3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    :cond_59
    if-eqz p2, :cond_5e

    #@5b
    .line 335
    invoke-direct {p0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->attachToWindow(Landroid/view/Window;)V

    #@5e
    .line 342
    :cond_5e
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->preload()V

    #@61
    return-void
.end method

.method private applyDayNight(Z)Z
    .registers 4

    #@0
    .line 2382
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    .line 2390
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->calculateNightMode()I

    #@9
    move-result v0

    #@a
    .line 2391
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->mapNightMode(Landroid/content/Context;I)I

    #@f
    move-result v1

    #@10
    .line 2392
    invoke-direct {p0, v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateForNightMode(IZ)Z

    #@13
    move-result p1

    #@14
    if-nez v0, :cond_20

    #@16
    .line 2395
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@18
    invoke-direct {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getAutoTimeNightModeManager(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V

    #@1f
    goto :goto_27

    #@20
    .line 2396
    :cond_20
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoTimeNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@22
    if-eqz v1, :cond_27

    #@24
    .line 2398
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    #@27
    :cond_27
    :goto_27
    const/4 v1, 0x3

    #@28
    if-ne v0, v1, :cond_34

    #@2a
    .line 2401
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2c
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getAutoBatteryNightModeManager(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V

    #@33
    goto :goto_3b

    #@34
    .line 2402
    :cond_34
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoBatteryNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@36
    if-eqz v0, :cond_3b

    #@38
    .line 2404
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    #@3b
    :cond_3b
    :goto_3b
    return p1
.end method

.method private applyFixedSizeWindow()V
    .registers 6

    #@0
    .line 1032
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@2
    const v1, 0x1020002

    #@5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    #@b
    .line 1038
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@d
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    .line 1039
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    #@14
    move-result v2

    #@15
    .line 1040
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    #@1c
    move-result v4

    #@1d
    .line 1041
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    #@20
    move-result v1

    #@21
    .line 1039
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    #@24
    .line 1043
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@26
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    #@28
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@2b
    move-result-object v1

    #@2c
    .line 1044
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    #@2e
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@35
    .line 1045
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    #@37
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@3e
    .line 1047
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    #@40
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_4f

    #@46
    .line 1048
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    #@48
    .line 1049
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    #@4b
    move-result-object v3

    #@4c
    .line 1048
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@4f
    .line 1051
    :cond_4f
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    #@51
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_60

    #@57
    .line 1052
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    #@59
    .line 1053
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    #@5c
    move-result-object v3

    #@5d
    .line 1052
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@60
    .line 1055
    :cond_60
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    #@62
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_71

    #@68
    .line 1056
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    #@6a
    .line 1057
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    #@6d
    move-result-object v3

    #@6e
    .line 1056
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@71
    .line 1059
    :cond_71
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    #@73
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_82

    #@79
    .line 1060
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    #@7b
    .line 1061
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    #@7e
    move-result-object v3

    #@7f
    .line 1060
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@82
    .line 1063
    :cond_82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@85
    .line 1065
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    #@88
    return-void
.end method

.method private attachToWindow(Landroid/view/Window;)V
    .registers 5

    #@0
    .line 791
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@2
    const-string v1, "AppCompat has already installed itself into the Window"

    #@4
    if-nez v0, :cond_37

    #@6
    .line 796
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@9
    move-result-object v0

    #@a
    .line 797
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@c
    if-nez v2, :cond_31

    #@e
    .line 801
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@10
    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    #@13
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@15
    .line 803
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@18
    .line 805
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@1a
    const/4 v1, 0x0

    #@1b
    sget-object v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    #@1d
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    #@20
    move-result-object v0

    #@21
    const/4 v1, 0x0

    #@22
    .line 807
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v1

    #@26
    if-eqz v1, :cond_2b

    #@28
    .line 810
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2b
    .line 812
    :cond_2b
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@2e
    .line 814
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@30
    return-void

    #@31
    .line 798
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    #@33
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw p1

    #@37
    .line 792
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    #@39
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw p1
.end method

.method private calculateNightMode()I
    .registers 3

    #@0
    .line 2465
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@2
    const/16 v1, -0x64

    #@4
    if-eq v0, v1, :cond_7

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getDefaultNightMode()I

    #@a
    move-result v0

    #@b
    :goto_b
    return v0
.end method

.method private cleanupAutoManagers()V
    .registers 2

    #@0
    .line 766
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoTimeNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 767
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    #@7
    .line 769
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoBatteryNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 770
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    #@e
    :cond_e
    return-void
.end method

.method private createOverrideConfigurationForDayNight(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p2, v0, :cond_1e

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p2, v0, :cond_1b

    #@6
    if-eqz p4, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    goto :goto_20

    #@a
    .line 2490
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@15
    move-result-object p1

    #@16
    .line 2491
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    #@18
    and-int/lit8 p1, p1, 0x30

    #@1a
    goto :goto_20

    #@1b
    :cond_1b
    const/16 p1, 0x20

    #@1d
    goto :goto_20

    #@1e
    :cond_1e
    const/16 p1, 0x10

    #@20
    .line 2497
    :goto_20
    new-instance p2, Landroid/content/res/Configuration;

    #@22
    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    #@25
    const/4 p4, 0x0

    #@26
    .line 2498
    iput p4, p2, Landroid/content/res/Configuration;->fontScale:F

    #@28
    if-eqz p3, :cond_2d

    #@2a
    .line 2500
    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@2d
    .line 2502
    :cond_2d
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    #@2f
    and-int/lit8 p3, p3, -0x31

    #@31
    or-int/2addr p1, p3

    #@32
    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    #@34
    return-object p2
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .registers 8

    #@0
    .line 852
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v0

    #@8
    .line 854
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    #@a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_197

    #@10
    .line 860
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@16
    move-result v1

    #@17
    const/4 v3, 0x1

    #@18
    if-eqz v1, :cond_1e

    #@1a
    .line 861
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    #@1d
    goto :goto_2b

    #@1e
    .line 862
    :cond_1e
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2b

    #@26
    const/16 v1, 0x6c

    #@28
    .line 864
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    #@2b
    .line 866
    :cond_2b
    :goto_2b
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@30
    move-result v1

    #@31
    const/16 v4, 0x6d

    #@33
    if-eqz v1, :cond_38

    #@35
    .line 867
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    #@38
    .line 869
    :cond_38
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_45

    #@40
    const/16 v1, 0xa

    #@42
    .line 870
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    #@45
    .line 872
    :cond_45
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    #@47
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4a
    move-result v1

    #@4b
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    #@4d
    .line 873
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@50
    .line 876
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureWindow()V

    #@53
    .line 877
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@55
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@58
    .line 879
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@5a
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@5d
    move-result-object v0

    #@5e
    .line 883
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    #@60
    const/4 v5, 0x0

    #@61
    if-nez v1, :cond_d6

    #@63
    .line 884
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    #@65
    if-eqz v1, :cond_75

    #@67
    .line 886
    sget v1, Landroidx/appcompat/R$layout;->abc_dialog_title_material:I

    #@69
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Landroid/view/ViewGroup;

    #@6f
    .line 890
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    #@71
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@73
    goto/16 :goto_eb

    #@75
    .line 891
    :cond_75
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@77
    if-eqz v0, :cond_d4

    #@79
    .line 897
    new-instance v0, Landroid/util/TypedValue;

    #@7b
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@7e
    .line 898
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@80
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@83
    move-result-object v1

    #@84
    sget v6, Landroidx/appcompat/R$attr;->actionBarTheme:I

    #@86
    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@89
    .line 901
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@8b
    if-eqz v1, :cond_97

    #@8d
    .line 902
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    #@8f
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@91
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    #@93
    invoke-direct {v1, v3, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@96
    goto :goto_99

    #@97
    .line 904
    :cond_97
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@99
    .line 908
    :goto_99
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9c
    move-result-object v0

    #@9d
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_toolbar:I

    #@9f
    .line 909
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@a2
    move-result-object v0

    #@a3
    check-cast v0, Landroid/view/ViewGroup;

    #@a5
    .line 911
    sget v1, Landroidx/appcompat/R$id;->decor_content_parent:I

    #@a7
    .line 912
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@aa
    move-result-object v1

    #@ab
    check-cast v1, Landroidx/appcompat/widget/DecorContentParent;

    #@ad
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@af
    .line 913
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    #@b2
    move-result-object v3

    #@b3
    invoke-interface {v1, v3}, Landroidx/appcompat/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    #@b6
    .line 918
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    #@b8
    if-eqz v1, :cond_bf

    #@ba
    .line 919
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@bc
    invoke-interface {v1, v4}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    #@bf
    .line 921
    :cond_bf
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    #@c1
    if-eqz v1, :cond_c9

    #@c3
    .line 922
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@c5
    const/4 v3, 0x2

    #@c6
    invoke-interface {v1, v3}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    #@c9
    .line 924
    :cond_c9
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    #@cb
    if-eqz v1, :cond_eb

    #@cd
    .line 925
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@cf
    const/4 v3, 0x5

    #@d0
    invoke-interface {v1, v3}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    #@d3
    goto :goto_eb

    #@d4
    :cond_d4
    move-object v0, v5

    #@d5
    goto :goto_eb

    #@d6
    .line 929
    :cond_d6
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    #@d8
    if-eqz v1, :cond_e3

    #@da
    .line 930
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    #@dc
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@df
    move-result-object v0

    #@e0
    check-cast v0, Landroid/view/ViewGroup;

    #@e2
    goto :goto_eb

    #@e3
    .line 933
    :cond_e3
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple:I

    #@e5
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@e8
    move-result-object v0

    #@e9
    check-cast v0, Landroid/view/ViewGroup;

    #@eb
    :cond_eb
    :goto_eb
    if-eqz v0, :cond_14a

    #@ed
    .line 951
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$3;

    #@ef
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$3;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@f2
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@f5
    .line 981
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@f7
    if-nez v1, :cond_103

    #@f9
    .line 982
    sget v1, Landroidx/appcompat/R$id;->title:I

    #@fb
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@fe
    move-result-object v1

    #@ff
    check-cast v1, Landroid/widget/TextView;

    #@101
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    #@103
    .line 986
    :cond_103
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    #@106
    .line 988
    sget v1, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    #@108
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@10b
    move-result-object v1

    #@10c
    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    #@10e
    .line 991
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@110
    const v4, 0x1020002

    #@113
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@116
    move-result-object v3

    #@117
    check-cast v3, Landroid/view/ViewGroup;

    #@119
    if-eqz v3, :cond_13c

    #@11b
    .line 995
    :goto_11b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@11e
    move-result v6

    #@11f
    if-lez v6, :cond_12c

    #@121
    .line 996
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@124
    move-result-object v6

    #@125
    .line 997
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@128
    .line 998
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    #@12b
    goto :goto_11b

    #@12c
    :cond_12c
    const/4 v2, -0x1

    #@12d
    .line 1003
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    #@130
    .line 1004
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setId(I)V

    #@133
    .line 1008
    instance-of v2, v3, Landroid/widget/FrameLayout;

    #@135
    if-eqz v2, :cond_13c

    #@137
    .line 1009
    check-cast v3, Landroid/widget/FrameLayout;

    #@139
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@13c
    .line 1014
    :cond_13c
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@13e
    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    #@141
    .line 1016
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$5;

    #@143
    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$5;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@146
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V

    #@149
    return-object v0

    #@14a
    .line 938
    :cond_14a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14c
    new-instance v1, Ljava/lang/StringBuilder;

    #@14e
    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    #@150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@153
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@158
    move-result-object v1

    #@159
    const-string v2, ", windowActionBarOverlay: "

    #@15b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v1

    #@15f
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    #@161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@164
    move-result-object v1

    #@165
    const-string v2, ", android:windowIsFloating: "

    #@167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v1

    #@16b
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    #@16d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@170
    move-result-object v1

    #@171
    const-string v2, ", windowActionModeOverlay: "

    #@173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v1

    #@177
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    #@179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v1

    #@17d
    const-string v2, ", windowNoTitle: "

    #@17f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v1

    #@183
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    #@185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@188
    move-result-object v1

    #@189
    const-string v2, " }"

    #@18b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v1

    #@18f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v1

    #@193
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@196
    throw v0

    #@197
    .line 855
    :cond_197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@19a
    .line 856
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19c
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    #@19e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a1
    throw v0
.end method

.method private ensureSubDecor()V
    .registers 3

    #@0
    .line 818
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    #@2
    if-nez v0, :cond_50

    #@4
    .line 819
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@a
    .line 822
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getTitle()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    .line 823
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_31

    #@14
    .line 824
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@16
    if-eqz v1, :cond_1c

    #@18
    .line 825
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@1b
    goto :goto_31

    #@1c
    .line 826
    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@1f
    move-result-object v1

    #@20
    if-eqz v1, :cond_2a

    #@22
    .line 827
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@29
    goto :goto_31

    #@2a
    .line 828
    :cond_2a
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    #@2c
    if-eqz v1, :cond_31

    #@2e
    .line 829
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@31
    .line 833
    :cond_31
    :goto_31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyFixedSizeWindow()V

    #@34
    .line 835
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    #@39
    const/4 v0, 0x1

    #@3a
    .line 837
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    #@3c
    const/4 v0, 0x0

    #@3d
    .line 844
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@40
    move-result-object v0

    #@41
    .line 845
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@43
    if-nez v1, :cond_50

    #@45
    if-eqz v0, :cond_4b

    #@47
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@49
    if-nez v0, :cond_50

    #@4b
    :cond_4b
    const/16 v0, 0x6c

    #@4d
    .line 846
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    #@50
    :cond_50
    return-void
.end method

.method private ensureWindow()V
    .registers 3

    #@0
    .line 782
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@2
    if-nez v0, :cond_13

    #@4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@6
    instance-of v1, v0, Landroid/app/Activity;

    #@8
    if-eqz v1, :cond_13

    #@a
    .line 783
    check-cast v0, Landroid/app/Activity;

    #@c
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->attachToWindow(Landroid/view/Window;)V

    #@13
    .line 785
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@15
    if-eqz v0, :cond_18

    #@17
    return-void

    #@18
    .line 786
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1a
    const-string v1, "We have not been given a Window"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method private static generateConfigDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 5

    #@0
    .line 3495
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 3496
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    #@8
    if-eqz p1, :cond_107

    #@a
    .line 3498
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_12

    #@10
    goto/16 :goto_107

    #@12
    .line 3502
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    #@14
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    #@16
    cmpl-float v1, v1, v2

    #@18
    if-eqz v1, :cond_1e

    #@1a
    .line 3503
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@1c
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    #@1e
    .line 3506
    :cond_1e
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    #@20
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    #@22
    if-eq v1, v2, :cond_28

    #@24
    .line 3507
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@26
    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    #@28
    .line 3510
    :cond_28
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    #@2a
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    #@2c
    if-eq v1, v2, :cond_32

    #@2e
    .line 3511
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@30
    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    #@32
    .line 3515
    :cond_32
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api24Impl;->generateConfigDelta_locale(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    #@35
    .line 3522
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@37
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@39
    if-eq v1, v2, :cond_3f

    #@3b
    .line 3523
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@3d
    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    #@3f
    .line 3526
    :cond_3f
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    #@41
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@43
    if-eq v1, v2, :cond_49

    #@45
    .line 3527
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@47
    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    #@49
    .line 3530
    :cond_49
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@4b
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@4d
    if-eq v1, v2, :cond_53

    #@4f
    .line 3531
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@51
    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@53
    .line 3534
    :cond_53
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    #@55
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@57
    if-eq v1, v2, :cond_5d

    #@59
    .line 3535
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    #@5b
    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    #@5d
    .line 3538
    :cond_5d
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@5f
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@61
    if-eq v1, v2, :cond_67

    #@63
    .line 3539
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@65
    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    #@67
    .line 3542
    :cond_67
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    #@69
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@6b
    if-eq v1, v2, :cond_71

    #@6d
    .line 3543
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@6f
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@71
    .line 3546
    :cond_71
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@73
    and-int/lit8 v1, v1, 0xf

    #@75
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@77
    and-int/lit8 v2, v2, 0xf

    #@79
    if-eq v1, v2, :cond_84

    #@7b
    .line 3548
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@7d
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@7f
    and-int/lit8 v2, v2, 0xf

    #@81
    or-int/2addr v1, v2

    #@82
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@84
    .line 3551
    :cond_84
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@86
    and-int/lit16 v1, v1, 0xc0

    #@88
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@8a
    and-int/lit16 v2, v2, 0xc0

    #@8c
    if-eq v1, v2, :cond_97

    #@8e
    .line 3553
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@90
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@92
    and-int/lit16 v2, v2, 0xc0

    #@94
    or-int/2addr v1, v2

    #@95
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@97
    .line 3556
    :cond_97
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@99
    and-int/lit8 v1, v1, 0x30

    #@9b
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@9d
    and-int/lit8 v2, v2, 0x30

    #@9f
    if-eq v1, v2, :cond_aa

    #@a1
    .line 3558
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@a3
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@a5
    and-int/lit8 v2, v2, 0x30

    #@a7
    or-int/2addr v1, v2

    #@a8
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@aa
    .line 3561
    :cond_aa
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@ac
    and-int/lit16 v1, v1, 0x300

    #@ae
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@b0
    and-int/lit16 v2, v2, 0x300

    #@b2
    if-eq v1, v2, :cond_bd

    #@b4
    .line 3563
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@b6
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@b8
    and-int/lit16 v2, v2, 0x300

    #@ba
    or-int/2addr v1, v2

    #@bb
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@bd
    .line 3567
    :cond_bd
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api26Impl;->generateConfigDelta_colorMode(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    #@c0
    .line 3570
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@c2
    and-int/lit8 v1, v1, 0xf

    #@c4
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@c6
    and-int/lit8 v2, v2, 0xf

    #@c8
    if-eq v1, v2, :cond_d3

    #@ca
    .line 3572
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@cc
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@ce
    and-int/lit8 v2, v2, 0xf

    #@d0
    or-int/2addr v1, v2

    #@d1
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@d3
    .line 3575
    :cond_d3
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@d5
    and-int/lit8 v1, v1, 0x30

    #@d7
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@d9
    and-int/lit8 v2, v2, 0x30

    #@db
    if-eq v1, v2, :cond_e6

    #@dd
    .line 3577
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@df
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@e1
    and-int/lit8 v2, v2, 0x30

    #@e3
    or-int/2addr v1, v2

    #@e4
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@e6
    .line 3580
    :cond_e6
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@e8
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@ea
    if-eq v1, v2, :cond_f0

    #@ec
    .line 3581
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@ee
    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@f0
    .line 3584
    :cond_f0
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f2
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f4
    if-eq v1, v2, :cond_fa

    #@f6
    .line 3585
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f8
    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@fa
    .line 3588
    :cond_fa
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@fc
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@fe
    if-eq v1, v2, :cond_104

    #@100
    .line 3589
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@102
    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@104
    .line 3593
    :cond_104
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api17Impl;->generateConfigDelta_densityDpi(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    #@107
    :cond_107
    :goto_107
    return-object v0
.end method

.method private getAutoBatteryNightModeManager(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    .registers 3

    #@0
    .line 2651
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoBatteryNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 2652
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;

    #@6
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoBatteryNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@b
    .line 2654
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoBatteryNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@d
    return-object p1
.end method

.method private getAutoTimeNightModeManager(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    .registers 3

    #@0
    .line 2643
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoTimeNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@2
    if-nez v0, :cond_f

    #@4
    .line 2644
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;

    #@6
    .line 2645
    invoke-static {p1}, Landroidx/appcompat/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroidx/appcompat/app/TwilightManager;

    #@9
    move-result-object p1

    #@a
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V

    #@d
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoTimeNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@f
    .line 2647
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoTimeNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@11
    return-object p1
.end method

.method private initWindowDecorActionBar()V
    .registers 4

    #@0
    .line 556
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    #@3
    .line 558
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@5
    if-eqz v0, :cond_38

    #@7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@9
    if-eqz v0, :cond_c

    #@b
    goto :goto_38

    #@c
    .line 562
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@e
    instance-of v1, v0, Landroid/app/Activity;

    #@10
    if-eqz v1, :cond_20

    #@12
    .line 563
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar;

    #@14
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@16
    check-cast v1, Landroid/app/Activity;

    #@18
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    #@1a
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    #@1d
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@1f
    goto :goto_2f

    #@20
    .line 564
    :cond_20
    instance-of v0, v0, Landroid/app/Dialog;

    #@22
    if-eqz v0, :cond_2f

    #@24
    .line 565
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar;

    #@26
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@28
    check-cast v1, Landroid/app/Dialog;

    #@2a
    invoke-direct {v0, v1}, Landroidx/appcompat/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    #@2d
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@2f
    .line 567
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@31
    if-eqz v0, :cond_38

    #@33
    .line 568
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    #@35
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    #@38
    :cond_38
    :goto_38
    return-void
.end method

.method private initializePanelContent(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 5

    #@0
    .line 1842
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_a

    #@5
    .line 1843
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@7
    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@9
    return v1

    #@a
    .line 1847
    :cond_a
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@c
    const/4 v2, 0x0

    #@d
    if-nez v0, :cond_10

    #@f
    return v2

    #@10
    .line 1851
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    #@12
    if-nez v0, :cond_1b

    #@14
    .line 1852
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    #@16
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@19
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    #@1b
    .line 1855
    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    #@1d
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->getListMenuView(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)Landroidx/appcompat/view/menu/MenuView;

    #@20
    move-result-object v0

    #@21
    .line 1857
    check-cast v0, Landroid/view/View;

    #@23
    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@25
    .line 1859
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@27
    if-eqz p1, :cond_2a

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    move v1, v2

    #@2b
    :goto_2b
    return v1
.end method

.method private initializePanelDecor(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 4

    #@0
    .line 1748
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    #@7
    .line 1749
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;

    #@9
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    #@b
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    #@e
    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@10
    const/16 v0, 0x51

    #@12
    .line 1750
    iput v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    #@14
    const/4 p1, 0x1

    #@15
    return p1
.end method

.method private initializePanelMenu(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 8

    #@0
    .line 1799
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2
    .line 1802
    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@4
    const/4 v2, 0x1

    #@5
    if-eqz v1, :cond_d

    #@7
    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@9
    const/16 v3, 0x6c

    #@b
    if-ne v1, v3, :cond_65

    #@d
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@f
    if-eqz v1, :cond_65

    #@11
    .line 1804
    new-instance v1, Landroid/util/TypedValue;

    #@13
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@16
    .line 1805
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@19
    move-result-object v3

    #@1a
    .line 1806
    sget v4, Landroidx/appcompat/R$attr;->actionBarTheme:I

    #@1c
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@1f
    .line 1809
    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    #@21
    if-eqz v4, :cond_39

    #@23
    .line 1810
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@2a
    move-result-object v4

    #@2b
    .line 1811
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@2e
    .line 1812
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    #@30
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@33
    .line 1813
    sget v5, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    #@35
    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@38
    goto :goto_3f

    #@39
    .line 1816
    :cond_39
    sget v4, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    #@3b
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@3e
    const/4 v4, 0x0

    #@3f
    .line 1820
    :goto_3f
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    #@41
    if-eqz v5, :cond_55

    #@43
    if-nez v4, :cond_50

    #@45
    .line 1822
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@4c
    move-result-object v4

    #@4d
    .line 1823
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@50
    .line 1825
    :cond_50
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    #@52
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@55
    :cond_55
    if-eqz v4, :cond_65

    #@57
    .line 1829
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    #@59
    const/4 v3, 0x0

    #@5a
    invoke-direct {v1, v0, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@5d
    .line 1830
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@64
    move-object v0, v1

    #@65
    .line 1834
    :cond_65
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    #@67
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@6a
    .line 1835
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    #@6d
    .line 1836
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@70
    return v2
.end method

.method private invalidatePanelMenu(I)V
    .registers 4

    #@0
    .line 2164
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    #@2
    const/4 v1, 0x1

    #@3
    shl-int p1, v1, p1

    #@5
    or-int/2addr p1, v0

    #@6
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    #@8
    .line 2166
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    #@a
    if-nez p1, :cond_19

    #@c
    .line 2167
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@e
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@11
    move-result-object p1

    #@12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@14
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@17
    .line 2168
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    #@19
    :cond_19
    return-void
.end method

.method private isActivityManifestHandlingUiMode(Landroid/content/Context;)Z
    .registers 8

    #@0
    .line 2658
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActivityHandlesUiModeChecked:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_45

    #@5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@7
    instance-of v0, v0, Landroid/app/Activity;

    #@9
    if-eqz v0, :cond_45

    #@b
    .line 2659
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e
    move-result-object v0

    #@f
    const/4 v2, 0x0

    #@10
    if-nez v0, :cond_13

    #@12
    return v2

    #@13
    .line 2670
    :cond_13
    :try_start_13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@15
    const/16 v4, 0x1d

    #@17
    if-lt v3, v4, :cond_1c

    #@19
    const/high16 v3, 0x100c0000

    #@1b
    goto :goto_1e

    #@1c
    :cond_1c
    const/high16 v3, 0xc0000

    #@1e
    .line 2678
    :goto_1e
    new-instance v4, Landroid/content/ComponentName;

    #@20
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@22
    .line 2679
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@25
    move-result-object v5

    #@26
    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@29
    .line 2678
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@2c
    move-result-object p1

    #@2d
    if-eqz p1, :cond_37

    #@2f
    .line 2680
    iget p1, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@31
    and-int/lit16 p1, p1, 0x200

    #@33
    if-eqz p1, :cond_37

    #@35
    move p1, v1

    #@36
    goto :goto_38

    #@37
    :cond_37
    move p1, v2

    #@38
    :goto_38
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActivityHandlesUiMode:Z
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_3a} :catch_3b

    #@3a
    goto :goto_45

    #@3b
    :catch_3b
    move-exception p1

    #@3c
    const-string v0, "AppCompatDelegate"

    #@3e
    const-string v3, "Exception while getting ActivityInfo"

    #@40
    .line 2685
    invoke-static {v0, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 2686
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActivityHandlesUiMode:Z

    #@45
    .line 2690
    :cond_45
    :goto_45
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActivityHandlesUiModeChecked:Z

    #@47
    .line 2692
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActivityHandlesUiMode:Z

    #@49
    return p1
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 2017
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_14

    #@6
    const/4 v0, 0x1

    #@7
    .line 2018
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@a
    move-result-object p1

    #@b
    .line 2019
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@d
    if-nez v0, :cond_14

    #@f
    .line 2020
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@12
    move-result p1

    #@13
    return p1

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    return p1
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    .line 2028
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    const/4 v0, 0x1

    #@7
    .line 2033
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@a
    move-result-object v2

    #@b
    if-nez p1, :cond_43

    #@d
    .line 2034
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@f
    if-eqz p1, :cond_43

    #@11
    .line 2035
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_43

    #@17
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@19
    .line 2036
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_43

    #@23
    .line 2037
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@25
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    #@28
    move-result p1

    #@29
    if-nez p1, :cond_3c

    #@2b
    .line 2038
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@2d
    if-nez p1, :cond_62

    #@2f
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@32
    move-result p1

    #@33
    if-eqz p1, :cond_62

    #@35
    .line 2039
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@37
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    #@3a
    move-result v0

    #@3b
    goto :goto_6a

    #@3c
    .line 2042
    :cond_3c
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@3e
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    #@41
    move-result v0

    #@42
    goto :goto_6a

    #@43
    .line 2045
    :cond_43
    iget-boolean p1, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@45
    if-nez p1, :cond_64

    #@47
    iget-boolean p1, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    #@49
    if-eqz p1, :cond_4c

    #@4b
    goto :goto_64

    #@4c
    .line 2051
    :cond_4c
    iget-boolean p1, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@4e
    if-eqz p1, :cond_62

    #@50
    .line 2053
    iget-boolean p1, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    #@52
    if-eqz p1, :cond_5b

    #@54
    .line 2056
    iput-boolean v1, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@56
    .line 2057
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@59
    move-result p1

    #@5a
    goto :goto_5c

    #@5b
    :cond_5b
    move p1, v0

    #@5c
    :goto_5c
    if-eqz p1, :cond_62

    #@5e
    .line 2062
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->openPanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@61
    goto :goto_6a

    #@62
    :cond_62
    move v0, v1

    #@63
    goto :goto_6a

    #@64
    .line 2048
    :cond_64
    :goto_64
    iget-boolean p1, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@66
    .line 2050
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@69
    move v0, p1

    #@6a
    :goto_6a
    if-eqz v0, :cond_87

    #@6c
    .line 2069
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@6e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@71
    move-result-object p1

    #@72
    const-string p2, "audio"

    #@74
    .line 2070
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@77
    move-result-object p1

    #@78
    check-cast p1, Landroid/media/AudioManager;

    #@7a
    if-eqz p1, :cond_80

    #@7c
    .line 2072
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@7f
    goto :goto_87

    #@80
    :cond_80
    const-string p1, "AppCompatDelegate"

    #@82
    const-string p2, "Couldn\'t get audio manager"

    #@84
    .line 2074
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    :cond_87
    :goto_87
    return v0
.end method

.method private openPanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 15

    #@0
    .line 1650
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@2
    if-nez v0, :cond_f7

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@6
    if-eqz v0, :cond_a

    #@8
    goto/16 :goto_f7

    #@a
    .line 1656
    :cond_a
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    if-nez v0, :cond_27

    #@10
    .line 1657
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@19
    move-result-object v0

    #@1a
    .line 1658
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@1c
    and-int/lit8 v0, v0, 0xf

    #@1e
    const/4 v3, 0x4

    #@1f
    if-ne v0, v3, :cond_23

    #@21
    move v0, v2

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v0, v1

    #@24
    :goto_24
    if-eqz v0, :cond_27

    #@26
    return-void

    #@27
    .line 1665
    :cond_27
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    #@2a
    move-result-object v0

    #@2b
    if-eqz v0, :cond_3b

    #@2d
    .line 1666
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@2f
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@31
    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@34
    move-result v0

    #@35
    if-nez v0, :cond_3b

    #@37
    .line 1668
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@3a
    return-void

    #@3b
    .line 1672
    :cond_3b
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@3d
    const-string v3, "window"

    #@3f
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/view/WindowManager;

    #@45
    if-nez v0, :cond_48

    #@47
    return-void

    #@48
    .line 1678
    :cond_48
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@4b
    move-result p2

    #@4c
    if-nez p2, :cond_4f

    #@4e
    return-void

    #@4f
    .line 1683
    :cond_4f
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@51
    const/4 v3, -0x2

    #@52
    if-eqz p2, :cond_6c

    #@54
    iget-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    #@56
    if-eqz p2, :cond_59

    #@58
    goto :goto_6c

    #@59
    .line 1722
    :cond_59
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@5b
    if-eqz p2, :cond_d2

    #@5d
    .line 1725
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@5f
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@62
    move-result-object p2

    #@63
    if-eqz p2, :cond_d2

    #@65
    .line 1726
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@67
    const/4 v4, -0x1

    #@68
    if-ne p2, v4, :cond_d2

    #@6a
    move v5, v4

    #@6b
    goto :goto_d3

    #@6c
    .line 1684
    :cond_6c
    :goto_6c
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@6e
    if-nez p2, :cond_7b

    #@70
    .line 1686
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initializePanelDecor(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    #@73
    move-result p2

    #@74
    if-eqz p2, :cond_7a

    #@76
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@78
    if-nez p2, :cond_8c

    #@7a
    :cond_7a
    return-void

    #@7b
    .line 1688
    :cond_7b
    iget-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    #@7d
    if-eqz p2, :cond_8c

    #@7f
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@81
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    #@84
    move-result p2

    #@85
    if-lez p2, :cond_8c

    #@87
    .line 1690
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@89
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@8c
    .line 1694
    :cond_8c
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initializePanelContent(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    #@8f
    move-result p2

    #@90
    if-eqz p2, :cond_f5

    #@92
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->hasPanelItems()Z

    #@95
    move-result p2

    #@96
    if-nez p2, :cond_99

    #@98
    goto :goto_f5

    #@99
    .line 1701
    :cond_99
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@9b
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9e
    move-result-object p2

    #@9f
    if-nez p2, :cond_a6

    #@a1
    .line 1703
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    #@a3
    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@a6
    .line 1706
    :cond_a6
    iget v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->background:I

    #@a8
    .line 1707
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@aa
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    #@ad
    .line 1709
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@af
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b2
    move-result-object v4

    #@b3
    .line 1710
    instance-of v5, v4, Landroid/view/ViewGroup;

    #@b5
    if-eqz v5, :cond_be

    #@b7
    .line 1711
    check-cast v4, Landroid/view/ViewGroup;

    #@b9
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@bb
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@be
    .line 1713
    :cond_be
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@c0
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@c2
    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@c5
    .line 1719
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@c7
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    #@ca
    move-result p2

    #@cb
    if-nez p2, :cond_d2

    #@cd
    .line 1720
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@cf
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    #@d2
    :cond_d2
    move v5, v3

    #@d3
    .line 1731
    :goto_d3
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    #@d5
    .line 1733
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    #@d7
    const/4 v6, -0x2

    #@d8
    iget v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->x:I

    #@da
    iget v8, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->y:I

    #@dc
    const/16 v9, 0x3ea

    #@de
    const/high16 v10, 0x820000

    #@e0
    const/4 v11, -0x3

    #@e1
    move-object v4, p2

    #@e2
    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    #@e5
    .line 1740
    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    #@e7
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@e9
    .line 1741
    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->windowAnimations:I

    #@eb
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@ed
    .line 1743
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@ef
    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@f2
    .line 1744
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@f4
    return-void

    #@f5
    .line 1697
    :cond_f5
    :goto_f5
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    #@f7
    :cond_f7
    :goto_f7
    return-void
.end method

.method private performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    #@0
    .line 2140
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 2148
    :cond_8
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@a
    if-nez v0, :cond_12

    #@c
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1c

    #@12
    :cond_12
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@14
    if-eqz v0, :cond_1c

    #@16
    .line 2150
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@18
    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    #@1b
    move-result v1

    #@1c
    :cond_1c
    if-eqz v1, :cond_2a

    #@1e
    const/4 p2, 0x1

    #@1f
    and-int/lit8 p3, p4, 0x1

    #@21
    if-nez p3, :cond_2a

    #@23
    .line 2155
    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@25
    if-nez p3, :cond_2a

    #@27
    .line 2156
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@2a
    :cond_2a
    return v1
.end method

.method private preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11

    #@0
    .line 1863
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 1868
    :cond_6
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@8
    const/4 v2, 0x1

    #@9
    if-eqz v0, :cond_c

    #@b
    return v2

    #@c
    .line 1872
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@e
    if-eqz v0, :cond_15

    #@10
    if-eq v0, p1, :cond_15

    #@12
    .line 1874
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@15
    .line 1877
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_23

    #@1b
    .line 1880
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@1d
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    #@20
    move-result-object v3

    #@21
    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@23
    .line 1883
    :cond_23
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@25
    if-eqz v3, :cond_30

    #@27
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@29
    const/16 v4, 0x6c

    #@2b
    if-ne v3, v4, :cond_2e

    #@2d
    goto :goto_30

    #@2e
    :cond_2e
    move v3, v1

    #@2f
    goto :goto_31

    #@30
    :cond_30
    :goto_30
    move v3, v2

    #@31
    :goto_31
    if-eqz v3, :cond_3a

    #@33
    .line 1886
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@35
    if-eqz v4, :cond_3a

    #@37
    .line 1889
    invoke-interface {v4}, Landroidx/appcompat/widget/DecorContentParent;->setMenuPrepared()V

    #@3a
    .line 1892
    :cond_3a
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@3c
    if-nez v4, :cond_ea

    #@3e
    if-eqz v3, :cond_48

    #@40
    .line 1893
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@43
    move-result-object v4

    #@44
    instance-of v4, v4, Landroidx/appcompat/app/ToolbarActionBar;

    #@46
    if-nez v4, :cond_ea

    #@48
    .line 1896
    :cond_48
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@4a
    const/4 v5, 0x0

    #@4b
    if-eqz v4, :cond_51

    #@4d
    iget-boolean v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    #@4f
    if-eqz v4, :cond_9a

    #@51
    .line 1897
    :cond_51
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@53
    if-nez v4, :cond_60

    #@55
    .line 1898
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initializePanelMenu(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_5f

    #@5b
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@5d
    if-nez v4, :cond_60

    #@5f
    :cond_5f
    return v1

    #@60
    :cond_60
    if-eqz v3, :cond_7a

    #@62
    .line 1903
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@64
    if-eqz v4, :cond_7a

    #@66
    .line 1904
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    #@68
    if-nez v4, :cond_71

    #@6a
    .line 1905
    new-instance v4, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    #@6c
    invoke-direct {v4, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@6f
    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    #@71
    .line 1907
    :cond_71
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@73
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@75
    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    #@77
    invoke-interface {v4, v6, v7}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@7a
    .line 1912
    :cond_7a
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@7c
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@7f
    .line 1913
    iget v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@81
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@83
    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@86
    move-result v4

    #@87
    if-nez v4, :cond_98

    #@89
    .line 1915
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@8c
    if-eqz v3, :cond_97

    #@8e
    .line 1917
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@90
    if-eqz p1, :cond_97

    #@92
    .line 1919
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    #@94
    invoke-interface {p1, v5, p2}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@97
    :cond_97
    return v1

    #@98
    .line 1925
    :cond_98
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    #@9a
    .line 1930
    :cond_9a
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@9c
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@9f
    .line 1934
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@a1
    if-eqz v4, :cond_ac

    #@a3
    .line 1935
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@a5
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@a7
    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    #@aa
    .line 1936
    iput-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@ac
    .line 1940
    :cond_ac
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@ae
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@b0
    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@b3
    move-result v0

    #@b4
    if-nez v0, :cond_c7

    #@b6
    if-eqz v3, :cond_c1

    #@b8
    .line 1941
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@ba
    if-eqz p2, :cond_c1

    #@bc
    .line 1944
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    #@be
    invoke-interface {p2, v5, v0}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    #@c1
    .line 1946
    :cond_c1
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@c3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@c6
    return v1

    #@c7
    :cond_c7
    if-eqz p2, :cond_ce

    #@c9
    .line 1952
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@cc
    move-result p2

    #@cd
    goto :goto_cf

    #@ce
    :cond_ce
    const/4 p2, -0x1

    #@cf
    .line 1951
    :goto_cf
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@d2
    move-result-object p2

    #@d3
    .line 1953
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    #@d6
    move-result p2

    #@d7
    if-eq p2, v2, :cond_db

    #@d9
    move p2, v2

    #@da
    goto :goto_dc

    #@db
    :cond_db
    move p2, v1

    #@dc
    :goto_dc
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    #@de
    .line 1954
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@e0
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    #@e2
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    #@e5
    .line 1955
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@e7
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@ea
    .line 1959
    :cond_ea
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@ec
    .line 1960
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    #@ee
    .line 1961
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@f0
    return v2
.end method

.method private reopenMenu(Z)V
    .registers 7

    #@0
    .line 1755
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz v0, :cond_84

    #@6
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_84

    #@c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@e
    .line 1756
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_20

    #@18
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@1a
    .line 1757
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_84

    #@20
    .line 1759
    :cond_20
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    #@23
    move-result-object v0

    #@24
    .line 1761
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@26
    invoke-interface {v3}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    #@29
    move-result v3

    #@2a
    const/16 v4, 0x6c

    #@2c
    if-eqz v3, :cond_44

    #@2e
    if-nez p1, :cond_31

    #@30
    goto :goto_44

    #@31
    .line 1781
    :cond_31
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@33
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    #@36
    .line 1782
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@38
    if-nez p1, :cond_83

    #@3a
    .line 1783
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@3d
    move-result-object p1

    #@3e
    .line 1784
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@40
    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@43
    goto :goto_83

    #@44
    :cond_44
    :goto_44
    if-eqz v0, :cond_83

    #@46
    .line 1762
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@48
    if-nez p1, :cond_83

    #@4a
    .line 1764
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    #@4c
    if-eqz p1, :cond_63

    #@4e
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    #@50
    and-int/2addr p1, v1

    #@51
    if-eqz p1, :cond_63

    #@53
    .line 1766
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@55
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@58
    move-result-object p1

    #@59
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@5b
    invoke-virtual {p1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5e
    .line 1767
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@60
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@63
    .line 1770
    :cond_63
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@66
    move-result-object p1

    #@67
    .line 1774
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@69
    if-eqz v1, :cond_83

    #@6b
    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    #@6d
    if-nez v1, :cond_83

    #@6f
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@71
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@73
    .line 1775
    invoke-interface {v0, v2, v1, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_83

    #@79
    .line 1776
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@7b
    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@7e
    .line 1777
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@80
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    #@83
    :cond_83
    :goto_83
    return-void

    #@84
    .line 1790
    :cond_84
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@87
    move-result-object p1

    #@88
    .line 1792
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    #@8a
    .line 1793
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@8d
    const/4 v0, 0x0

    #@8e
    .line 1795
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->openPanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@91
    return-void
.end method

.method private sanitizeWindowFeatureId(I)I
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    const-string v1, "AppCompatDelegate"

    #@4
    if-ne p1, v0, :cond_e

    #@6
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    #@8
    .line 2334
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    const/16 p1, 0x6c

    #@d
    return p1

    #@e
    :cond_e
    const/16 v0, 0x9

    #@10
    if-ne p1, v0, :cond_19

    #@12
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    #@14
    .line 2338
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    const/16 p1, 0x6d

    #@19
    :cond_19
    return p1
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 1581
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@6
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    :goto_a
    if-nez p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    return p1

    #@e
    :cond_e
    if-eq p1, v1, :cond_23

    #@10
    .line 1589
    instance-of v2, p1, Landroid/view/View;

    #@12
    if-eqz v2, :cond_23

    #@14
    move-object v2, p1

    #@15
    check-cast v2, Landroid/view/View;

    #@17
    .line 1590
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1e

    #@1d
    goto :goto_23

    #@1e
    .line 1597
    :cond_1e
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@21
    move-result-object p1

    #@22
    goto :goto_a

    #@23
    :cond_23
    :goto_23
    return v0
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .registers 3

    #@0
    .line 2326
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 2327
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@7
    const-string v1, "Window feature must be requested before adding content"

    #@9
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0
.end method

.method private tryUnwrapContext()Landroidx/appcompat/app/AppCompatActivity;
    .registers 4

    #@0
    .line 1634
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2
    :goto_2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_17

    #@5
    .line 1636
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    #@7
    if-eqz v2, :cond_c

    #@9
    .line 1637
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    #@b
    return-object v0

    #@c
    .line 1639
    :cond_c
    instance-of v2, v0, Landroid/content/ContextWrapper;

    #@e
    if-eqz v2, :cond_17

    #@10
    .line 1640
    check-cast v0, Landroid/content/ContextWrapper;

    #@12
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@15
    move-result-object v0

    #@16
    goto :goto_2

    #@17
    :cond_17
    return-object v1
.end method

.method private updateForNightMode(IZ)Z
    .registers 10

    #@0
    .line 2520
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 2521
    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideConfigurationForDayNight(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    .line 2523
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@a
    invoke-direct {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->isActivityManifestHandlingUiMode(Landroid/content/Context;)Z

    #@d
    move-result v3

    #@e
    .line 2524
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEffectiveConfiguration:Landroid/content/res/Configuration;

    #@10
    if-nez v4, :cond_1c

    #@12
    .line 2525
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1b
    move-result-object v4

    #@1c
    .line 2526
    :cond_1c
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    #@1e
    and-int/lit8 v4, v4, 0x30

    #@20
    .line 2528
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    #@22
    and-int/lit8 v0, v0, 0x30

    #@24
    const/4 v5, 0x1

    #@25
    if-eq v4, v0, :cond_4d

    #@27
    if-eqz p2, :cond_4d

    #@29
    if-nez v3, :cond_4d

    #@2b
    .line 2539
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mBaseContextAttached:Z

    #@2d
    if-eqz p2, :cond_4d

    #@2f
    sget-boolean p2, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanReturnDifferentContext:Z

    #@31
    if-nez p2, :cond_37

    #@33
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mCreated:Z

    #@35
    if-eqz p2, :cond_4d

    #@37
    :cond_37
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@39
    instance-of v6, p2, Landroid/app/Activity;

    #@3b
    if-eqz v6, :cond_4d

    #@3d
    check-cast p2, Landroid/app/Activity;

    #@3f
    .line 2545
    invoke-virtual {p2}, Landroid/app/Activity;->isChild()Z

    #@42
    move-result p2

    #@43
    if-nez p2, :cond_4d

    #@45
    .line 2552
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@47
    check-cast p2, Landroid/app/Activity;

    #@49
    invoke-static {p2}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    #@4c
    move v2, v5

    #@4d
    :cond_4d
    if-nez v2, :cond_55

    #@4f
    if-eq v4, v0, :cond_55

    #@51
    .line 2563
    invoke-direct {p0, v0, v3, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateResourcesConfigurationForNightMode(IZLandroid/content/res/Configuration;)V

    #@54
    goto :goto_56

    #@55
    :cond_55
    move v5, v2

    #@56
    :goto_56
    if-eqz v5, :cond_63

    #@58
    .line 2573
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@5a
    instance-of v0, p2, Landroidx/appcompat/app/AppCompatActivity;

    #@5c
    if-eqz v0, :cond_63

    #@5e
    .line 2574
    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    #@60
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNightModeChanged(I)V

    #@63
    :cond_63
    return v5
.end method

.method private updateResourcesConfigurationForNightMode(IZLandroid/content/res/Configuration;)V
    .registers 7

    #@0
    .line 2585
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 2586
    new-instance v1, Landroid/content/res/Configuration;

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@f
    if-eqz p3, :cond_14

    #@11
    .line 2588
    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@14
    .line 2591
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@17
    move-result-object p3

    #@18
    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    #@1a
    and-int/lit8 p3, p3, -0x31

    #@1c
    or-int/2addr p1, p3

    #@1d
    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    #@1f
    const/4 p1, 0x0

    #@20
    .line 2592
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@23
    .line 2599
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mThemeResId:I

    #@25
    if-eqz p1, :cond_38

    #@27
    .line 2602
    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {p3, p1}, Landroid/content/Context;->setTheme(I)V

    #@2c
    .line 2610
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@31
    move-result-object p1

    #@32
    iget p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mThemeResId:I

    #@34
    const/4 v0, 0x1

    #@35
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@38
    :cond_38
    if-eqz p2, :cond_68

    #@3a
    .line 2614
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@3c
    instance-of p2, p1, Landroid/app/Activity;

    #@3e
    if-eqz p2, :cond_68

    #@40
    .line 2615
    check-cast p1, Landroid/app/Activity;

    #@42
    .line 2616
    instance-of p2, p1, Landroidx/lifecycle/LifecycleOwner;

    #@44
    if-eqz p2, :cond_5d

    #@46
    .line 2619
    move-object p2, p1

    #@47
    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    #@49
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@4c
    move-result-object p2

    #@4d
    .line 2620
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@50
    move-result-object p2

    #@51
    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    #@53
    invoke-virtual {p2, p3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    #@56
    move-result p2

    #@57
    if-eqz p2, :cond_68

    #@59
    .line 2621
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@5c
    goto :goto_68

    #@5d
    .line 2625
    :cond_5d
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mCreated:Z

    #@5f
    if-eqz p2, :cond_68

    #@61
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@63
    if-nez p2, :cond_68

    #@65
    .line 2626
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@68
    :cond_68
    :goto_68
    return-void
.end method

.method private updateStatusGuardColor(Landroid/view/View;)V
    .registers 4

    #@0
    .line 2318
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0x2000

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
    if-eqz v0, :cond_16

    #@d
    .line 2321
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@f
    sget v1, Landroidx/appcompat/R$color;->abc_decor_view_status_guard_light:I

    #@11
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@14
    move-result v0

    #@15
    goto :goto_1e

    #@16
    .line 2322
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@18
    sget v1, Landroidx/appcompat/R$color;->abc_decor_view_status_guard:I

    #@1a
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@1d
    move-result v0

    #@1e
    .line 2320
    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@21
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    .line 725
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    #@3
    .line 726
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@5
    const v1, 0x1020002

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    .line 727
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 728
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@13
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@15
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@18
    move-result-object p2

    #@19
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    #@1c
    return-void
.end method

.method public applyDayNight()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2377
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight(Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    .line 349
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mBaseContextAttached:Z

    #@3
    .line 361
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->calculateNightMode()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->mapNightMode(Landroid/content/Context;I)I

    #@a
    move-result v1

    #@b
    .line 366
    sget-boolean v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanApplyOverrideConfiguration:Z

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    if-eqz v2, :cond_20

    #@11
    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    #@13
    if-eqz v2, :cond_20

    #@15
    .line 368
    invoke-direct {p0, p1, v1, v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideConfigurationForDayNight(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    #@18
    move-result-object v2

    #@19
    .line 376
    :try_start_19
    move-object v5, p1

    #@1a
    check-cast v5, Landroid/view/ContextThemeWrapper;

    #@1c
    invoke-static {v5, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$ContextThemeWrapperCompatApi17Impl;->applyOverrideConfiguration(Landroid/view/ContextThemeWrapper;Landroid/content/res/Configuration;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1f} :catch_20

    #@1f
    return-object p1

    #@20
    .line 387
    :catch_20
    :cond_20
    instance-of v2, p1, Landroidx/appcompat/view/ContextThemeWrapper;

    #@22
    if-eqz v2, :cond_2f

    #@24
    .line 388
    invoke-direct {p0, p1, v1, v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideConfigurationForDayNight(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    #@27
    move-result-object v2

    #@28
    .line 396
    :try_start_28
    move-object v5, p1

    #@29
    check-cast v5, Landroidx/appcompat/view/ContextThemeWrapper;

    #@2b
    invoke-virtual {v5, v2}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_2e} :catch_2f

    #@2e
    return-object p1

    #@2f
    .line 410
    :catch_2f
    :cond_2f
    sget-boolean v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanReturnDifferentContext:Z

    #@31
    if-nez v2, :cond_38

    #@33
    .line 411
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;

    #@36
    move-result-object p1

    #@37
    return-object p1

    #@38
    .line 422
    :cond_38
    new-instance v2, Landroid/content/res/Configuration;

    #@3a
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    #@3d
    const/4 v5, -0x1

    #@3e
    .line 425
    iput v5, v2, Landroid/content/res/Configuration;->uiMode:I

    #@40
    const/4 v5, 0x0

    #@41
    .line 427
    iput v5, v2, Landroid/content/res/Configuration;->fontScale:F

    #@43
    .line 429
    invoke-static {p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api17Impl;->createConfigurationContext(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;

    #@46
    move-result-object v2

    #@47
    .line 430
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@4e
    move-result-object v2

    #@4f
    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@56
    move-result-object v5

    #@57
    .line 433
    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    #@59
    iput v6, v2, Landroid/content/res/Configuration;->uiMode:I

    #@5b
    .line 436
    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@5e
    move-result v6

    #@5f
    if-nez v6, :cond_65

    #@61
    .line 437
    invoke-static {v2, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->generateConfigDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@64
    move-result-object v3

    #@65
    .line 445
    :cond_65
    invoke-direct {p0, p1, v1, v3, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideConfigurationForDayNight(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    #@68
    move-result-object v1

    #@69
    .line 454
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    #@6b
    sget v3, Landroidx/appcompat/R$style;->Theme_AppCompat_Empty:I

    #@6d
    invoke-direct {v2, p1, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@70
    .line 456
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    #@73
    .line 463
    :try_start_73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@76
    move-result-object p1
    :try_end_77
    .catch Ljava/lang/NullPointerException; {:try_start_73 .. :try_end_77} :catch_7c

    #@77
    if-eqz p1, :cond_7a

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    move v0, v4

    #@7b
    :goto_7b
    move v4, v0

    #@7c
    :catch_7c
    if-eqz v4, :cond_85

    #@7e
    .line 473
    invoke-virtual {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    #@81
    move-result-object p1

    #@82
    invoke-static {p1}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat;->rebase(Landroid/content/res/Resources$Theme;)V

    #@85
    .line 476
    :cond_85
    invoke-super {p0, v2}, Landroidx/appcompat/app/AppCompatDelegate;->attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;

    #@88
    move-result-object p1

    #@89
    return-object p1
.end method

.method callOnPanelClosed(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6

    #@0
    if-nez p3, :cond_11

    #@2
    if-nez p2, :cond_d

    #@4
    if-ltz p1, :cond_d

    #@6
    .line 2085
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@8
    array-length v1, v0

    #@9
    if-ge p1, v1, :cond_d

    #@b
    .line 2086
    aget-object p2, v0, p1

    #@d
    :cond_d
    if-eqz p2, :cond_11

    #@f
    .line 2092
    iget-object p3, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@11
    :cond_11
    if-eqz p2, :cond_18

    #@13
    .line 2097
    iget-boolean p2, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@15
    if-nez p2, :cond_18

    #@17
    return-void

    #@18
    .line 2101
    :cond_18
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@1a
    if-nez p2, :cond_27

    #@1c
    .line 2105
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@1e
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@20
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p2, v0, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnPanelClosed(Landroid/view/Window$Callback;ILandroid/view/Menu;)V

    #@27
    :cond_27
    return-void
.end method

.method checkCloseActionMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 4

    #@0
    .line 1967
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 1971
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    #@8
    .line 1972
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@a
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    #@d
    .line 1973
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_1c

    #@13
    .line 1974
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@15
    if-nez v1, :cond_1c

    #@17
    const/16 v1, 0x6c

    #@19
    .line 1975
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    .line 1977
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    #@1f
    return-void
.end method

.method closePanel(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1981
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@4
    move-result-object p1

    #@5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@8
    return-void
.end method

.method closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .registers 6

    #@0
    if-eqz p2, :cond_16

    #@2
    .line 1985
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@4
    if-nez v0, :cond_16

    #@6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 1986
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_16

    #@10
    .line 1987
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->checkCloseActionMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@15
    return-void

    #@16
    .line 1991
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@18
    const-string v1, "window"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/view/WindowManager;

    #@20
    const/4 v1, 0x0

    #@21
    if-eqz v0, :cond_37

    #@23
    .line 1992
    iget-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@25
    if-eqz v2, :cond_37

    #@27
    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@29
    if-eqz v2, :cond_37

    #@2b
    .line 1993
    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    #@2d
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@30
    if-eqz p2, :cond_37

    #@32
    .line 1996
    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@34
    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    #@37
    :cond_37
    const/4 p2, 0x0

    #@38
    .line 2000
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@3a
    .line 2001
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    #@3c
    .line 2002
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@3e
    .line 2005
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@40
    const/4 p2, 0x1

    #@41
    .line 2009
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    #@43
    .line 2011
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@45
    if-ne p2, p1, :cond_49

    #@47
    .line 2012
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@49
    :cond_49
    return-void
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16

    #@0
    .line 1528
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_5a

    #@5
    .line 1529
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@7
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 1530
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    #@f
    .line 1531
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_1d

    #@15
    .line 1535
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    #@17
    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    #@1a
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    #@1c
    goto :goto_5a

    #@1d
    .line 1538
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@1f
    .line 1539
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@26
    move-result-object v2

    #@27
    new-array v3, v1, [Ljava/lang/Class;

    #@29
    .line 1541
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@2c
    move-result-object v2

    #@2d
    new-array v3, v1, [Ljava/lang/Object;

    #@2f
    .line 1542
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    #@35
    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_38

    #@37
    goto :goto_5a

    #@38
    :catchall_38
    move-exception v2

    #@39
    .line 1544
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    const-string v4, "Failed to instantiate custom view inflater "

    #@3d
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    const-string v3, ". Falling back to default."

    #@46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    const-string v3, "AppCompatDelegate"

    #@50
    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 1546
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    #@55
    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    #@58
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    #@5a
    .line 1552
    :cond_5a
    :goto_5a
    sget-boolean v8, Landroidx/appcompat/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    #@5c
    if-eqz v8, :cond_8b

    #@5e
    .line 1553
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLayoutIncludeDetector:Landroidx/appcompat/app/LayoutIncludeDetector;

    #@60
    if-nez v0, :cond_69

    #@62
    .line 1554
    new-instance v0, Landroidx/appcompat/app/LayoutIncludeDetector;

    #@64
    invoke-direct {v0}, Landroidx/appcompat/app/LayoutIncludeDetector;-><init>()V

    #@67
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLayoutIncludeDetector:Landroidx/appcompat/app/LayoutIncludeDetector;

    #@69
    .line 1556
    :cond_69
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLayoutIncludeDetector:Landroidx/appcompat/app/LayoutIncludeDetector;

    #@6b
    invoke-virtual {v0, p4}, Landroidx/appcompat/app/LayoutIncludeDetector;->detect(Landroid/util/AttributeSet;)Z

    #@6e
    move-result v0

    #@6f
    const/4 v2, 0x1

    #@70
    if-eqz v0, :cond_74

    #@72
    move v7, v2

    #@73
    goto :goto_8c

    #@74
    .line 1561
    :cond_74
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    #@76
    if-eqz v0, :cond_83

    #@78
    .line 1563
    move-object v0, p4

    #@79
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    #@7b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@7e
    move-result v0

    #@7f
    if-le v0, v2, :cond_8b

    #@81
    move v1, v2

    #@82
    goto :goto_8b

    #@83
    .line 1565
    :cond_83
    move-object v0, p1

    #@84
    check-cast v0, Landroid/view/ViewParent;

    #@86
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->shouldInheritContext(Landroid/view/ViewParent;)Z

    #@89
    move-result v0

    #@8a
    move v1, v0

    #@8b
    :cond_8b
    :goto_8b
    move v7, v1

    #@8c
    .line 1569
    :goto_8c
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroidx/appcompat/app/AppCompatViewInflater;

    #@8e
    const/4 v9, 0x1

    #@8f
    .line 1572
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    #@92
    move-result v10

    #@93
    move-object v3, p1

    #@94
    move-object v4, p2

    #@95
    move-object v5, p3

    #@96
    move-object v6, p4

    #@97
    .line 1569
    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    #@9a
    move-result-object p1

    #@9b
    return-object p1
.end method

.method dismissPopups()V
    .registers 3

    #@0
    .line 2351
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2352
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    #@7
    .line 2355
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@9
    if-eqz v0, :cond_26

    #@b
    .line 2356
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@16
    .line 2357
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_23

    #@1e
    .line 2359
    :try_start_1e
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_23

    #@23
    :catch_23
    :cond_23
    const/4 v0, 0x0

    #@24
    .line 2365
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@26
    .line 2367
    :cond_26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    #@29
    const/4 v0, 0x0

    #@2a
    .line 2369
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@2d
    move-result-object v0

    #@2e
    if-eqz v0, :cond_39

    #@30
    .line 2370
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@32
    if-eqz v1, :cond_39

    #@34
    .line 2371
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@36
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    #@39
    :cond_39
    return-void
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    #@0
    .line 1460
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@2
    instance-of v1, v0, Landroidx/core/view/KeyEventDispatcher$Component;

    #@4
    const/4 v2, 0x1

    #@5
    if-nez v1, :cond_b

    #@7
    instance-of v0, v0, Landroidx/appcompat/app/AppCompatDialog;

    #@9
    if-eqz v0, :cond_1a

    #@b
    .line 1461
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_1a

    #@13
    .line 1462
    invoke-static {v0, p1}, Landroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1a

    #@19
    return v2

    #@1a
    .line 1467
    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@1d
    move-result v0

    #@1e
    const/16 v1, 0x52

    #@20
    if-ne v0, v1, :cond_31

    #@22
    .line 1469
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@24
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@26
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassDispatchKeyEvent(Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_31

    #@30
    return v2

    #@31
    .line 1474
    :cond_31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@34
    move-result v0

    #@35
    .line 1475
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_3c

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    const/4 v2, 0x0

    #@3d
    :goto_3d
    if-eqz v2, :cond_44

    #@3f
    .line 1478
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@42
    move-result p1

    #@43
    goto :goto_48

    #@44
    :cond_44
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@47
    move-result p1

    #@48
    :goto_48
    return p1
.end method

.method doInvalidatePanelMenu(I)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 2173
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@4
    move-result-object v1

    #@5
    .line 2175
    iget-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@7
    if-eqz v2, :cond_25

    #@9
    .line 2176
    new-instance v2, Landroid/os/Bundle;

    #@b
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@e
    .line 2177
    iget-object v3, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@10
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    #@13
    .line 2178
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    #@16
    move-result v3

    #@17
    if-lez v3, :cond_1b

    #@19
    .line 2179
    iput-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@1b
    .line 2182
    :cond_1b
    iget-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@1d
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@20
    .line 2183
    iget-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@22
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    #@25
    .line 2185
    :cond_25
    iput-boolean v0, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    #@27
    .line 2186
    iput-boolean v0, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    #@29
    const/16 v0, 0x6c

    #@2b
    if-eq p1, v0, :cond_2f

    #@2d
    if-nez p1, :cond_40

    #@2f
    .line 2189
    :cond_2f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@31
    if-eqz p1, :cond_40

    #@33
    const/4 p1, 0x0

    #@34
    .line 2191
    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@37
    move-result-object v0

    #@38
    if-eqz v0, :cond_40

    #@3a
    .line 2193
    iput-boolean p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@3c
    const/4 p1, 0x0

    #@3d
    .line 2194
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@40
    :cond_40
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .registers 2

    #@0
    .line 1399
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1400
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    #@7
    :cond_7
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .registers 7

    #@0
    .line 2110
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_7

    #@5
    .line 2111
    array-length v2, v0

    #@6
    goto :goto_8

    #@7
    :cond_7
    move v2, v1

    #@8
    :goto_8
    if-ge v1, v2, :cond_16

    #@a
    .line 2113
    aget-object v3, v0, v1

    #@c
    if-eqz v3, :cond_13

    #@e
    .line 2114
    iget-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    #@10
    if-ne v4, p1, :cond_13

    #@12
    return-object v3

    #@13
    :cond_13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    #@0
    .line 640
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    #@3
    .line 641
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 614
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 616
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    if-nez v0, :cond_10

    #@e
    .line 620
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@10
    :cond_10
    return-object v0
.end method

.method final getAutoTimeNightModeManager()Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
    .registers 2

    #@0
    .line 2639
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getAutoTimeNightModeManager(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    #@0
    .line 3433
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;

    #@2
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@5
    return-object v0
.end method

.method public getLocalNightMode()I
    .registers 2

    #@0
    .line 2429
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@2
    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    #@0
    .line 628
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    #@2
    if-nez v0, :cond_19

    #@4
    .line 629
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    #@7
    .line 630
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    #@9
    .line 631
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@b
    if-eqz v1, :cond_12

    #@d
    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    goto :goto_14

    #@12
    :cond_12
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@14
    :goto_14
    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    #@17
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    #@19
    .line 633
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    #@1b
    return-object v0
.end method

.method protected getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .registers 6

    #@0
    .line 2123
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@2
    if-eqz p2, :cond_7

    #@4
    array-length v0, p2

    #@5
    if-gt v0, p1, :cond_15

    #@7
    :cond_7
    add-int/lit8 v0, p1, 0x1

    #@9
    .line 2124
    new-array v0, v0, [Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@b
    if-eqz p2, :cond_12

    #@d
    .line 2126
    array-length v1, p2

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 2128
    :cond_12
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@14
    move-object p2, v0

    #@15
    .line 2131
    :cond_15
    aget-object v0, p2, p1

    #@17
    if-nez v0, :cond_20

    #@19
    .line 2133
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@1b
    invoke-direct {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    #@1e
    aput-object v0, p2, p1

    #@20
    :cond_20
    return-object v0
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .registers 2

    #@0
    .line 2347
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .registers 2

    #@0
    .line 543
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    #@3
    .line 544
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@5
    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 1151
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@2
    instance-of v1, v0, Landroid/app/Activity;

    #@4
    if-eqz v1, :cond_d

    #@6
    .line 1152
    check-cast v0, Landroid/app/Activity;

    #@8
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1155
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    #@f
    return-object v0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .registers 2

    #@0
    .line 552
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .registers 6

    #@0
    .line 1113
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eq v0, v1, :cond_2b

    #@8
    const/4 v3, 0x2

    #@9
    if-eq v0, v3, :cond_28

    #@b
    const/4 v3, 0x5

    #@c
    if-eq v0, v3, :cond_25

    #@e
    const/16 v3, 0xa

    #@10
    if-eq v0, v3, :cond_22

    #@12
    const/16 v3, 0x6c

    #@14
    if-eq v0, v3, :cond_1f

    #@16
    const/16 v3, 0x6d

    #@18
    if-eq v0, v3, :cond_1c

    #@1a
    move v0, v2

    #@1b
    goto :goto_2d

    #@1c
    .line 1118
    :cond_1c
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    #@1e
    goto :goto_2d

    #@1f
    .line 1115
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@21
    goto :goto_2d

    #@22
    .line 1121
    :cond_22
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    #@24
    goto :goto_2d

    #@25
    .line 1127
    :cond_25
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    #@27
    goto :goto_2d

    #@28
    .line 1124
    :cond_28
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    #@2a
    goto :goto_2d

    #@2b
    .line 1130
    :cond_2b
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    #@2d
    :goto_2d
    if-nez v0, :cond_39

    #@2f
    .line 1133
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@31
    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    #@34
    move-result p1

    #@35
    if-eqz p1, :cond_38

    #@37
    goto :goto_39

    #@38
    :cond_38
    move v1, v2

    #@39
    :cond_39
    :goto_39
    return v1
.end method

.method public installViewFactory()V
    .registers 3

    #@0
    .line 1603
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    .line 1604
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_10

    #@c
    .line 1605
    invoke-static {v0, p0}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    #@f
    goto :goto_1f

    #@10
    .line 1607
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    #@13
    move-result-object v0

    #@14
    instance-of v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    #@16
    if-nez v0, :cond_1f

    #@18
    const-string v0, "AppCompatDelegate"

    #@1a
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    #@1c
    .line 1608
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    :cond_1f
    :goto_1f
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    #@0
    .line 1230
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_15

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->invalidateOptionsMenu()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    goto :goto_15

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    .line 1232
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    #@15
    :cond_15
    :goto_15
    return-void
.end method

.method public isHandleNativeActionModesEnabled()Z
    .registers 2

    #@0
    .line 1395
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    #@2
    return v0
.end method

.method mapNightMode(Landroid/content/Context;I)I
    .registers 5

    #@0
    const/16 v0, -0x64

    #@2
    const/4 v1, -0x1

    #@3
    if-eq p2, v0, :cond_40

    #@5
    if-eq p2, v1, :cond_3f

    #@7
    if-eqz p2, :cond_23

    #@9
    const/4 v0, 0x1

    #@a
    if-eq p2, v0, :cond_3f

    #@c
    const/4 v0, 0x2

    #@d
    if-eq p2, v0, :cond_3f

    #@f
    const/4 v0, 0x3

    #@10
    if-ne p2, v0, :cond_1b

    #@12
    .line 2453
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getAutoBatteryNightModeManager(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@15
    move-result-object p1

    #@16
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->getApplyableNightMode()I

    #@19
    move-result p1

    #@1a
    return p1

    #@1b
    .line 2458
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1d
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    #@1f
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw p1

    #@23
    .line 2443
    :cond_23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@26
    move-result-object p2

    #@27
    const-string v0, "uimode"

    #@29
    .line 2444
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    move-result-object p2

    #@2d
    check-cast p2, Landroid/app/UiModeManager;

    #@2f
    .line 2445
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    #@32
    move-result p2

    #@33
    if-nez p2, :cond_36

    #@35
    return v1

    #@36
    .line 2451
    :cond_36
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getAutoTimeNightModeManager(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->getApplyableNightMode()I

    #@3d
    move-result p1

    #@3e
    return p1

    #@3f
    :cond_3f
    return p2

    #@40
    :cond_40
    return v1
.end method

.method onBackPressed()Z
    .registers 3

    #@0
    .line 1406
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_9

    #@5
    .line 1407
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    #@8
    return v1

    #@9
    .line 1412
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 1413
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->collapseActionView()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_16

    #@15
    return v1

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    #@0
    .line 648
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 651
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 653
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@11
    .line 658
    :cond_11
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    #@1a
    .line 662
    new-instance v0, Landroid/content/res/Configuration;

    #@1c
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@29
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEffectiveConfiguration:Landroid/content/res/Configuration;

    #@2b
    const/4 v0, 0x0

    #@2c
    .line 666
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight(Z)Z

    #@2f
    .line 670
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@3c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    const/4 p1, 0x1

    #@1
    .line 498
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mBaseContextAttached:Z

    #@3
    const/4 v0, 0x0

    #@4
    .line 502
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight(Z)Z

    #@7
    .line 506
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureWindow()V

    #@a
    .line 508
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@c
    instance-of v1, v0, Landroid/app/Activity;

    #@e
    if-eqz v1, :cond_29

    #@10
    .line 511
    :try_start_10
    check-cast v0, Landroid/app/Activity;

    #@12
    invoke-static {v0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    #@15
    move-result-object v0
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_16} :catch_17

    #@16
    goto :goto_18

    #@17
    :catch_17
    const/4 v0, 0x0

    #@18
    :goto_18
    if-eqz v0, :cond_26

    #@1a
    .line 517
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@1d
    move-result-object v0

    #@1e
    if-nez v0, :cond_23

    #@20
    .line 519
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    #@22
    goto :goto_26

    #@23
    .line 521
    :cond_23
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    #@26
    .line 526
    :cond_26
    :goto_26
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->addActiveDelegate(Landroidx/appcompat/app/AppCompatDelegate;)V

    #@29
    .line 529
    :cond_29
    new-instance v0, Landroid/content/res/Configuration;

    #@2b
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@38
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEffectiveConfiguration:Landroid/content/res/Configuration;

    #@3a
    .line 530
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mCreated:Z

    #@3c
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    #@0
    .line 1620
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1629
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public onDestroy()V
    .registers 4

    #@0
    .line 737
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Landroid/app/Activity;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 738
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->removeActivityDelegate(Landroidx/appcompat/app/AppCompatDelegate;)V

    #@9
    .line 741
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    #@b
    if-eqz v0, :cond_18

    #@d
    .line 742
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@f
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@18
    :cond_18
    const/4 v0, 0x1

    #@19
    .line 745
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@1b
    .line 747
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@1d
    const/16 v1, -0x64

    #@1f
    if-eq v0, v1, :cond_45

    #@21
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@23
    instance-of v1, v0, Landroid/app/Activity;

    #@25
    if-eqz v1, :cond_45

    #@27
    check-cast v0, Landroid/app/Activity;

    #@29
    .line 749
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_45

    #@2f
    .line 751
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->sLocalNightModes:Landroidx/collection/SimpleArrayMap;

    #@31
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    goto :goto_54

    #@45
    .line 753
    :cond_45
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->sLocalNightModes:Landroidx/collection/SimpleArrayMap;

    #@47
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 756
    :goto_54
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@56
    if-eqz v0, :cond_5b

    #@58
    .line 757
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->onDestroy()V

    #@5b
    .line 761
    :cond_5b
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->cleanupAutoManagers()V

    #@5e
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    if-eq p1, v0, :cond_e

    #@5
    const/16 v0, 0x52

    #@7
    if-eq p1, v0, :cond_a

    #@9
    goto :goto_1a

    #@a
    .line 1511
    :cond_a
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    #@d
    return v1

    #@e
    .line 1519
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    #@11
    move-result p1

    #@12
    and-int/lit16 p1, p1, 0x80

    #@14
    if-eqz p1, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    move v1, v2

    #@18
    :goto_18
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    #@1a
    :goto_1a
    return v2
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    .line 1423
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_e

    #@7
    .line 1424
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_e

    #@d
    return v1

    #@e
    .line 1430
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@10
    if-eqz p1, :cond_23

    #@12
    .line 1431
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@15
    move-result v0

    #@16
    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_23

    #@1c
    .line 1434
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@1e
    if-eqz p1, :cond_22

    #@20
    .line 1435
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    #@22
    :cond_22
    return v1

    #@23
    .line 1445
    :cond_23
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@25
    const/4 v0, 0x0

    #@26
    if-nez p1, :cond_3c

    #@28
    .line 1446
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@2b
    move-result-object p1

    #@2c
    .line 1447
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@2f
    .line 1448
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@32
    move-result v2

    #@33
    invoke-direct {p0, p1, v2, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@36
    move-result p2

    #@37
    .line 1449
    iput-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    #@39
    if-eqz p2, :cond_3c

    #@3b
    return v1

    #@3c
    :cond_3c
    return v0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    if-eq p1, v0, :cond_e

    #@5
    const/16 v0, 0x52

    #@7
    if-eq p1, v0, :cond_a

    #@9
    goto :goto_29

    #@a
    .line 1484
    :cond_a
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    #@d
    return v1

    #@e
    .line 1487
    :cond_e
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    #@10
    .line 1488
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    #@12
    .line 1490
    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@15
    move-result-object p2

    #@16
    if-eqz p2, :cond_22

    #@18
    .line 1491
    iget-boolean v0, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@1a
    if-eqz v0, :cond_22

    #@1c
    if-nez p1, :cond_21

    #@1e
    .line 1496
    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@21
    :cond_21
    return v1

    #@22
    .line 1500
    :cond_22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onBackPressed()Z

    #@25
    move-result p1

    #@26
    if-eqz p1, :cond_29

    #@28
    return v1

    #@29
    :cond_29
    :goto_29
    return v2
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    #@0
    .line 1185
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1b

    #@6
    .line 1186
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@8
    if-nez v1, :cond_1b

    #@a
    .line 1187
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->findMenuPanel(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@11
    move-result-object p1

    #@12
    if-eqz p1, :cond_1b

    #@14
    .line 1189
    iget p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    #@16
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@19
    move-result p1

    #@1a
    return p1

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 1197
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->reopenMenu(Z)V

    #@4
    return-void
.end method

.method onMenuOpened(I)V
    .registers 3

    #@0
    const/16 v0, 0x6c

    #@2
    if-ne p1, v0, :cond_e

    #@4
    .line 1176
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@7
    move-result-object p1

    #@8
    if-eqz p1, :cond_e

    #@a
    const/4 v0, 0x1

    #@b
    .line 1178
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@e
    :cond_e
    return-void
.end method

.method onPanelClosed(I)V
    .registers 4

    #@0
    const/16 v0, 0x6c

    #@2
    const/4 v1, 0x0

    #@3
    if-ne p1, v0, :cond_f

    #@5
    .line 1160
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@8
    move-result-object p1

    #@9
    if-eqz p1, :cond_1d

    #@b
    .line 1162
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@e
    goto :goto_1d

    #@f
    :cond_f
    if-nez p1, :cond_1d

    #@11
    const/4 v0, 0x1

    #@12
    .line 1167
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    #@15
    move-result-object p1

    #@16
    .line 1168
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    #@18
    if-eqz v0, :cond_1d

    #@1a
    .line 1169
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    #@1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 536
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    #@3
    return-void
.end method

.method public onPostResume()V
    .registers 3

    #@0
    .line 690
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_a

    #@6
    const/4 v1, 0x1

    #@7
    .line 692
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    #@a
    :cond_a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    #@0
    return-void
.end method

.method public onStart()V
    .registers 1

    #@0
    .line 677
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    #@3
    return-void
.end method

.method public onStop()V
    .registers 3

    #@0
    .line 682
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_a

    #@6
    const/4 v1, 0x0

    #@7
    .line 684
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    #@a
    :cond_a
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .registers 2

    #@0
    return-void
.end method

.method final peekSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .registers 2

    #@0
    .line 548
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@2
    return-object v0
.end method

.method public requestWindowFeature(I)Z
    .registers 6

    #@0
    .line 1070
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    #@3
    move-result p1

    #@4
    .line 1072
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    #@6
    const/4 v1, 0x0

    #@7
    const/16 v2, 0x6c

    #@9
    if-eqz v0, :cond_e

    #@b
    if-ne p1, v2, :cond_e

    #@d
    return v1

    #@e
    .line 1075
    :cond_e
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@10
    const/4 v3, 0x1

    #@11
    if-eqz v0, :cond_17

    #@13
    if-ne p1, v3, :cond_17

    #@15
    .line 1077
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@17
    :cond_17
    if-eq p1, v3, :cond_4e

    #@19
    const/4 v0, 0x2

    #@1a
    if-eq p1, v0, :cond_48

    #@1c
    const/4 v0, 0x5

    #@1d
    if-eq p1, v0, :cond_42

    #@1f
    const/16 v0, 0xa

    #@21
    if-eq p1, v0, :cond_3c

    #@23
    if-eq p1, v2, :cond_36

    #@25
    const/16 v0, 0x6d

    #@27
    if-eq p1, v0, :cond_30

    #@29
    .line 1107
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@2b
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    #@2e
    move-result p1

    #@2f
    return p1

    #@30
    .line 1086
    :cond_30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    #@33
    .line 1087
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    #@35
    return v3

    #@36
    .line 1082
    :cond_36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    #@39
    .line 1083
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    #@3b
    return v3

    #@3c
    .line 1090
    :cond_3c
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    #@3f
    .line 1091
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    #@41
    return v3

    #@42
    .line 1098
    :cond_42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    #@45
    .line 1099
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    #@47
    return v3

    #@48
    .line 1094
    :cond_48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    #@4b
    .line 1095
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    #@4d
    return v3

    #@4e
    .line 1102
    :cond_4e
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    #@51
    .line 1103
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    #@53
    return v3
.end method

.method public setContentView(I)V
    .registers 4

    #@0
    .line 707
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    #@3
    .line 708
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@5
    const v1, 0x1020002

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    .line 709
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    #@11
    .line 710
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@13
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1a
    .line 711
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@1c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@1e
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    #@25
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    #@0
    .line 698
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    #@3
    .line 699
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@5
    const v1, 0x1020002

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    .line 700
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    #@11
    .line 701
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@14
    .line 702
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@16
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@18
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    #@1f
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    .line 716
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    #@3
    .line 717
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@5
    const v1, 0x1020002

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    .line 718
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    #@11
    .line 719
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@14
    .line 720
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@16
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@18
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    #@1b
    move-result-object p2

    #@1c
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    #@1f
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .registers 2

    #@0
    .line 1390
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    #@2
    return-void
.end method

.method public setLocalNightMode(I)V
    .registers 3

    #@0
    .line 2417
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@2
    if-eq v0, p1, :cond_d

    #@4
    .line 2418
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    #@6
    .line 2419
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mBaseContextAttached:Z

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 2422
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    #@d
    :cond_d
    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .registers 5

    #@0
    .line 574
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Landroid/app/Activity;

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 579
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@a
    move-result-object v0

    #@b
    .line 580
    instance-of v1, v0, Landroidx/appcompat/app/WindowDecorActionBar;

    #@d
    if-nez v1, :cond_39

    #@f
    const/4 v1, 0x0

    #@10
    .line 588
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    #@12
    if-eqz v0, :cond_17

    #@14
    .line 592
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->onDestroy()V

    #@17
    .line 594
    :cond_17
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@19
    if-eqz p1, :cond_30

    #@1b
    .line 597
    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar;

    #@1d
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getTitle()Ljava/lang/CharSequence;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@23
    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/app/ToolbarActionBar;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    #@26
    .line 599
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    #@28
    .line 601
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@2a
    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;

    #@2c
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->setActionBarCallback(Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;)V

    #@2f
    goto :goto_35

    #@30
    .line 604
    :cond_30
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    #@32
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->setActionBarCallback(Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;)V

    #@35
    .line 607
    :goto_35
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidateOptionsMenu()V

    #@38
    return-void

    #@39
    .line 581
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    #@3b
    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    #@3d
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@40
    throw p1
.end method

.method public setTheme(I)V
    .registers 2

    #@0
    .line 776
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mThemeResId:I

    #@2
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 1138
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 1140
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 1141
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@9
    goto :goto_1f

    #@a
    .line 1142
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 1143
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@17
    goto :goto_1f

    #@18
    .line 1144
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    #@1a
    if-eqz v0, :cond_1f

    #@1c
    .line 1145
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1f
    :cond_1f
    :goto_1f
    return-void
.end method

.method final shouldAnimateActionModeView()Z
    .registers 2

    #@0
    .line 1385
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    #@2
    if-eqz v0, :cond_10

    #@4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@6
    if-eqz v0, :cond_10

    #@8
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 4

    #@0
    if-eqz p1, :cond_30

    #@2
    .line 1206
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 1207
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    #@9
    .line 1210
    :cond_9
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    #@b
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/view/ActionMode$Callback;)V

    #@e
    .line 1212
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    #@11
    move-result-object p1

    #@12
    if-eqz p1, :cond_23

    #@14
    .line 1214
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    #@17
    move-result-object p1

    #@18
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@1a
    if-eqz p1, :cond_23

    #@1c
    .line 1215
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    #@1e
    if-eqz v1, :cond_23

    #@20
    .line 1216
    invoke-interface {v1, p1}, Landroidx/appcompat/app/AppCompatCallback;->onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V

    #@23
    .line 1220
    :cond_23
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@25
    if-nez p1, :cond_2d

    #@27
    .line 1222
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->startSupportActionModeFromWindow(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    #@2a
    move-result-object p1

    #@2b
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@2d
    .line 1225
    :cond_2d
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@2f
    return-object p1

    #@30
    .line 1203
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@32
    const-string v0, "ActionMode callback can not be null."

    #@34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw p1
.end method

.method startSupportActionModeFromWindow(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 9

    #@0
    .line 1236
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    #@3
    .line 1237
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 1238
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    #@a
    .line 1241
    :cond_a
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    #@c
    if-nez v0, :cond_14

    #@e
    .line 1243
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    #@10
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/view/ActionMode$Callback;)V

    #@13
    move-object p1, v0

    #@14
    .line 1247
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    #@16
    const/4 v1, 0x0

    #@17
    if-eqz v0, :cond_22

    #@19
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    #@1b
    if-nez v2, :cond_22

    #@1d
    .line 1249
    :try_start_1d
    invoke-interface {v0, p1}, Landroidx/appcompat/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    #@20
    move-result-object v0
    :try_end_21
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_21} :catch_22

    #@21
    goto :goto_23

    #@22
    :catch_22
    :cond_22
    move-object v0, v1

    #@23
    :goto_23
    if-eqz v0, :cond_29

    #@25
    .line 1256
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@27
    goto/16 :goto_15b

    #@29
    .line 1258
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@2b
    const/4 v2, 0x0

    #@2c
    const/4 v3, 0x1

    #@2d
    if-nez v0, :cond_d4

    #@2f
    .line 1259
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    #@31
    if-eqz v0, :cond_b5

    #@33
    .line 1261
    new-instance v0, Landroid/util/TypedValue;

    #@35
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@38
    .line 1262
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3d
    move-result-object v4

    #@3e
    .line 1263
    sget v5, Landroidx/appcompat/R$attr;->actionBarTheme:I

    #@40
    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@43
    .line 1266
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    #@45
    if-eqz v5, :cond_68

    #@47
    .line 1267
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@49
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@50
    move-result-object v5

    #@51
    .line 1268
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@54
    .line 1269
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    #@56
    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@59
    .line 1271
    new-instance v4, Landroidx/appcompat/view/ContextThemeWrapper;

    #@5b
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@5d
    invoke-direct {v4, v6, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@60
    .line 1272
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@67
    goto :goto_6a

    #@68
    .line 1274
    :cond_68
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@6a
    .line 1277
    :goto_6a
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    #@6c
    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    #@6f
    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@71
    .line 1278
    new-instance v5, Landroid/widget/PopupWindow;

    #@73
    sget v6, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    #@75
    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@78
    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@7a
    const/4 v6, 0x2

    #@7b
    .line 1280
    invoke-static {v5, v6}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    #@7e
    .line 1282
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@80
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@82
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@85
    .line 1283
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@87
    const/4 v6, -0x1

    #@88
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@8b
    .line 1285
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8e
    move-result-object v5

    #@8f
    sget v6, Landroidx/appcompat/R$attr;->actionBarSize:I

    #@91
    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@94
    .line 1287
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@96
    .line 1288
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9d
    move-result-object v4

    #@9e
    .line 1287
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@a1
    move-result v0

    #@a2
    .line 1289
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@a4
    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    #@a7
    .line 1290
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@a9
    const/4 v4, -0x2

    #@aa
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@ad
    .line 1291
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    #@af
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$6;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@b2
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    #@b4
    goto :goto_d4

    #@b5
    .line 1322
    :cond_b5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@b7
    sget v4, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    #@b9
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@bc
    move-result-object v0

    #@bd
    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    #@bf
    if-eqz v0, :cond_d4

    #@c1
    .line 1325
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    #@c4
    move-result-object v4

    #@c5
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@c8
    move-result-object v4

    #@c9
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    #@cc
    .line 1326
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    #@cf
    move-result-object v0

    #@d0
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    #@d2
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@d4
    .line 1331
    :cond_d4
    :goto_d4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@d6
    if-eqz v0, :cond_15b

    #@d8
    .line 1332
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    #@db
    .line 1333
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@dd
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    #@e0
    .line 1334
    new-instance v0, Landroidx/appcompat/view/StandaloneActionMode;

    #@e2
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@e4
    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@e7
    move-result-object v4

    #@e8
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@ea
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@ec
    if-nez v6, :cond_ef

    #@ee
    goto :goto_f0

    #@ef
    :cond_ef
    move v3, v2

    #@f0
    :goto_f0
    invoke-direct {v0, v4, v5, p1, v3}, Landroidx/appcompat/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode$Callback;Z)V

    #@f3
    .line 1336
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    #@f6
    move-result-object v3

    #@f7
    invoke-interface {p1, v0, v3}, Landroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    #@fa
    move-result p1

    #@fb
    if-eqz p1, :cond_159

    #@fd
    .line 1337
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    #@100
    .line 1338
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@102
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V

    #@105
    .line 1339
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@107
    .line 1341
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->shouldAnimateActionModeView()Z

    #@10a
    move-result p1

    #@10b
    const/high16 v0, 0x3f800000    # 1.0f

    #@10d
    if-eqz p1, :cond_12a

    #@10f
    .line 1342
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@111
    const/4 v1, 0x0

    #@112
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    #@115
    .line 1343
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@117
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@11a
    move-result-object p1

    #@11b
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@11e
    move-result-object p1

    #@11f
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@121
    .line 1344
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$7;

    #@123
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$7;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    #@126
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@129
    goto :goto_149

    #@12a
    .line 1361
    :cond_12a
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@12c
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    #@12f
    .line 1362
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@131
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    #@134
    .line 1363
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@136
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    #@139
    move-result-object p1

    #@13a
    instance-of p1, p1, Landroid/view/View;

    #@13c
    if-eqz p1, :cond_149

    #@13e
    .line 1364
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@140
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    #@143
    move-result-object p1

    #@144
    check-cast p1, Landroid/view/View;

    #@146
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    #@149
    .line 1368
    :cond_149
    :goto_149
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    #@14b
    if-eqz p1, :cond_15b

    #@14d
    .line 1369
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    #@14f
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@152
    move-result-object p1

    #@153
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    #@155
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@158
    goto :goto_15b

    #@159
    .line 1372
    :cond_159
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@15b
    .line 1376
    :cond_15b
    :goto_15b
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@15d
    if-eqz p1, :cond_166

    #@15f
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/AppCompatCallback;

    #@161
    if-eqz v0, :cond_166

    #@163
    .line 1377
    invoke-interface {v0, p1}, Landroidx/appcompat/app/AppCompatCallback;->onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V

    #@166
    .line 1379
    :cond_166
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    #@168
    return-object p1
.end method

.method final updateStatusGuard(Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)I
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_8

    #@3
    .line 2210
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@6
    move-result v1

    #@7
    goto :goto_e

    #@8
    :cond_8
    if-eqz p2, :cond_d

    #@a
    .line 2212
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v1, v0

    #@e
    .line 2217
    :goto_e
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@10
    const/16 v3, 0x8

    #@12
    if-eqz v2, :cond_10f

    #@14
    .line 2218
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@17
    move-result-object v2

    #@18
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1a
    if-eqz v2, :cond_10f

    #@1c
    .line 2219
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@1e
    .line 2220
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@24
    .line 2223
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@26
    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->isShown()Z

    #@29
    move-result v4

    #@2a
    const/4 v5, 0x1

    #@2b
    if-eqz v4, :cond_fd

    #@2d
    .line 2224
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    #@2f
    if-nez v4, :cond_3f

    #@31
    .line 2225
    new-instance v4, Landroid/graphics/Rect;

    #@33
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@36
    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    #@38
    .line 2226
    new-instance v4, Landroid/graphics/Rect;

    #@3a
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@3d
    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    #@3f
    .line 2228
    :cond_3f
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    #@41
    .line 2229
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    #@43
    if-nez p1, :cond_49

    #@45
    .line 2231
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@48
    goto :goto_5c

    #@49
    .line 2234
    :cond_49
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@4c
    move-result p2

    #@4d
    .line 2235
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@50
    move-result v7

    #@51
    .line 2236
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@54
    move-result v8

    #@55
    .line 2237
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@58
    move-result p1

    #@59
    .line 2233
    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@5c
    .line 2240
    :goto_5c
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@5e
    invoke-static {p1, v4, v6}, Landroidx/appcompat/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@61
    .line 2241
    iget p1, v4, Landroid/graphics/Rect;->top:I

    #@63
    .line 2242
    iget p2, v4, Landroid/graphics/Rect;->left:I

    #@65
    .line 2243
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@67
    .line 2248
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@69
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@6c
    move-result-object v6

    #@6d
    if-nez v6, :cond_71

    #@6f
    move v7, v0

    #@70
    goto :goto_75

    #@71
    .line 2250
    :cond_71
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@74
    move-result v7

    #@75
    :goto_75
    if-nez v6, :cond_79

    #@77
    move v6, v0

    #@78
    goto :goto_7d

    #@79
    .line 2252
    :cond_79
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@7c
    move-result v6

    #@7d
    .line 2254
    :goto_7d
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@7f
    if-ne v8, p1, :cond_8c

    #@81
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@83
    if-ne v8, p2, :cond_8c

    #@85
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@87
    if-eq v8, v4, :cond_8a

    #@89
    goto :goto_8c

    #@8a
    :cond_8a
    move p2, v0

    #@8b
    goto :goto_93

    #@8c
    .line 2257
    :cond_8c
    :goto_8c
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@8e
    .line 2258
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@90
    .line 2259
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@92
    move p2, v5

    #@93
    :goto_93
    if-lez p1, :cond_bb

    #@95
    .line 2262
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@97
    if-nez p1, :cond_bb

    #@99
    .line 2263
    new-instance p1, Landroid/view/View;

    #@9b
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    #@9d
    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@a0
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@a2
    .line 2264
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    #@a5
    .line 2265
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    #@a7
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@a9
    const/16 v8, 0x33

    #@ab
    const/4 v9, -0x1

    #@ac
    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@af
    .line 2267
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@b1
    .line 2268
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@b3
    .line 2269
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    #@b5
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@b7
    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@ba
    goto :goto_e0

    #@bb
    .line 2270
    :cond_bb
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@bd
    if-eqz p1, :cond_e0

    #@bf
    .line 2272
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c2
    move-result-object p1

    #@c3
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@c5
    .line 2273
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@c7
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@c9
    if-ne v4, v8, :cond_d3

    #@cb
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@cd
    if-ne v4, v7, :cond_d3

    #@cf
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@d1
    if-eq v4, v6, :cond_e0

    #@d3
    .line 2275
    :cond_d3
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@d5
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@d7
    .line 2276
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@d9
    .line 2277
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@db
    .line 2278
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@dd
    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@e0
    .line 2284
    :cond_e0
    :goto_e0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@e2
    if-eqz p1, :cond_e5

    #@e4
    goto :goto_e6

    #@e5
    :cond_e5
    move v5, v0

    #@e6
    :goto_e6
    if-eqz v5, :cond_f3

    #@e8
    .line 2286
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@eb
    move-result p1

    #@ec
    if-eqz p1, :cond_f3

    #@ee
    .line 2288
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@f0
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateStatusGuardColor(Landroid/view/View;)V

    #@f3
    .line 2295
    :cond_f3
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    #@f5
    if-nez p1, :cond_fa

    #@f7
    if-eqz v5, :cond_fa

    #@f9
    move v1, v0

    #@fa
    :cond_fa
    move p1, v5

    #@fb
    move v5, p2

    #@fc
    goto :goto_107

    #@fd
    .line 2300
    :cond_fd
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@ff
    if-eqz p1, :cond_105

    #@101
    .line 2302
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@103
    move p1, v0

    #@104
    goto :goto_107

    #@105
    :cond_105
    move p1, v0

    #@106
    move v5, p1

    #@107
    :goto_107
    if-eqz v5, :cond_110

    #@109
    .line 2306
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    #@10b
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@10e
    goto :goto_110

    #@10f
    :cond_10f
    move p1, v0

    #@110
    .line 2310
    :cond_110
    :goto_110
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    #@112
    if-eqz p2, :cond_11b

    #@114
    if-eqz p1, :cond_117

    #@116
    goto :goto_118

    #@117
    :cond_117
    move v0, v3

    #@118
    .line 2311
    :goto_118
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    #@11b
    :cond_11b
    return v1
.end method

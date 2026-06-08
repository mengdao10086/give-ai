.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ListPopupWindow$Api24Impl;,
        Landroidx/appcompat/widget/ListPopupWindow$Api29Impl;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroidx/appcompat/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const-string v0, "ListPopupWindow"

    #@2
    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v2, 0x1c

    #@6
    if-gt v1, v2, :cond_36

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    .line 89
    :try_start_a
    const-class v3, Landroid/widget/PopupWindow;

    #@c
    const-string v4, "setClipToScreenEnabled"

    #@e
    new-array v5, v2, [Ljava/lang/Class;

    #@10
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@12
    aput-object v6, v5, v1

    #@14
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v3

    #@18
    sput-object v3, Landroidx/appcompat/widget/ListPopupWindow;->sSetClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    #@1a
    goto :goto_20

    #@1b
    :catch_1b
    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    #@1d
    .line 92
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 96
    :goto_20
    :try_start_20
    const-class v3, Landroid/widget/PopupWindow;

    #@22
    const-string v4, "setEpicenterBounds"

    #@24
    new-array v2, v2, [Ljava/lang/Class;

    #@26
    const-class v5, Landroid/graphics/Rect;

    #@28
    aput-object v5, v2, v1

    #@2a
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2d
    move-result-object v1

    #@2e
    sput-object v1, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_30} :catch_31

    #@30
    goto :goto_36

    #@31
    :catch_31
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    #@33
    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    :cond_36
    :goto_36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 227
    sget v1, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 238
    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 251
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    #@0
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x2

    #@4
    .line 118
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    #@6
    .line 119
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@8
    const/16 v0, 0x3ea

    #@a
    .line 122
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@c
    const/4 v0, 0x0

    #@d
    .line 127
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    #@f
    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@11
    .line 130
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@13
    const v1, 0x7fffffff

    #@16
    .line 131
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    #@18
    .line 134
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    #@1a
    .line 145
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    #@1c
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    #@1f
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    #@21
    .line 146
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    #@23
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    #@26
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    #@28
    .line 147
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    #@2a
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    #@2d
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    #@2f
    .line 148
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    #@31
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    #@34
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    #@36
    .line 153
    new-instance v1, Landroid/graphics/Rect;

    #@38
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@3b
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@3d
    .line 265
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@3f
    .line 266
    new-instance v1, Landroid/os/Handler;

    #@41
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@44
    move-result-object v2

    #@45
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@48
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@4a
    .line 268
    sget-object v1, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    #@4c
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@4f
    move-result-object v1

    #@50
    .line 270
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    #@52
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@55
    move-result v2

    #@56
    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@58
    .line 272
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    #@5a
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5d
    move-result v0

    #@5e
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@60
    const/4 v2, 0x1

    #@61
    if-eqz v0, :cond_65

    #@63
    .line 275
    iput-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@65
    .line 277
    :cond_65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@68
    .line 279
    new-instance v0, Landroidx/appcompat/widget/AppCompatPopupWindow;

    #@6a
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6d
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@6f
    .line 280
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@72
    return-void
.end method

.method private buildDropDown()I
    .registers 13

    #@0
    .line 1161
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@2
    const/high16 v1, -0x80000000

    #@4
    const/4 v2, -0x1

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    if-nez v0, :cond_bc

    #@9
    .line 1162
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@b
    .line 1170
    new-instance v5, Landroidx/appcompat/widget/ListPopupWindow$2;

    #@d
    invoke-direct {v5, p0}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    #@10
    iput-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    #@12
    .line 1181
    iget-boolean v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    #@14
    xor-int/2addr v5, v3

    #@15
    invoke-virtual {p0, v0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    #@18
    move-result-object v5

    #@19
    iput-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@1b
    .line 1182
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    #@1d
    if-eqz v6, :cond_22

    #@1f
    .line 1183
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 1185
    :cond_22
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@24
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@26
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@29
    .line 1186
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@2b
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2d
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@30
    .line 1187
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@32
    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/DropDownListView;->setFocusable(Z)V

    #@35
    .line 1188
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@37
    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    #@3a
    .line 1189
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@3c
    new-instance v6, Landroidx/appcompat/widget/ListPopupWindow$3;

    #@3e
    invoke-direct {v6, p0}, Landroidx/appcompat/widget/ListPopupWindow$3;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    #@41
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@44
    .line 1207
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@46
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    #@48
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    #@4b
    .line 1209
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@4d
    if-eqz v5, :cond_54

    #@4f
    .line 1210
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@51
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@54
    .line 1213
    :cond_54
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@56
    .line 1215
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@58
    if-eqz v6, :cond_b5

    #@5a
    .line 1219
    new-instance v7, Landroid/widget/LinearLayout;

    #@5c
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@5f
    .line 1220
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@62
    .line 1222
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@64
    const/high16 v8, 0x3f800000    # 1.0f

    #@66
    invoke-direct {v0, v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@69
    .line 1226
    iget v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    #@6b
    if-eqz v8, :cond_8d

    #@6d
    if-eq v8, v3, :cond_86

    #@6f
    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    const-string v5, "Invalid hint position "

    #@73
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@76
    iget v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    #@78
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    const-string v5, "ListPopupWindow"

    #@82
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    goto :goto_93

    #@86
    .line 1228
    :cond_86
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@89
    .line 1229
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@8c
    goto :goto_93

    #@8d
    .line 1233
    :cond_8d
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@90
    .line 1234
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@93
    .line 1246
    :goto_93
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@95
    if-ltz v0, :cond_99

    #@97
    move v5, v1

    #@98
    goto :goto_9b

    #@99
    :cond_99
    move v0, v4

    #@9a
    move v5, v0

    #@9b
    .line 1253
    :goto_9b
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9e
    move-result v0

    #@9f
    .line 1255
    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    #@a2
    .line 1257
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a5
    move-result-object v0

    #@a6
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    #@a8
    .line 1258
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@ab
    move-result v5

    #@ac
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@ae
    add-int/2addr v5, v6

    #@af
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@b1
    add-int/2addr v5, v0

    #@b2
    move v0, v5

    #@b3
    move-object v5, v7

    #@b4
    goto :goto_b6

    #@b5
    :cond_b5
    move v0, v4

    #@b6
    .line 1264
    :goto_b6
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@b8
    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@bb
    goto :goto_da

    #@bc
    .line 1266
    :cond_bc
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@be
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    #@c1
    move-result-object v0

    #@c2
    check-cast v0, Landroid/view/ViewGroup;

    #@c4
    .line 1267
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@c6
    if-eqz v0, :cond_d9

    #@c8
    .line 1270
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@cb
    move-result-object v5

    #@cc
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    #@ce
    .line 1271
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@d1
    move-result v0

    #@d2
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@d4
    add-int/2addr v0, v6

    #@d5
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@d7
    add-int/2addr v0, v5

    #@d8
    goto :goto_da

    #@d9
    :cond_d9
    move v0, v4

    #@da
    .line 1279
    :goto_da
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@dc
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@df
    move-result-object v5

    #@e0
    if-eqz v5, :cond_fc

    #@e2
    .line 1281
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@e4
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@e7
    .line 1282
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@e9
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@eb
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@ed
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@ef
    add-int/2addr v5, v6

    #@f0
    .line 1286
    iget-boolean v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@f2
    if-nez v6, :cond_102

    #@f4
    .line 1287
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@f6
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@f8
    neg-int v6, v6

    #@f9
    iput v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@fb
    goto :goto_102

    #@fc
    .line 1290
    :cond_fc
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@fe
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    #@101
    move v5, v4

    #@102
    .line 1295
    :cond_102
    :goto_102
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@104
    .line 1296
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    #@107
    move-result v6

    #@108
    const/4 v7, 0x2

    #@109
    if-ne v6, v7, :cond_10c

    #@10b
    goto :goto_10d

    #@10c
    :cond_10c
    move v3, v4

    #@10d
    .line 1297
    :goto_10d
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@110
    move-result-object v4

    #@111
    iget v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@113
    invoke-direct {p0, v4, v6, v3}, Landroidx/appcompat/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    #@116
    move-result v3

    #@117
    .line 1299
    iget-boolean v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@119
    if-nez v4, :cond_182

    #@11b
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    #@11d
    if-ne v4, v2, :cond_120

    #@11f
    goto :goto_182

    #@120
    .line 1304
    :cond_120
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@122
    const/4 v6, -0x2

    #@123
    if-eq v4, v6, :cond_149

    #@125
    const/high16 v1, 0x40000000    # 2.0f

    #@127
    if-eq v4, v2, :cond_12e

    #@129
    .line 1318
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@12c
    move-result v1

    #@12d
    goto :goto_163

    #@12e
    .line 1312
    :cond_12e
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@130
    .line 1313
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@133
    move-result-object v2

    #@134
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@137
    move-result-object v2

    #@138
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@13a
    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@13c
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@13e
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@140
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@142
    add-int/2addr v4, v6

    #@143
    sub-int/2addr v2, v4

    #@144
    .line 1312
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@147
    move-result v1

    #@148
    goto :goto_163

    #@149
    .line 1306
    :cond_149
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@14b
    .line 1307
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14e
    move-result-object v2

    #@14f
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@152
    move-result-object v2

    #@153
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@155
    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@157
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@159
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@15b
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@15d
    add-int/2addr v4, v6

    #@15e
    sub-int/2addr v2, v4

    #@15f
    .line 1306
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@162
    move-result v1

    #@163
    :goto_163
    move v7, v1

    #@164
    .line 1324
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@166
    const/4 v8, 0x0

    #@167
    const/4 v9, -0x1

    #@168
    sub-int v10, v3, v0

    #@16a
    const/4 v11, -0x1

    #@16b
    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    #@16e
    move-result v1

    #@16f
    if-lez v1, :cond_180

    #@171
    .line 1327
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@173
    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getPaddingTop()I

    #@176
    move-result v2

    #@177
    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@179
    .line 1328
    invoke-virtual {v3}, Landroidx/appcompat/widget/DropDownListView;->getPaddingBottom()I

    #@17c
    move-result v3

    #@17d
    add-int/2addr v2, v3

    #@17e
    add-int/2addr v5, v2

    #@17f
    add-int/2addr v0, v5

    #@180
    :cond_180
    add-int/2addr v1, v0

    #@181
    return v1

    #@182
    :cond_182
    :goto_182
    add-int/2addr v3, v5

    #@183
    return v3
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 5

    #@0
    .line 1460
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroidx/appcompat/widget/ListPopupWindow$Api24Impl;->getMaxAvailableHeight(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method private static isConfirmKey(I)Z
    .registers 2

    #@0
    const/16 v0, 0x42

    #@2
    if-eq p0, v0, :cond_b

    #@4
    const/16 v0, 0x17

    #@6
    if-ne p0, v0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method private removePromptView()V
    .registers 3

    #@0
    .line 792
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_13

    #@4
    .line 793
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 794
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@a
    if-eqz v1, :cond_13

    #@c
    .line 795
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    .line 796
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@13
    :cond_13
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .registers 6

    #@0
    .line 1434
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-gt v0, v1, :cond_22

    #@6
    .line 1435
    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sSetClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    #@8
    if-eqz v0, :cond_27

    #@a
    .line 1437
    :try_start_a
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@c
    const/4 v2, 0x1

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object p1

    #@13
    const/4 v3, 0x0

    #@14
    aput-object p1, v2, v3

    #@16
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    #@19
    goto :goto_27

    #@1a
    :catch_1a
    const-string p1, "ListPopupWindow"

    #@1c
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    #@1e
    .line 1439
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_27

    #@22
    .line 1443
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@24
    invoke-static {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow$Api29Impl;->setIsClippedToScreen(Landroid/widget/PopupWindow;Z)V

    #@27
    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .registers 3

    #@0
    .line 849
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@2
    if-eqz v0, :cond_b

    #@4
    const/4 v1, 0x1

    #@5
    .line 852
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    #@8
    .line 854
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->requestLayout()V

    #@b
    :cond_b
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 3

    #@0
    .line 1143
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V

    #@5
    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .registers 4

    #@0
    .line 953
    new-instance v0, Landroidx/appcompat/widget/DropDownListView;

    #@2
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    #@5
    return-object v0
.end method

.method public dismiss()V
    .registers 3

    #@0
    .line 775
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@5
    .line 776
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    #@8
    .line 777
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@e
    .line 778
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@10
    .line 779
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@12
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@17
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .registers 2

    #@0
    .line 463
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    #@0
    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 426
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .registers 3

    #@0
    .line 531
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Landroid/graphics/Rect;

    #@6
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@8
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    #@0
    .line 581
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    #@2
    return v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    #@0
    .line 480
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@2
    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    #@0
    .line 823
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    #@0
    .line 949
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@2
    return-object v0
.end method

.method public getPromptPosition()I
    .registers 2

    #@0
    .line 325
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    #@2
    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 2

    #@0
    .line 898
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 901
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    #@0
    .line 924
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-wide/high16 v0, -0x8000000000000000L

    #@8
    return-wide v0

    #@9
    .line 927
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@b
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemId()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    #@0
    .line 911
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 914
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    #@0
    .line 937
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 940
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSoftInputMode()I
    .registers 2

    #@0
    .line 410
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    #@0
    .line 496
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 499
    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@8
    return v0
.end method

.method public getWidth()I
    .registers 2

    #@0
    .line 548
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@2
    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    #@0
    .line 386
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@2
    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    #@0
    .line 871
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method public isModal()Z
    .registers 2

    #@0
    .line 348
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    #@2
    return v0
.end method

.method public isShowing()Z
    .registers 2

    #@0
    .line 863
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12

    #@0
    .line 979
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_a5

    #@7
    const/16 v0, 0x3e

    #@9
    if-eq p1, v0, :cond_a5

    #@b
    .line 985
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@d
    .line 986
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    #@10
    move-result v0

    #@11
    if-gez v0, :cond_19

    #@13
    .line 987
    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_a5

    #@19
    .line 988
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@1b
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    #@1e
    move-result v0

    #@1f
    .line 991
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@21
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    #@24
    move-result v2

    #@25
    const/4 v3, 0x1

    #@26
    xor-int/2addr v2, v3

    #@27
    .line 993
    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@29
    if-eqz v4, :cond_4d

    #@2b
    .line 1000
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_33

    #@31
    move v6, v1

    #@32
    goto :goto_39

    #@33
    .line 1002
    :cond_33
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@35
    invoke-virtual {v6, v1, v3}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    #@38
    move-result v6

    #@39
    :goto_39
    if-eqz v5, :cond_41

    #@3b
    .line 1003
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    #@3e
    move-result v4

    #@3f
    sub-int/2addr v4, v3

    #@40
    goto :goto_52

    #@41
    .line 1004
    :cond_41
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@43
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    #@46
    move-result v4

    #@47
    sub-int/2addr v4, v3

    #@48
    invoke-virtual {v5, v4, v1}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    #@4b
    move-result v4

    #@4c
    goto :goto_52

    #@4d
    :cond_4d
    const v6, 0x7fffffff

    #@50
    const/high16 v4, -0x80000000

    #@52
    :goto_52
    const/16 v5, 0x13

    #@54
    if-eqz v2, :cond_5a

    #@56
    if-ne p1, v5, :cond_5a

    #@58
    if-le v0, v6, :cond_62

    #@5a
    :cond_5a
    const/16 v7, 0x14

    #@5c
    if-nez v2, :cond_6e

    #@5e
    if-ne p1, v7, :cond_6e

    #@60
    if-lt v0, v4, :cond_6e

    #@62
    .line 1011
    :cond_62
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    #@65
    .line 1012
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@67
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@6a
    .line 1013
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    #@6d
    return v3

    #@6e
    .line 1018
    :cond_6e
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@70
    invoke-virtual {v8, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    #@73
    .line 1021
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@75
    invoke-virtual {v8, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@78
    move-result p2

    #@79
    if-eqz p2, :cond_97

    #@7b
    .line 1027
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@7d
    const/4 v0, 0x2

    #@7e
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@81
    .line 1032
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@83
    invoke-virtual {p2}, Landroidx/appcompat/widget/DropDownListView;->requestFocusFromTouch()Z

    #@86
    .line 1033
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    #@89
    if-eq p1, v5, :cond_96

    #@8b
    if-eq p1, v7, :cond_96

    #@8d
    const/16 p2, 0x17

    #@8f
    if-eq p1, p2, :cond_96

    #@91
    const/16 p2, 0x42

    #@93
    if-eq p1, p2, :cond_96

    #@95
    goto :goto_a5

    #@96
    :cond_96
    return v3

    #@97
    :cond_97
    if-eqz v2, :cond_9e

    #@99
    if-ne p1, v7, :cond_9e

    #@9b
    if-ne v0, v4, :cond_a5

    #@9d
    return v3

    #@9e
    :cond_9e
    if-nez v2, :cond_a5

    #@a0
    if-ne p1, v5, :cond_a5

    #@a2
    if-ne v0, v6, :cond_a5

    #@a4
    return v3

    #@a5
    :cond_a5
    :goto_a5
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_41

    #@3
    .line 1098
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_41

    #@9
    .line 1101
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    #@b
    .line 1102
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x1

    #@10
    if-nez v0, :cond_22

    #@12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_22

    #@18
    .line 1103
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@1b
    move-result-object p1

    #@1c
    if-eqz p1, :cond_21

    #@1e
    .line 1105
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@21
    :cond_21
    return v1

    #@22
    .line 1108
    :cond_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@25
    move-result v0

    #@26
    if-ne v0, v1, :cond_41

    #@28
    .line 1109
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@2b
    move-result-object p1

    #@2c
    if-eqz p1, :cond_31

    #@2e
    .line 1111
    invoke-virtual {p1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@31
    .line 1113
    :cond_31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@34
    move-result p1

    #@35
    if-eqz p1, :cond_41

    #@37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@3a
    move-result p1

    #@3b
    if-nez p1, :cond_41

    #@3d
    .line 1114
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    #@40
    return v1

    #@41
    :cond_41
    const/4 p1, 0x0

    #@42
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 1074
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_20

    #@6
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@8
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    #@b
    move-result v0

    #@c
    if-ltz v0, :cond_20

    #@e
    .line 1075
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@10
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@13
    move-result p2

    #@14
    if-eqz p2, :cond_1f

    #@16
    .line 1076
    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_1f

    #@1c
    .line 1079
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    #@1f
    :cond_1f
    return p2

    #@20
    :cond_20
    const/4 p1, 0x0

    #@21
    return p1
.end method

.method public performItemClick(I)Z
    .registers 9

    #@0
    .line 882
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_26

    #@6
    .line 883
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@8
    if-eqz v0, :cond_24

    #@a
    .line 884
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@c
    .line 885
    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    #@f
    move-result v0

    #@10
    sub-int v0, p1, v0

    #@12
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v3

    #@16
    .line 886
    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@19
    move-result-object v0

    #@1a
    .line 887
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@1c
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@1f
    move-result-wide v5

    #@20
    move v4, p1

    #@21
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    #@24
    :cond_24
    const/4 p1, 0x1

    #@25
    return p1

    #@26
    :cond_26
    const/4 p1, 0x0

    #@27
    return p1
.end method

.method public postShow()V
    .registers 3

    #@0
    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    #@0
    .line 290
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    #@2
    if-nez v0, :cond_c

    #@4
    .line 291
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    #@6
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    #@b
    goto :goto_13

    #@c
    .line 292
    :cond_c
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    if-eqz v1, :cond_13

    #@10
    .line 293
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@13
    .line 295
    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@15
    if-eqz p1, :cond_1c

    #@17
    .line 297
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    #@19
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@1c
    .line 300
    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@1e
    if-eqz p1, :cond_25

    #@20
    .line 301
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@22
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@25
    :cond_25
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 473
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    #@2
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 3

    #@0
    .line 444
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    #@5
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 435
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setContentWidth(I)V
    .registers 4

    #@0
    .line 568
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1a

    #@8
    .line 570
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@d
    .line 571
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@f
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@11
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@13
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@15
    add-int/2addr v0, v1

    #@16
    add-int/2addr v0, p1

    #@17
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@19
    goto :goto_1d

    #@1a
    .line 573
    :cond_1a
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    #@1d
    :goto_1d
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2

    #@0
    .line 376
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@2
    return-void
.end method

.method public setDropDownGravity(I)V
    .registers 2

    #@0
    .line 541
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    #@2
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 520
    new-instance v0, Landroid/graphics/Rect;

    #@4
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@b
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2

    #@0
    .line 360
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@2
    return-void
.end method

.method public setHeight(I)V
    .registers 3

    #@0
    if-gez p1, :cond_11

    #@2
    const/4 v0, -0x2

    #@3
    if-eq v0, p1, :cond_11

    #@5
    const/4 v0, -0x1

    #@6
    if-ne v0, p1, :cond_9

    #@8
    goto :goto_11

    #@9
    .line 595
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v0, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    #@d
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1

    #@11
    .line 598
    :cond_11
    :goto_11
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    #@13
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2

    #@0
    .line 489
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@2
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 3

    #@0
    .line 814
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@5
    return-void
.end method

.method setListItemExpandMax(I)V
    .registers 2

    #@0
    .line 963
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    #@2
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 419
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    #@2
    return-void
.end method

.method public setModal(Z)V
    .registers 3

    #@0
    .line 338
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    #@2
    .line 339
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    #@7
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    #@0
    .line 788
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@5
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    #@0
    .line 622
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    #@0
    .line 633
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1341
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    #@3
    .line 1342
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    #@5
    return-void
.end method

.method public setPromptPosition(I)V
    .registers 2

    #@0
    .line 315
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    #@2
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 643
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 645
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    #@9
    .line 647
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 649
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    #@10
    :cond_10
    return-void
.end method

.method public setSelection(I)V
    .registers 4

    #@0
    .line 833
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@2
    .line 834
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1b

    #@8
    if-eqz v0, :cond_1b

    #@a
    const/4 v1, 0x0

    #@b
    .line 835
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    #@e
    .line 836
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    #@11
    .line 838
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getChoiceMode()I

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1b

    #@17
    const/4 v1, 0x1

    #@18
    .line 839
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/DropDownListView;->setItemChecked(IZ)V

    #@1b
    :cond_1b
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 3

    #@0
    .line 400
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    #@5
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2

    #@0
    .line 508
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@2
    const/4 p1, 0x1

    #@3
    .line 509
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@5
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    #@0
    .line 558
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@2
    return-void
.end method

.method public setWindowLayoutType(I)V
    .registers 2

    #@0
    .line 611
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@2
    return-void
.end method

.method public show()V
    .registers 14

    #@0
    .line 666
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I

    #@3
    move-result v0

    #@4
    .line 668
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    #@7
    move-result v1

    #@8
    .line 669
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@a
    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@c
    invoke-static {v2, v3}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    #@f
    .line 671
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@11
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    #@14
    move-result v2

    #@15
    const/4 v3, 0x1

    #@16
    const/4 v4, -0x2

    #@17
    const/4 v5, 0x0

    #@18
    const/4 v6, -0x1

    #@19
    if-eqz v2, :cond_90

    #@1b
    .line 672
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_26

    #@25
    return-void

    #@26
    .line 677
    :cond_26
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@28
    if-ne v2, v6, :cond_2c

    #@2a
    move v2, v6

    #@2b
    goto :goto_36

    #@2c
    :cond_2c
    if-ne v2, v4, :cond_36

    #@2e
    .line 682
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@35
    move-result v2

    #@36
    .line 688
    :cond_36
    :goto_36
    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    #@38
    if-ne v7, v6, :cond_64

    #@3a
    if-eqz v1, :cond_3d

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    move v0, v6

    #@3e
    :goto_3e
    if-eqz v1, :cond_52

    #@40
    .line 693
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@42
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@44
    if-ne v4, v6, :cond_48

    #@46
    move v4, v6

    #@47
    goto :goto_49

    #@48
    :cond_48
    move v4, v5

    #@49
    :goto_49
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@4c
    .line 695
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@4e
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@51
    goto :goto_68

    #@52
    .line 697
    :cond_52
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@54
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@56
    if-ne v4, v6, :cond_5a

    #@58
    move v4, v6

    #@59
    goto :goto_5b

    #@5a
    :cond_5a
    move v4, v5

    #@5b
    :goto_5b
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@5e
    .line 699
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@60
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@63
    goto :goto_68

    #@64
    :cond_64
    if-ne v7, v4, :cond_67

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v0, v7

    #@68
    .line 707
    :goto_68
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@6a
    iget-boolean v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@6c
    if-nez v4, :cond_73

    #@6e
    iget-boolean v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@70
    if-nez v4, :cond_73

    #@72
    goto :goto_74

    #@73
    :cond_73
    move v3, v5

    #@74
    :goto_74
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    #@77
    .line 709
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@79
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@7c
    move-result-object v8

    #@7d
    iget v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@7f
    iget v10, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@81
    if-gez v2, :cond_85

    #@83
    move v11, v6

    #@84
    goto :goto_86

    #@85
    :cond_85
    move v11, v2

    #@86
    :goto_86
    if-gez v0, :cond_8a

    #@88
    move v12, v6

    #@89
    goto :goto_8b

    #@8a
    :cond_8a
    move v12, v0

    #@8b
    :goto_8b
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    #@8e
    goto/16 :goto_12d

    #@90
    .line 714
    :cond_90
    iget v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    #@92
    if-ne v1, v6, :cond_96

    #@94
    move v1, v6

    #@95
    goto :goto_a0

    #@96
    :cond_96
    if-ne v1, v4, :cond_a0

    #@98
    .line 718
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@9f
    move-result v1

    #@a0
    .line 725
    :cond_a0
    :goto_a0
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    #@a2
    if-ne v2, v6, :cond_a6

    #@a4
    move v0, v6

    #@a5
    goto :goto_aa

    #@a6
    :cond_a6
    if-ne v2, v4, :cond_a9

    #@a8
    goto :goto_aa

    #@a9
    :cond_a9
    move v0, v2

    #@aa
    .line 735
    :goto_aa
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@ac
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@af
    .line 736
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@b1
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@b4
    .line 737
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    #@b7
    .line 741
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@b9
    iget-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@bb
    if-nez v1, :cond_c3

    #@bd
    iget-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@bf
    if-nez v1, :cond_c3

    #@c1
    move v1, v3

    #@c2
    goto :goto_c4

    #@c3
    :cond_c3
    move v1, v5

    #@c4
    :goto_c4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    #@c7
    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@c9
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    #@cb
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    #@ce
    .line 743
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    #@d0
    if-eqz v0, :cond_d9

    #@d2
    .line 744
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@d4
    iget-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    #@d6
    invoke-static {v0, v1}, Landroidx/core/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    #@d9
    .line 746
    :cond_d9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@db
    const/16 v1, 0x1c

    #@dd
    if-gt v0, v1, :cond_f8

    #@df
    .line 747
    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    #@e1
    if-eqz v0, :cond_ff

    #@e3
    .line 749
    :try_start_e3
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@e5
    new-array v2, v3, [Ljava/lang/Object;

    #@e7
    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@e9
    aput-object v3, v2, v5

    #@eb
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ee} :catch_ef

    #@ee
    goto :goto_ff

    #@ef
    :catch_ef
    move-exception v0

    #@f0
    const-string v1, "ListPopupWindow"

    #@f2
    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    #@f4
    .line 751
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f7
    goto :goto_ff

    #@f8
    .line 755
    :cond_f8
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@fa
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@fc
    invoke-static {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$Api29Impl;->setEpicenterBounds(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    #@ff
    .line 757
    :cond_ff
    :goto_ff
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@101
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@104
    move-result-object v1

    #@105
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@107
    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@109
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    #@10b
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    #@10e
    .line 759
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@110
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    #@113
    .line 761
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    #@115
    if-eqz v0, :cond_11f

    #@117
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    #@119
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    #@11c
    move-result v0

    #@11d
    if-eqz v0, :cond_122

    #@11f
    .line 762
    :cond_11f
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    #@122
    .line 764
    :cond_122
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    #@124
    if-nez v0, :cond_12d

    #@126
    .line 765
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@128
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    #@12a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12d
    :cond_12d
    :goto_12d
    return-void
.end method

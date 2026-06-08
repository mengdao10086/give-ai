.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$Api29Impl;,
        Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;,
        Landroidx/appcompat/widget/SearchView$SavedState;,
        Landroidx/appcompat/widget/SearchView$OnSuggestionListener;,
        Landroidx/appcompat/widget/SearchView$OnCloseListener;,
        Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"

.field static final PRE_API_29_HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-ge v0, v1, :cond_c

    #@6
    new-instance v0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    #@8
    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;-><init>()V

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    sput-object v0, Landroidx/appcompat/widget/SearchView;->PRE_API_29_HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 272
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 276
    sget v0, Landroidx/appcompat/R$attr;->searchViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    #@0
    move-object/from16 v7, p0

    #@2
    .line 280
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@c
    .line 137
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@13
    const/4 v0, 0x2

    #@14
    new-array v1, v0, [I

    #@16
    .line 138
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    #@18
    new-array v0, v0, [I

    #@1a
    .line 139
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    #@1c
    .line 183
    new-instance v0, Landroidx/appcompat/widget/SearchView$1;

    #@1e
    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$1;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@21
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@23
    .line 190
    new-instance v0, Landroidx/appcompat/widget/SearchView$2;

    #@25
    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$2;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@28
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    #@2a
    .line 201
    new-instance v0, Ljava/util/WeakHashMap;

    #@2c
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@2f
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@31
    .line 992
    new-instance v8, Landroidx/appcompat/widget/SearchView$5;

    #@33
    invoke-direct {v8, v7}, Landroidx/appcompat/widget/SearchView$5;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@36
    iput-object v8, v7, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@38
    .line 1014
    new-instance v0, Landroidx/appcompat/widget/SearchView$6;

    #@3a
    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$6;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@3d
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    #@3f
    .line 1177
    new-instance v9, Landroidx/appcompat/widget/SearchView$7;

    #@41
    invoke-direct {v9, v7}, Landroidx/appcompat/widget/SearchView$7;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@44
    iput-object v9, v7, Landroidx/appcompat/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@46
    .line 1423
    new-instance v10, Landroidx/appcompat/widget/SearchView$8;

    #@48
    invoke-direct {v10, v7}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@4b
    iput-object v10, v7, Landroidx/appcompat/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@4d
    .line 1435
    new-instance v11, Landroidx/appcompat/widget/SearchView$9;

    #@4f
    invoke-direct {v11, v7}, Landroidx/appcompat/widget/SearchView$9;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@52
    iput-object v11, v7, Landroidx/appcompat/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@54
    .line 1729
    new-instance v0, Landroidx/appcompat/widget/SearchView$10;

    #@56
    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$10;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@59
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    #@5b
    .line 282
    sget-object v0, Landroidx/appcompat/R$styleable;->SearchView:[I

    #@5d
    const/4 v12, 0x0

    #@5e
    move-object/from16 v13, p1

    #@60
    move-object/from16 v3, p2

    #@62
    move/from16 v5, p3

    #@64
    invoke-static {v13, v3, v0, v5, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@67
    move-result-object v14

    #@68
    .line 284
    sget-object v2, Landroidx/appcompat/R$styleable;->SearchView:[I

    #@6a
    .line 285
    invoke-virtual {v14}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@6d
    move-result-object v4

    #@6e
    const/4 v6, 0x0

    #@6f
    move-object/from16 v0, p0

    #@71
    move-object/from16 v1, p1

    #@73
    .line 284
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@76
    .line 287
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@79
    move-result-object v0

    #@7a
    .line 288
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_layout:I

    #@7c
    sget v2, Landroidx/appcompat/R$layout;->abc_search_view:I

    #@7e
    invoke-virtual {v14, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@81
    move-result v1

    #@82
    const/4 v2, 0x1

    #@83
    .line 290
    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@86
    .line 292
    sget v0, Landroidx/appcompat/R$id;->search_src_text:I

    #@88
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@8e
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@90
    .line 293
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    #@93
    .line 295
    sget v1, Landroidx/appcompat/R$id;->search_edit_frame:I

    #@95
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@98
    move-result-object v1

    #@99
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    #@9b
    .line 296
    sget v1, Landroidx/appcompat/R$id;->search_plate:I

    #@9d
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@a0
    move-result-object v1

    #@a1
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@a3
    .line 297
    sget v3, Landroidx/appcompat/R$id;->submit_area:I

    #@a5
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@a8
    move-result-object v3

    #@a9
    iput-object v3, v7, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@ab
    .line 298
    sget v4, Landroidx/appcompat/R$id;->search_button:I

    #@ad
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@b0
    move-result-object v4

    #@b1
    check-cast v4, Landroid/widget/ImageView;

    #@b3
    iput-object v4, v7, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@b5
    .line 299
    sget v5, Landroidx/appcompat/R$id;->search_go_btn:I

    #@b7
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@ba
    move-result-object v5

    #@bb
    check-cast v5, Landroid/widget/ImageView;

    #@bd
    iput-object v5, v7, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@bf
    .line 300
    sget v6, Landroidx/appcompat/R$id;->search_close_btn:I

    #@c1
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@c4
    move-result-object v6

    #@c5
    check-cast v6, Landroid/widget/ImageView;

    #@c7
    iput-object v6, v7, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@c9
    .line 301
    sget v13, Landroidx/appcompat/R$id;->search_voice_btn:I

    #@cb
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@ce
    move-result-object v13

    #@cf
    check-cast v13, Landroid/widget/ImageView;

    #@d1
    iput-object v13, v7, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@d3
    .line 302
    sget v15, Landroidx/appcompat/R$id;->search_mag_icon:I

    #@d5
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@d8
    move-result-object v15

    #@d9
    check-cast v15, Landroid/widget/ImageView;

    #@db
    iput-object v15, v7, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@dd
    .line 305
    sget v2, Landroidx/appcompat/R$styleable;->SearchView_queryBackground:I

    #@df
    .line 306
    invoke-virtual {v14, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@e2
    move-result-object v2

    #@e3
    .line 305
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@e6
    .line 307
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_submitBackground:I

    #@e8
    .line 308
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@eb
    move-result-object v1

    #@ec
    .line 307
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@ef
    .line 309
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    #@f1
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f4
    move-result-object v1

    #@f5
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f8
    .line 310
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_goIcon:I

    #@fa
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@101
    .line 311
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_closeIcon:I

    #@103
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@106
    move-result-object v1

    #@107
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10a
    .line 312
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_voiceIcon:I

    #@10c
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@10f
    move-result-object v1

    #@110
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@113
    .line 313
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    #@115
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@118
    move-result-object v1

    #@119
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11c
    .line 315
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_searchHintIcon:I

    #@11e
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@121
    move-result-object v1

    #@122
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@124
    .line 318
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    #@127
    move-result-object v1

    #@128
    sget v2, Landroidx/appcompat/R$string;->abc_searchview_description_search:I

    #@12a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@12d
    move-result-object v1

    #@12e
    .line 317
    invoke-static {v4, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@131
    .line 321
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    #@133
    sget v2, Landroidx/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    #@135
    invoke-virtual {v14, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@138
    move-result v1

    #@139
    iput v1, v7, Landroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    #@13b
    .line 323
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_commitIcon:I

    #@13d
    invoke-virtual {v14, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@140
    move-result v1

    #@141
    iput v1, v7, Landroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    #@143
    .line 325
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@146
    .line 326
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@149
    .line 327
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@14c
    .line 328
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@14f
    .line 329
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@152
    .line 331
    iget-object v1, v7, Landroidx/appcompat/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    #@154
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@157
    .line 332
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    #@15a
    .line 333
    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@15d
    .line 334
    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@160
    .line 335
    iget-object v1, v7, Landroidx/appcompat/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    #@162
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@165
    .line 338
    new-instance v1, Landroidx/appcompat/widget/SearchView$3;

    #@167
    invoke-direct {v1, v7}, Landroidx/appcompat/widget/SearchView$3;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@16a
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@16d
    .line 346
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    #@16f
    const/4 v2, 0x1

    #@170
    invoke-virtual {v14, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@173
    move-result v1

    #@174
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    #@177
    .line 348
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_android_maxWidth:I

    #@179
    const/4 v2, -0x1

    #@17a
    invoke-virtual {v14, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@17d
    move-result v1

    #@17e
    if-eq v1, v2, :cond_183

    #@180
    .line 350
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    #@183
    .line 353
    :cond_183
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    #@185
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@188
    move-result-object v1

    #@189
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    #@18b
    .line 354
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_queryHint:I

    #@18d
    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@190
    move-result-object v1

    #@191
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@193
    .line 356
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_android_imeOptions:I

    #@195
    invoke-virtual {v14, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@198
    move-result v1

    #@199
    if-eq v1, v2, :cond_19e

    #@19b
    .line 358
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    #@19e
    .line 361
    :cond_19e
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_android_inputType:I

    #@1a0
    invoke-virtual {v14, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@1a3
    move-result v1

    #@1a4
    if-eq v1, v2, :cond_1a9

    #@1a6
    .line 363
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    #@1a9
    .line 367
    :cond_1a9
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_android_focusable:I

    #@1ab
    const/4 v2, 0x1

    #@1ac
    invoke-virtual {v14, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@1af
    move-result v1

    #@1b0
    .line 368
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    #@1b3
    .line 370
    invoke-virtual {v14}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@1b6
    .line 373
    new-instance v1, Landroid/content/Intent;

    #@1b8
    const-string v2, "android.speech.action.WEB_SEARCH"

    #@1ba
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1bd
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@1bf
    const/high16 v2, 0x10000000

    #@1c1
    .line 374
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c4
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    #@1c6
    const-string v4, "web_search"

    #@1c8
    .line 375
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1cb
    .line 378
    new-instance v1, Landroid/content/Intent;

    #@1cd
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    #@1cf
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d2
    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@1d4
    .line 379
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1d7
    .line 381
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    #@1da
    move-result v0

    #@1db
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@1de
    move-result-object v0

    #@1df
    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@1e1
    if-eqz v0, :cond_1eb

    #@1e3
    .line 383
    new-instance v1, Landroidx/appcompat/widget/SearchView$4;

    #@1e5
    invoke-direct {v1, v7}, Landroidx/appcompat/widget/SearchView$4;-><init>(Landroidx/appcompat/widget/SearchView;)V

    #@1e8
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@1eb
    .line 392
    :cond_1eb
    iget-boolean v0, v7, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@1ed
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@1f0
    .line 393
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    #@1f3
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 8

    #@0
    .line 1553
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    const/high16 p1, 0x10000000

    #@7
    .line 1554
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    if-eqz p2, :cond_f

    #@c
    .line 1559
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@f
    :cond_f
    const-string p1, "user_query"

    #@11
    .line 1561
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@13
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@16
    if-eqz p4, :cond_1d

    #@18
    const-string p1, "query"

    #@1a
    .line 1563
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1d
    :cond_1d
    if-eqz p3, :cond_24

    #@1f
    const-string p1, "intent_extra_data_key"

    #@21
    .line 1566
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@24
    .line 1568
    :cond_24
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@26
    if-eqz p1, :cond_2d

    #@28
    const-string p2, "app_data"

    #@2a
    .line 1569
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@2d
    :cond_2d
    if-eqz p5, :cond_39

    #@2f
    const-string p1, "action_key"

    #@31
    .line 1572
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@34
    const-string p1, "action_msg"

    #@36
    .line 1573
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@39
    .line 1575
    :cond_39
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@3b
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@3e
    move-result-object p1

    #@3f
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@42
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "suggest_intent_action"

    #@3
    .line 1672
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_f

    #@9
    .line 1675
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@b
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_f
    if-nez v1, :cond_13

    #@11
    const-string v1, "android.intent.action.SEARCH"

    #@13
    :cond_13
    move-object v2, v1

    #@14
    const-string v1, "suggest_intent_data"

    #@16
    .line 1682
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    if-nez v1, :cond_22

    #@1c
    .line 1684
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@1e
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    :cond_22
    if-eqz v1, :cond_47

    #@24
    const-string v3, "suggest_intent_data_id"

    #@26
    .line 1688
    invoke-static {p1, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    if-eqz v3, :cond_47

    #@2c
    .line 1690
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string v4, "/"

    #@37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    :cond_47
    if-nez v1, :cond_4b

    #@49
    move-object v3, v0

    #@4a
    goto :goto_50

    #@4b
    .line 1693
    :cond_4b
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4e
    move-result-object v1

    #@4f
    move-object v3, v1

    #@50
    :goto_50
    const-string v1, "suggest_intent_query"

    #@52
    .line 1695
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    const-string v1, "suggest_intent_extra_data"

    #@58
    .line 1696
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    move-object v1, p0

    #@5d
    move v6, p2

    #@5e
    move-object v7, p3

    #@5f
    .line 1698
    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    #@62
    move-result-object p1
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_63} :catch_64

    #@63
    return-object p1

    #@64
    :catch_64
    move-exception p2

    #@65
    .line 1702
    :try_start_65
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    #@68
    move-result p1
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_69} :catch_6a

    #@69
    goto :goto_6b

    #@6a
    :catch_6a
    const/4 p1, -0x1

    #@6b
    .line 1706
    :goto_6b
    new-instance p3, Ljava/lang/StringBuilder;

    #@6d
    const-string v1, "Search suggestions cursor at row "

    #@6f
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object p1

    #@76
    const-string p3, " returned exception."

    #@78
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object p1

    #@7c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object p1

    #@80
    const-string p3, "SearchView"

    #@82
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@85
    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 11

    #@0
    .line 1598
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 1603
    new-instance v1, Landroid/content/Intent;

    #@6
    const-string v2, "android.intent.action.SEARCH"

    #@8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    .line 1604
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e
    .line 1605
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x0

    #@13
    const/high16 v4, 0x42000000    # 32.0f

    #@15
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@18
    move-result-object v1

    #@19
    .line 1612
    new-instance v2, Landroid/os/Bundle;

    #@1b
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@1e
    .line 1613
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@20
    if-eqz v3, :cond_27

    #@22
    const-string v4, "app_data"

    #@24
    .line 1614
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@27
    .line 1620
    :cond_27
    new-instance v3, Landroid/content/Intent;

    #@29
    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@2c
    .line 1628
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    #@2f
    move-result-object p1

    #@30
    .line 1629
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_3f

    #@36
    .line 1630
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    #@39
    move-result v4

    #@3a
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    goto :goto_41

    #@3f
    :cond_3f
    const-string v4, "free_form"

    #@41
    .line 1632
    :goto_41
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    #@44
    move-result v5

    #@45
    const/4 v6, 0x0

    #@46
    if-eqz v5, :cond_51

    #@48
    .line 1633
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    #@4b
    move-result v5

    #@4c
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    goto :goto_52

    #@51
    :cond_51
    move-object v5, v6

    #@52
    .line 1635
    :goto_52
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_61

    #@58
    .line 1636
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    #@5b
    move-result v7

    #@5c
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5f
    move-result-object p1

    #@60
    goto :goto_62

    #@61
    :cond_61
    move-object p1, v6

    #@62
    .line 1638
    :goto_62
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_6d

    #@68
    .line 1639
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    #@6b
    move-result p2

    #@6c
    goto :goto_6e

    #@6d
    :cond_6d
    const/4 p2, 0x1

    #@6e
    :goto_6e
    const-string v7, "android.speech.extra.LANGUAGE_MODEL"

    #@70
    .line 1642
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@73
    const-string v4, "android.speech.extra.PROMPT"

    #@75
    .line 1643
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@78
    const-string v4, "android.speech.extra.LANGUAGE"

    #@7a
    .line 1644
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7d
    const-string p1, "android.speech.extra.MAX_RESULTS"

    #@7f
    .line 1645
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@82
    if-nez v0, :cond_85

    #@84
    goto :goto_89

    #@85
    .line 1647
    :cond_85
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    :goto_89
    const-string p1, "calling_package"

    #@8b
    .line 1646
    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@8e
    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    #@90
    .line 1650
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@93
    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    #@95
    .line 1651
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@98
    return-object v3
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 1583
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5
    .line 1584
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@8
    move-result-object p1

    #@9
    if-nez p1, :cond_d

    #@b
    const/4 p1, 0x0

    #@c
    goto :goto_11

    #@d
    .line 1586
    :cond_d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    :goto_11
    const-string p2, "calling_package"

    #@13
    .line 1585
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    return-object v0
.end method

.method private dismissSuggestions()V
    .registers 2

    #@0
    .line 1218
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    #@5
    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    #@0
    .line 862
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    #@5
    .line 863
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    #@7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    #@a
    .line 864
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    #@c
    const/4 v1, 0x1

    #@d
    aget v2, v0, v1

    #@f
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    #@11
    aget v1, v3, v1

    #@13
    sub-int/2addr v2, v1

    #@14
    const/4 v1, 0x0

    #@15
    .line 865
    aget v0, v0, v1

    #@17
    aget v1, v3, v1

    #@19
    sub-int/2addr v0, v1

    #@1a
    .line 866
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@1d
    move-result v1

    #@1e
    add-int/2addr v1, v0

    #@1f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@22
    move-result p1

    #@23
    add-int/2addr p1, v2

    #@24
    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@27
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7

    #@0
    .line 1104
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@2
    if-eqz v0, :cond_33

    #@4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_33

    #@9
    .line 1108
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@b
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    #@e
    move-result v0

    #@f
    float-to-double v0, v0

    #@10
    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    #@12
    mul-double/2addr v0, v2

    #@13
    double-to-int v0, v0

    #@14
    .line 1109
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1a
    .line 1111
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@1c
    const-string v1, "   "

    #@1e
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@21
    .line 1112
    new-instance v1, Landroid/text/style/ImageSpan;

    #@23
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@25
    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@28
    const/4 v2, 0x2

    #@29
    const/16 v3, 0x21

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@2f
    .line 1113
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@32
    return-object v0

    #@33
    :cond_33
    :goto_33
    return-object p1
.end method

.method private getPreferredHeight()I
    .registers 3

    #@0
    .line 875
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    sget v1, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_height:I

    #@a
    .line 876
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private getPreferredWidth()I
    .registers 3

    #@0
    .line 870
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    sget v1, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_width:I

    #@a
    .line 871
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private hasVoiceSearch()Z
    .registers 5

    #@0
    .line 904
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_35

    #@5
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_35

    #@b
    .line 906
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@d
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 907
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@15
    goto :goto_22

    #@16
    .line 908
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@18
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_21

    #@1e
    .line 909
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    :goto_22
    if-eqz v0, :cond_35

    #@24
    .line 912
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2b
    move-result-object v2

    #@2c
    const/high16 v3, 0x10000

    #@2e
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_35

    #@34
    const/4 v1, 0x1

    #@35
    :cond_35
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 2

    #@0
    .line 1722
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object p0

    #@8
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    #@a
    const/4 v0, 0x2

    #@b
    if-ne p0, v0, :cond_f

    #@d
    const/4 p0, 0x1

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    :goto_10
    return p0
.end method

.method private isSubmitAreaEnabled()Z
    .registers 2

    #@0
    .line 921
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    #@2
    if-nez v0, :cond_8

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    #@6
    if-eqz v0, :cond_10

    #@8
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_10

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

.method private launchIntent(Landroid/content/Intent;)V
    .registers 5

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 1516
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b

    #@a
    goto :goto_20

    #@b
    :catch_b
    move-exception v0

    #@c
    .line 1518
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, "Failed launch activity: "

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    const-string v1, "SearchView"

    #@1d
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    :goto_20
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .registers 5

    #@0
    .line 1493
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@2
    invoke-virtual {v0}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 1494
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_17

    #@e
    .line 1496
    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    #@11
    move-result-object p1

    #@12
    .line 1499
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    #@15
    const/4 p1, 0x1

    #@16
    return p1

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    return p1
.end method

.method private postUpdateFocusedState()V
    .registers 2

    #@0
    .line 956
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@5
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 4

    #@0
    .line 1460
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    .line 1461
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@8
    invoke-virtual {v1}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_f

    #@e
    return-void

    #@f
    .line 1465
    :cond_f
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_25

    #@15
    .line 1467
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@17
    invoke-virtual {p1, v1}, Landroidx/cursoradapter/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@1a
    move-result-object p1

    #@1b
    if-eqz p1, :cond_21

    #@1d
    .line 1471
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@20
    goto :goto_28

    #@21
    .line 1474
    :cond_21
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@24
    goto :goto_28

    #@25
    .line 1478
    :cond_25
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@28
    :goto_28
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 1526
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 1528
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_f

    #@d
    const/4 p1, 0x0

    #@e
    goto :goto_13

    #@f
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result p1

    #@13
    :goto_13
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    #@16
    return-void
.end method

.method private updateCloseButton()V
    .registers 5

    #@0
    .line 944
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    xor-int/2addr v0, v1

    #@c
    const/4 v2, 0x0

    #@d
    if-nez v0, :cond_19

    #@f
    .line 947
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@11
    if-eqz v3, :cond_18

    #@13
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    #@15
    if-nez v3, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v1, v2

    #@19
    .line 948
    :cond_19
    :goto_19
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@1b
    if-eqz v1, :cond_1e

    #@1d
    goto :goto_20

    #@1e
    :cond_1e
    const/16 v2, 0x8

    #@20
    :goto_20
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@23
    .line 949
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@25
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object v1

    #@29
    if-eqz v1, :cond_35

    #@2b
    if-eqz v0, :cond_30

    #@2d
    .line 951
    sget-object v0, Landroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    #@2f
    goto :goto_32

    #@30
    :cond_30
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    #@32
    :goto_32
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@35
    :cond_35
    return-void
.end method

.method private updateQueryHint()V
    .registers 3

    #@0
    .line 1118
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 1119
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@6
    if-nez v0, :cond_a

    #@8
    const-string v0, ""

    #@a
    :cond_a
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    #@11
    return-void
.end method

.method private updateSearchAutoComplete()V
    .registers 6

    #@0
    .line 1126
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@4
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    #@b
    .line 1127
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@d
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@f
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    #@12
    move-result v1

    #@13
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@16
    .line 1128
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@18
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    #@1b
    move-result v0

    #@1c
    and-int/lit8 v1, v0, 0xf

    #@1e
    const/4 v2, 0x1

    #@1f
    if-ne v1, v2, :cond_33

    #@21
    const v1, -0x10001

    #@24
    and-int/2addr v0, v1

    #@25
    .line 1135
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@27
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    if-eqz v1, :cond_33

    #@2d
    const/high16 v1, 0x10000

    #@2f
    or-int/2addr v0, v1

    #@30
    const/high16 v1, 0x80000

    #@32
    or-int/2addr v0, v1

    #@33
    .line 1146
    :cond_33
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@35
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    #@38
    .line 1147
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@3a
    if-eqz v0, :cond_40

    #@3c
    const/4 v1, 0x0

    #@3d
    .line 1148
    invoke-virtual {v0, v1}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@40
    .line 1152
    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@42
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    if-eqz v0, :cond_68

    #@48
    .line 1153
    new-instance v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    #@4a
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v1

    #@4e
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@50
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@52
    invoke-direct {v0, v1, p0, v3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    #@55
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@57
    .line 1155
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@59
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    #@5c
    .line 1156
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@5e
    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    #@60
    .line 1157
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    #@62
    if-eqz v1, :cond_65

    #@64
    const/4 v2, 0x2

    #@65
    .line 1156
    :cond_65
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    #@68
    :cond_68
    return-void
.end method

.method private updateSubmitArea()V
    .registers 3

    #@0
    .line 935
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_18

    #@6
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@8
    .line 936
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_16

    #@e
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@10
    .line 937
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_18

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_1a

    #@18
    :cond_18
    const/16 v0, 0x8

    #@1a
    .line 940
    :goto_1a
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@1c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    #@1f
    return-void
.end method

.method private updateSubmitButton(Z)V
    .registers 3

    #@0
    .line 926
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    #@2
    if-eqz v0, :cond_18

    #@4
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_18

    #@a
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_18

    #@10
    if-nez p1, :cond_16

    #@12
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    #@14
    if-nez p1, :cond_18

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    goto :goto_1a

    #@18
    :cond_18
    const/16 p1, 0x8

    #@1a
    .line 930
    :goto_1a
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@1c
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1f
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .registers 7

    #@0
    .line 880
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    #@2
    const/4 v0, 0x0

    #@3
    const/16 v1, 0x8

    #@5
    if-eqz p1, :cond_9

    #@7
    move v2, v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    move v2, v1

    #@a
    .line 884
    :goto_a
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v3

    #@14
    xor-int/lit8 v3, v3, 0x1

    #@16
    .line 886
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@18
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1b
    .line 887
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    #@1e
    .line 888
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    #@20
    if-eqz p1, :cond_24

    #@22
    move p1, v1

    #@23
    goto :goto_25

    #@24
    :cond_24
    move p1, v0

    #@25
    :goto_25
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    #@28
    .line 891
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@2a
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@2d
    move-result-object p1

    #@2e
    if-eqz p1, :cond_34

    #@30
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@32
    if-eqz p1, :cond_35

    #@34
    :cond_34
    move v0, v1

    #@35
    .line 896
    :cond_35
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@37
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@3a
    .line 898
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    #@3d
    xor-int/lit8 p1, v3, 0x1

    #@3f
    .line 899
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    #@42
    .line 900
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    #@45
    return-void
.end method

.method private updateVoiceButton(Z)V
    .registers 4

    #@0
    .line 1170
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    #@2
    const/16 v1, 0x8

    #@4
    if-eqz v0, :cond_14

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_14

    #@c
    if-eqz p1, :cond_14

    #@e
    .line 1172
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@13
    const/4 v1, 0x0

    #@14
    .line 1174
    :cond_14
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@16
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@19
    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .registers 7

    #@0
    .line 1380
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-le v0, v1, :cond_5f

    #@9
    .line 1381
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v0

    #@11
    .line 1382
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@13
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    #@16
    move-result v1

    #@17
    .line 1383
    new-instance v2, Landroid/graphics/Rect;

    #@19
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@1c
    .line 1384
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@1f
    move-result v3

    #@20
    .line 1385
    iget-boolean v4, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@22
    if-eqz v4, :cond_32

    #@24
    .line 1387
    sget v4, Landroidx/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    #@26
    .line 1386
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@29
    move-result v4

    #@2a
    sget v5, Landroidx/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    #@2c
    .line 1387
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2f
    move-result v0

    #@30
    add-int/2addr v4, v0

    #@31
    goto :goto_33

    #@32
    :cond_32
    const/4 v4, 0x0

    #@33
    .line 1389
    :goto_33
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@35
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@3c
    if-eqz v3, :cond_42

    #@3e
    .line 1392
    iget v0, v2, Landroid/graphics/Rect;->left:I

    #@40
    neg-int v0, v0

    #@41
    goto :goto_47

    #@42
    .line 1394
    :cond_42
    iget v0, v2, Landroid/graphics/Rect;->left:I

    #@44
    add-int/2addr v0, v4

    #@45
    sub-int v0, v1, v0

    #@47
    .line 1396
    :goto_47
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@49
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    #@4c
    .line 1397
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@4e
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@51
    move-result v0

    #@52
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@54
    add-int/2addr v0, v3

    #@55
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@57
    add-int/2addr v0, v2

    #@58
    add-int/2addr v0, v4

    #@59
    sub-int/2addr v0, v1

    #@5a
    .line 1399
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@5c
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    #@5f
    :cond_5f
    return-void
.end method

.method public clearFocus()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 505
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    #@3
    .line 506
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    #@6
    .line 507
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@8
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    #@b
    .line 508
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    #@11
    .line 509
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    #@13
    return-void
.end method

.method forceSuggestionQuery()V
    .registers 3

    #@0
    .line 1713
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_c

    #@6
    .line 1714
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@8
    invoke-static {v0}, Landroidx/appcompat/widget/SearchView$Api29Impl;->refreshAutoCompleteResults(Landroid/widget/AutoCompleteTextView;)V

    #@b
    goto :goto_18

    #@c
    .line 1716
    :cond_c
    sget-object v0, Landroidx/appcompat/widget/SearchView;->PRE_API_29_HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    #@e
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@10
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    #@13
    .line 1717
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@15
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    #@18
    :goto_18
    return-void
.end method

.method public getImeOptions()I
    .registers 2

    #@0
    .line 460
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInputType()I
    .registers 2

    #@0
    .line 482
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getInputType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    #@0
    .line 788
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    #@2
    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 567
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_20

    #@5
    .line 630
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@7
    if-eqz v0, :cond_1e

    #@9
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1e

    #@f
    .line 631
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@15
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_20

    #@1e
    .line 633
    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    #@20
    :goto_20
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .registers 2

    #@0
    .line 401
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    #@2
    return v0
.end method

.method getSuggestionRowLayout()I
    .registers 2

    #@0
    .line 397
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    #@2
    return v0
.end method

.method public getSuggestionsAdapter()Landroidx/cursoradapter/widget/CursorAdapter;
    .registers 2

    #@0
    .line 765
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@2
    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .registers 2

    #@0
    .line 665
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@2
    return v0
.end method

.method public isIconified()Z
    .registers 2

    #@0
    .line 693
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    #@2
    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .registers 2

    #@0
    .line 745
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    #@2
    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .registers 2

    #@0
    .line 715
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    #@2
    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    #@0
    const-string v1, "android.intent.action.SEARCH"

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v4, p3

    #@6
    move v5, p1

    #@7
    move-object v6, p2

    #@8
    .line 1533
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    #@b
    move-result-object p1

    #@c
    .line 1534
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@f
    move-result-object p2

    #@10
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@13
    return-void
.end method

.method public onActionViewCollapsed()V
    .registers 4

    #@0
    const-string v0, ""

    #@2
    const/4 v1, 0x0

    #@3
    .line 1295
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    #@6
    .line 1296
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    #@9
    const/4 v0, 0x1

    #@a
    .line 1297
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@d
    .line 1298
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@f
    iget v2, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    #@11
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@14
    .line 1299
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    #@16
    return-void
.end method

.method public onActionViewExpanded()V
    .registers 4

    #@0
    .line 1307
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 1309
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    #@8
    .line 1310
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@a
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    #@10
    .line 1311
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@12
    const/high16 v2, 0x2000000

    #@14
    or-int/2addr v0, v2

    #@15
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@18
    .line 1312
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@1a
    const-string v1, ""

    #@1c
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@1f
    const/4 v0, 0x0

    #@20
    .line 1313
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    #@23
    return-void
.end method

.method onCloseClicked()V
    .registers 4

    #@0
    .line 1222
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    .line 1223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-eqz v0, :cond_22

    #@d
    .line 1224
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@f
    if-eqz v0, :cond_33

    #@11
    .line 1226
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

    #@13
    if-eqz v0, :cond_1b

    #@15
    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$OnCloseListener;->onClose()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_33

    #@1b
    .line 1228
    :cond_1b
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    #@1e
    .line 1230
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@21
    goto :goto_33

    #@22
    .line 1234
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@24
    const-string v2, ""

    #@26
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@29
    .line 1235
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2b
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    #@2e
    .line 1236
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@30
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    #@33
    :cond_33
    :goto_33
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 975
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 976
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 977
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    #@d
    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .registers 4

    #@0
    .line 1404
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    #@2
    const/4 p3, 0x0

    #@3
    if-eqz p2, :cond_d

    #@5
    .line 1405
    invoke-interface {p2, p1}, Landroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    #@8
    move-result p2

    #@9
    if-nez p2, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    return p3

    #@d
    :cond_d
    :goto_d
    const/4 p2, 0x0

    #@e
    .line 1406
    invoke-direct {p0, p1, p3, p2}, Landroidx/appcompat/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    #@11
    .line 1407
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@13
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    #@16
    .line 1408
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    #@19
    const/4 p1, 0x1

    #@1a
    return p1
.end method

.method onItemSelected(I)Z
    .registers 3

    #@0
    .line 1415
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 1416
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1

    #@d
    .line 1417
    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    #@10
    const/4 p1, 0x1

    #@11
    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 843
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    #@3
    if-eqz p1, :cond_37

    #@5
    .line 848
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@7
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 849
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@e
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@10
    iget p2, p2, Landroid/graphics/Rect;->left:I

    #@12
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@14
    iget p4, p4, Landroid/graphics/Rect;->right:I

    #@16
    sub-int/2addr p5, p3

    #@17
    const/4 p3, 0x0

    #@18
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    #@1b
    .line 851
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    #@1d
    if-nez p1, :cond_30

    #@1f
    .line 852
    new-instance p1, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    #@21
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@23
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@25
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@27
    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    #@2a
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    #@2c
    .line 854
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    #@2f
    goto :goto_37

    #@30
    .line 856
    :cond_30
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@32
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@34
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@37
    :cond_37
    :goto_37
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    #@0
    .line 794
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 795
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    #@9
    return-void

    #@a
    .line 799
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v0

    #@e
    .line 800
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result p1

    #@12
    const/high16 v1, -0x80000000

    #@14
    const/high16 v2, 0x40000000    # 2.0f

    #@16
    if-eq v0, v1, :cond_30

    #@18
    if-eqz v0, :cond_26

    #@1a
    if-eq v0, v2, :cond_1d

    #@1c
    goto :goto_41

    #@1d
    .line 813
    :cond_1d
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    #@1f
    if-lez v0, :cond_41

    #@21
    .line 814
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@24
    move-result p1

    #@25
    goto :goto_41

    #@26
    .line 819
    :cond_26
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    #@28
    if-lez p1, :cond_2b

    #@2a
    goto :goto_41

    #@2b
    :cond_2b
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    #@2e
    move-result p1

    #@2f
    goto :goto_41

    #@30
    .line 805
    :cond_30
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    #@32
    if-lez v0, :cond_39

    #@34
    .line 806
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@37
    move-result p1

    #@38
    goto :goto_41

    #@39
    .line 808
    :cond_39
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    #@3c
    move-result v0

    #@3d
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@40
    move-result p1

    #@41
    .line 824
    :cond_41
    :goto_41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@44
    move-result v0

    #@45
    .line 825
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@48
    move-result p2

    #@49
    if-eq v0, v1, :cond_53

    #@4b
    if-eqz v0, :cond_4e

    #@4d
    goto :goto_5b

    #@4e
    .line 832
    :cond_4e
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    #@51
    move-result p2

    #@52
    goto :goto_5b

    #@53
    .line 829
    :cond_53
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    #@56
    move-result v0

    #@57
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@5a
    move-result p2

    #@5b
    .line 837
    :goto_5b
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5e
    move-result p1

    #@5f
    .line 838
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@62
    move-result p2

    #@63
    .line 837
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    #@66
    return-void
.end method

.method protected onQueryRefine(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 989
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 1369
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1370
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 1373
    :cond_8
    check-cast p1, Landroidx/appcompat/widget/SearchView$SavedState;

    #@a
    .line 1374
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 1375
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    #@13
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@16
    .line 1376
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    #@19
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 1361
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 1362
    new-instance v1, Landroidx/appcompat/widget/SearchView$SavedState;

    #@6
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1363
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    #@f
    return-object v1
.end method

.method onSearchClicked()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1242
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@4
    .line 1243
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@6
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    #@9
    .line 1244
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    #@f
    .line 1245
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 1246
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@16
    :cond_16
    return-void
.end method

.method onSubmitQuery()V
    .registers 4

    #@0
    .line 1204
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_31

    #@8
    .line 1205
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    #@b
    move-result v1

    #@c
    if-lez v1, :cond_31

    #@e
    .line 1206
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    #@10
    if-eqz v1, :cond_1c

    #@12
    .line 1207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1, v2}, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_31

    #@1c
    .line 1208
    :cond_1c
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@1e
    const/4 v2, 0x0

    #@1f
    if-eqz v1, :cond_29

    #@21
    const/4 v1, 0x0

    #@22
    .line 1209
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v2, v1, v0}, Landroidx/appcompat/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    #@29
    .line 1211
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2b
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    #@2e
    .line 1212
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    #@31
    :cond_31
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    #@0
    .line 1059
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    const/4 v0, 0x0

    #@3
    if-nez p1, :cond_6

    #@5
    return v0

    #@6
    .line 1062
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@8
    if-nez p1, :cond_b

    #@a
    return v0

    #@b
    .line 1065
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@e
    move-result p1

    #@f
    if-nez p1, :cond_63

    #@11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_63

    #@17
    const/16 p1, 0x42

    #@19
    if-eq p2, p1, :cond_57

    #@1b
    const/16 p1, 0x54

    #@1d
    if-eq p2, p1, :cond_57

    #@1f
    const/16 p1, 0x3d

    #@21
    if-ne p2, p1, :cond_24

    #@23
    goto :goto_57

    #@24
    :cond_24
    const/16 p1, 0x15

    #@26
    if-eq p2, p1, :cond_37

    #@28
    const/16 p3, 0x16

    #@2a
    if-ne p2, p3, :cond_2d

    #@2c
    goto :goto_37

    #@2d
    :cond_2d
    const/16 p1, 0x13

    #@2f
    if-ne p2, p1, :cond_63

    #@31
    .line 1092
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@33
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@36
    return v0

    #@37
    :cond_37
    :goto_37
    if-ne p2, p1, :cond_3b

    #@39
    move p1, v0

    #@3a
    goto :goto_41

    #@3b
    .line 1082
    :cond_3b
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@3d
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    #@40
    move-result p1

    #@41
    .line 1083
    :goto_41
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@43
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    #@46
    .line 1084
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@48
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    #@4b
    .line 1085
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@4d
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    #@50
    .line 1086
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@52
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->ensureImeVisible()V

    #@55
    const/4 p1, 0x1

    #@56
    return p1

    #@57
    .line 1070
    :cond_57
    :goto_57
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@59
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@5c
    move-result p1

    #@5d
    const/4 p2, 0x0

    #@5e
    .line 1071
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    #@61
    move-result p1

    #@62
    return p1

    #@63
    :cond_63
    return v0
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 1190
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    .line 1191
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@8
    .line 1192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    xor-int/lit8 v0, v0, 0x1

    #@e
    .line 1193
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    #@11
    xor-int/lit8 v0, v0, 0x1

    #@13
    .line 1194
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    #@16
    .line 1195
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    #@19
    .line 1196
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    #@1c
    .line 1197
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    #@1e
    if-eqz v0, :cond_31

    #@20
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    #@22
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_31

    #@28
    .line 1198
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    #@2a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v0, v1}, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    #@31
    .line 1200
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@34
    move-result-object p1

    #@35
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    #@37
    return-void
.end method

.method onTextFocusChanged()V
    .registers 2

    #@0
    .line 1274
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@7
    .line 1277
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    #@a
    .line 1278
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_15

    #@12
    .line 1279
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    #@15
    :cond_15
    return-void
.end method

.method onVoiceClicked()V
    .registers 3

    #@0
    .line 1252
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 1257
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_19

    #@b
    .line 1258
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@d
    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    .line 1260
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@18
    goto :goto_34

    #@19
    .line 1261
    :cond_19
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_34

    #@1f
    .line 1262
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@21
    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    #@24
    move-result-object v0

    #@25
    .line 1264
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_2c} :catch_2d

    #@2c
    goto :goto_34

    #@2d
    :catch_2d
    const-string v0, "SearchView"

    #@2f
    const-string v1, "Could not find voice search activity"

    #@31
    .line 1269
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    :cond_34
    :goto_34
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    #@0
    .line 1285
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    #@3
    .line 1287
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    #@6
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5

    #@0
    .line 488
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 490
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isFocusable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_d

    #@c
    return v1

    #@d
    .line 492
    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1f

    #@13
    .line 493
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@15
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_1e

    #@1b
    .line 495
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@1e
    :cond_1e
    return p1

    #@1f
    .line 499
    :cond_1f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    #@22
    move-result p1

    #@23
    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 436
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@2
    return-void
.end method

.method public setIconified(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_6

    #@2
    .line 680
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    #@5
    goto :goto_9

    #@6
    .line 682
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    #@9
    :goto_9
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3

    #@0
    .line 651
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 652
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    #@7
    .line 653
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@a
    .line 654
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    #@d
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3

    #@0
    .line 448
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@5
    return-void
.end method

.method public setInputType(I)V
    .registers 3

    #@0
    .line 472
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    #@5
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    #@0
    .line 774
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    #@2
    .line 776
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    #@5
    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V
    .registers 2

    #@0
    .line 528
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

    #@2
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2

    #@0
    .line 537
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    #@2
    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V
    .registers 2

    #@0
    .line 519
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    #@2
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    #@0
    .line 558
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@2
    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$OnSuggestionListener;)V
    .registers 2

    #@0
    .line 546
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    #@2
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .registers 5

    #@0
    .line 579
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@5
    if-eqz p1, :cond_12

    #@7
    .line 581
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@9
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    #@10
    .line 582
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@12
    :cond_12
    if-eqz p2, :cond_1d

    #@14
    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@17
    move-result p1

    #@18
    if-nez p1, :cond_1d

    #@1a
    .line 587
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    #@1d
    :cond_1d
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 602
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@2
    .line 603
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    #@5
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4

    #@0
    .line 733
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    #@2
    .line 734
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@4
    instance-of v1, v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    #@6
    if-eqz v1, :cond_12

    #@8
    .line 735
    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x2

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x1

    #@f
    :goto_f
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    #@12
    :cond_12
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 3

    #@0
    .line 413
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    if-eqz p1, :cond_a

    #@4
    .line 415
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateSearchAutoComplete()V

    #@7
    .line 416
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    #@a
    .line 419
    :cond_a
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->hasVoiceSearch()Z

    #@d
    move-result p1

    #@e
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    #@10
    if-eqz p1, :cond_19

    #@12
    .line 424
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@14
    const-string v0, "nm"

    #@16
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    #@19
    .line 426
    :cond_19
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@1c
    move-result p1

    #@1d
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@20
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 2

    #@0
    .line 705
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    #@2
    .line 706
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    #@5
    move-result p1

    #@6
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    #@9
    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .registers 3

    #@0
    .line 755
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    #@2
    .line 757
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@4
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    #@7
    return-void
.end method

.method updateFocusedState()V
    .registers 3

    #@0
    .line 960
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 961
    sget-object v0, Landroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    #@a
    goto :goto_d

    #@b
    :cond_b
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    #@d
    .line 962
    :goto_d
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@f
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_18

    #@15
    .line 964
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@18
    .line 966
    :cond_18
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@1a
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v1

    #@1e
    if-eqz v1, :cond_23

    #@20
    .line 968
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@23
    .line 970
    :cond_23
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->invalidate()V

    #@26
    return-void
.end method

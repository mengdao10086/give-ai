.class public Landroidx/fragment/app/ListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ListFragment.java"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    #@3
    .line 50
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@a
    .line 53
    new-instance v0, Landroidx/fragment/app/ListFragment$1;

    #@c
    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$1;-><init>(Landroidx/fragment/app/ListFragment;)V

    #@f
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@11
    .line 60
    new-instance v0, Landroidx/fragment/app/ListFragment$2;

    #@13
    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$2;-><init>(Landroidx/fragment/app/ListFragment;)V

    #@16
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@18
    return-void
.end method

.method private ensureList()V
    .registers 4

    #@0
    .line 350
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 353
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getView()Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_a0

    #@b
    .line 357
    instance-of v1, v0, Landroid/widget/ListView;

    #@d
    if-eqz v1, :cond_14

    #@f
    .line 358
    check-cast v0, Landroid/widget/ListView;

    #@11
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@13
    goto :goto_7b

    #@14
    :cond_14
    const v1, 0xff0001

    #@17
    .line 360
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/widget/TextView;

    #@1d
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@1f
    if-nez v1, :cond_2b

    #@21
    const v1, 0x1020004

    #@24
    .line 362
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@2a
    goto :goto_30

    #@2b
    :cond_2b
    const/16 v2, 0x8

    #@2d
    .line 364
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@30
    :goto_30
    const v1, 0xff0002

    #@33
    .line 366
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@39
    const v1, 0xff0003

    #@3c
    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@42
    const v1, 0x102000a

    #@45
    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object v0

    #@49
    .line 369
    instance-of v1, v0, Landroid/widget/ListView;

    #@4b
    if-nez v1, :cond_5f

    #@4d
    if-nez v0, :cond_57

    #@4f
    .line 371
    new-instance v0, Ljava/lang/RuntimeException;

    #@51
    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    #@53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 375
    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    #@59
    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    #@5b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    .line 379
    :cond_5f
    check-cast v0, Landroid/widget/ListView;

    #@61
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@63
    .line 380
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@65
    if-eqz v1, :cond_6b

    #@67
    .line 381
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@6a
    goto :goto_7b

    #@6b
    .line 382
    :cond_6b
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@6d
    if-eqz v0, :cond_7b

    #@6f
    .line 383
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@71
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@74
    .line 384
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@76
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@78
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@7b
    :cond_7b
    :goto_7b
    const/4 v0, 0x1

    #@7c
    .line 387
    iput-boolean v0, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    #@7e
    .line 388
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@80
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@82
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@85
    .line 389
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@87
    if-eqz v0, :cond_90

    #@89
    const/4 v1, 0x0

    #@8a
    .line 391
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@8c
    .line 392
    invoke-virtual {p0, v0}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@8f
    goto :goto_98

    #@90
    .line 396
    :cond_90
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@92
    if-eqz v0, :cond_98

    #@94
    const/4 v0, 0x0

    #@95
    .line 397
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    #@98
    .line 400
    :cond_98
    :goto_98
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@9a
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@9c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@9f
    return-void

    #@a0
    .line 355
    :cond_a0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a2
    const-string v1, "Content view not yet created"

    #@a4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v0
.end method

.method private setListShown(ZZ)V
    .registers 8

    #@0
    .line 288
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    #@3
    .line 289
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@5
    if-eqz v0, :cond_74

    #@7
    .line 292
    iget-boolean v1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    #@9
    if-ne v1, p1, :cond_c

    #@b
    return-void

    #@c
    .line 295
    :cond_c
    iput-boolean p1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    #@e
    const/16 v1, 0x8

    #@10
    const/4 v2, 0x0

    #@11
    const v3, 0x10a0001

    #@14
    const/high16 v4, 0x10a0000

    #@16
    if-eqz p1, :cond_46

    #@18
    if-eqz p2, :cond_33

    #@1a
    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    #@1d
    move-result-object p1

    #@1e
    .line 298
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@25
    .line 300
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@27
    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    #@2a
    move-result-object p2

    #@2b
    .line 300
    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@2e
    move-result-object p2

    #@2f
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@32
    goto :goto_3b

    #@33
    .line 303
    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@36
    .line 304
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@38
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    #@3b
    .line 306
    :goto_3b
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@3d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@40
    .line 307
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@45
    goto :goto_73

    #@46
    :cond_46
    if-eqz p2, :cond_61

    #@48
    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    #@4b
    move-result-object p1

    #@4c
    .line 310
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@4f
    move-result-object p1

    #@50
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@53
    .line 312
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@55
    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    #@58
    move-result-object p2

    #@59
    .line 312
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@5c
    move-result-object p2

    #@5d
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@60
    goto :goto_69

    #@61
    .line 315
    :cond_61
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@64
    .line 316
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@66
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    #@69
    .line 318
    :goto_69
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@6b
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    #@6e
    .line 319
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@73
    :goto_73
    return-void

    #@74
    .line 290
    :cond_74
    new-instance p1, Ljava/lang/IllegalStateException;

    #@76
    const-string p2, "Can\'t be used with a custom content view"

    #@78
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7b
    throw p1
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .registers 2

    #@0
    .line 330
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    #@0
    .line 230
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    #@3
    .line 231
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    #@0
    .line 221
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    #@3
    .line 222
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    #@0
    .line 213
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    #@3
    .line 214
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    #@0
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->requireContext()Landroid/content/Context;

    #@3
    move-result-object p1

    #@4
    .line 100
    new-instance p2, Landroid/widget/FrameLayout;

    #@6
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@9
    .line 104
    new-instance p3, Landroid/widget/LinearLayout;

    #@b
    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@e
    const v0, 0xff0002

    #@11
    .line 105
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setId(I)V

    #@14
    const/4 v0, 0x1

    #@15
    .line 106
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@18
    const/16 v0, 0x8

    #@1a
    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@1d
    const/16 v0, 0x11

    #@1f
    .line 108
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@22
    .line 110
    new-instance v1, Landroid/widget/ProgressBar;

    #@24
    const/4 v2, 0x0

    #@25
    const v3, 0x101007a

    #@28
    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@2b
    .line 112
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    #@2d
    const/4 v3, -0x2

    #@2e
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@31
    invoke-virtual {p3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@34
    .line 115
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@36
    const/4 v2, -0x1

    #@37
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@3a
    invoke-virtual {p2, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3d
    .line 120
    new-instance p3, Landroid/widget/FrameLayout;

    #@3f
    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@42
    const v1, 0xff0003

    #@45
    .line 121
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setId(I)V

    #@48
    .line 123
    new-instance v1, Landroid/widget/TextView;

    #@4a
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@4d
    const v3, 0xff0001

    #@50
    .line 124
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    #@53
    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    #@56
    .line 126
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@58
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@5b
    invoke-virtual {p3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5e
    .line 129
    new-instance v0, Landroid/widget/ListView;

    #@60
    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@63
    const p1, 0x102000a

    #@66
    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setId(I)V

    #@69
    const/4 p1, 0x0

    #@6a
    .line 131
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    #@6d
    .line 132
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    #@6f
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@72
    invoke-virtual {p3, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@75
    .line 135
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    #@77
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@7a
    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7d
    .line 140
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    #@7f
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@82
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@85
    return-object p2
.end method

.method public onDestroyView()V
    .registers 3

    #@0
    .line 160
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    const/4 v0, 0x0

    #@8
    .line 161
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a
    const/4 v1, 0x0

    #@b
    .line 162
    iput-boolean v1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    #@d
    .line 163
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    #@f
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@11
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@13
    .line 164
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@15
    .line 165
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    #@18
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    #@0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 151
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@3
    .line 152
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    #@6
    return-void
.end method

.method public final requireListAdapter()Landroid/widget/ListAdapter;
    .registers 4

    #@0
    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 343
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "ListFragment "

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string v2, " does not have a ListAdapter."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 240
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    #@3
    .line 241
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@5
    if-eqz v0, :cond_18

    #@7
    .line 244
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a
    .line 245
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@c
    if-nez v0, :cond_15

    #@e
    .line 246
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@10
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@15
    .line 248
    :cond_15
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@17
    return-void

    #@18
    .line 242
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1a
    const-string v0, "Can\'t be used with a custom content view"

    #@1c
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw p1
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 6

    #@0
    .line 186
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v0, :cond_8

    #@6
    move v0, v2

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v0, v1

    #@9
    .line 187
    :goto_9
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@b
    .line 188
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@d
    if-eqz v3, :cond_26

    #@f
    .line 189
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@12
    .line 190
    iget-boolean p1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    #@14
    if-nez p1, :cond_26

    #@16
    if-nez v0, :cond_26

    #@18
    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->requireView()Landroid/view/View;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@1f
    move-result-object p1

    #@20
    if-eqz p1, :cond_23

    #@22
    move v1, v2

    #@23
    :cond_23
    invoke-direct {p0, v2, v1}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    #@26
    :cond_26
    return-void
.end method

.method public setListShown(Z)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 266
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    #@4
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 274
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    #@4
    return-void
.end method

.method public setSelection(I)V
    .registers 3

    #@0
    .line 205
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    #@3
    .line 206
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    #@8
    return-void
.end method

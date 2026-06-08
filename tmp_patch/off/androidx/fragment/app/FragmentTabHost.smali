.class public Landroidx/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTabHost$SavedState;,
        Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;,
        Landroidx/fragment/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 137
    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@b
    .line 138
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@a
    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@d
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;
    .registers 6

    #@0
    .line 402
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@3
    move-result-object p1

    #@4
    .line 403
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@6
    if-eq v0, p1, :cond_55

    #@8
    if-nez p2, :cond_10

    #@a
    .line 405
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@f
    move-result-object p2

    #@10
    .line 408
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@12
    if-eqz v0, :cond_1f

    #@14
    .line 409
    iget-object v0, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@16
    if-eqz v0, :cond_1f

    #@18
    .line 410
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@1a
    iget-object v0, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@1c
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@1f
    :cond_1f
    if-eqz p1, :cond_53

    #@21
    .line 415
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@23
    if-nez v0, :cond_4e

    #@25
    .line 416
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@27
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@2d
    .line 417
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    #@33
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 416
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@3d
    .line 418
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@3f
    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    #@41
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@44
    .line 419
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    #@46
    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@48
    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    #@4a
    invoke-virtual {p2, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@4d
    goto :goto_53

    #@4e
    .line 421
    :cond_4e
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@50
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@53
    .line 425
    :cond_53
    :goto_53
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@55
    :cond_55
    return-object p2
.end method

.method private ensureContent()V
    .registers 4

    #@0
    .line 242
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@2
    if-nez v0, :cond_28

    #@4
    .line 243
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    #@6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/FrameLayout;

    #@c
    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@e
    if-eqz v0, :cond_11

    #@10
    goto :goto_28

    #@11
    .line 245
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    const-string v2, "No tab content FrameLayout found for id "

    #@17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    iget v2, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    :cond_28
    :goto_28
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .registers 9

    #@0
    const v0, 0x1020013

    #@3
    .line 164
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_5a

    #@9
    .line 165
    new-instance v1, Landroid/widget/LinearLayout;

    #@b
    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@e
    const/4 v2, 0x1

    #@f
    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@12
    .line 167
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    #@14
    const/4 v3, -0x1

    #@15
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@18
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1b
    .line 171
    new-instance v2, Landroid/widget/TabWidget;

    #@1d
    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    #@20
    .line 172
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    #@23
    const/4 v0, 0x0

    #@24
    .line 173
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    #@27
    .line 174
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    #@29
    const/4 v5, -0x2

    #@2a
    const/4 v6, 0x0

    #@2b
    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@2e
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@31
    .line 178
    new-instance v2, Landroid/widget/FrameLayout;

    #@33
    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@36
    const v4, 0x1020011

    #@39
    .line 179
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    #@3c
    .line 180
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    #@3e
    invoke-direct {v4, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@41
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@44
    .line 182
    new-instance v2, Landroid/widget/FrameLayout;

    #@46
    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@49
    iput-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@4b
    .line 183
    iget p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    #@4d
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    #@50
    .line 184
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    #@52
    const/high16 v4, 0x3f800000    # 1.0f

    #@54
    invoke-direct {p1, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@57
    invoke-virtual {v1, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5a
    :cond_5a
    return-void
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;
    .registers 6

    #@0
    .line 433
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_1d

    #@9
    .line 434
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@11
    .line 435
    iget-object v3, v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1a

    #@19
    return-object v2

    #@1a
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_7

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    return-object p1
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const v1, 0x10100f3

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 153
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@c
    move-result-object p1

    #@d
    .line 155
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10
    move-result p2

    #@11
    iput p2, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    #@13
    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 158
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    #@19
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 270
    new-instance v0, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    #@7
    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    #@a
    .line 272
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 273
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@10
    invoke-direct {v1, v0, p2, p3}, Landroidx/fragment/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    #@13
    .line 275
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    #@15
    if-eqz p2, :cond_39

    #@17
    .line 279
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@19
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@1c
    move-result-object p2

    #@1d
    iput-object p2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@1f
    .line 280
    iget-object p2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@21
    if-eqz p2, :cond_39

    #@23
    iget-object p2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@25
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    #@28
    move-result p2

    #@29
    if-nez p2, :cond_39

    #@2b
    .line 281
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2d
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@30
    move-result-object p2

    #@31
    .line 282
    iget-object p3, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@33
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@36
    .line 283
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    #@39
    .line 287
    :cond_39
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 288
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    #@41
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 299
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    #@3
    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 306
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, 0x0

    #@f
    :goto_f
    if-ge v3, v1, :cond_4a

    #@11
    .line 307
    iget-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@19
    .line 308
    iget-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1b
    iget-object v6, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    #@1d
    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@20
    move-result-object v5

    #@21
    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@23
    .line 309
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@25
    if-eqz v5, :cond_47

    #@27
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@29
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isDetached()Z

    #@2c
    move-result v5

    #@2d
    if-nez v5, :cond_47

    #@2f
    .line 310
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    #@31
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_3a

    #@37
    .line 314
    iput-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    #@39
    goto :goto_47

    #@3a
    :cond_3a
    if-nez v2, :cond_42

    #@3c
    .line 319
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@3e
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@41
    move-result-object v2

    #@42
    .line 321
    :cond_42
    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    #@44
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@47
    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_f

    #@4a
    :cond_4a
    const/4 v1, 0x1

    #@4b
    .line 328
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    #@4d
    .line 329
    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    #@50
    move-result-object v0

    #@51
    if-eqz v0, :cond_5b

    #@53
    .line 331
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    #@56
    .line 332
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@58
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    #@5b
    :cond_5b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 344
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 345
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    #@6
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 371
    instance-of v0, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 372
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 375
    :cond_8
    check-cast p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    #@a
    .line 376
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 377
    iget-object p1, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    #@13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    #@16
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 357
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 358
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    #@6
    invoke-direct {v1, v0}, Landroidx/fragment/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, v1, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    #@f
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 388
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    const/4 v0, 0x0

    #@5
    .line 389
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 391
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    #@e
    .line 394
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@10
    if-eqz v0, :cond_15

    #@12
    .line 395
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    #@15
    :cond_15
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 259
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@2
    return-void
.end method

.method public setup()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 209
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    #@3
    .line 210
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    #@6
    .line 211
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@8
    .line 212
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@a
    .line 213
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    #@d
    return-void
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 226
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    #@3
    .line 227
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    #@6
    .line 228
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@8
    .line 229
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@a
    .line 230
    iput p3, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    #@c
    .line 231
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    #@f
    .line 232
    iget-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@11
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setId(I)V

    #@14
    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getId()I

    #@17
    move-result p1

    #@18
    const/4 p2, -0x1

    #@19
    if-ne p1, p2, :cond_21

    #@1b
    const p1, 0x1020012

    #@1e
    .line 237
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->setId(I)V

    #@21
    :cond_21
    return-void
.end method

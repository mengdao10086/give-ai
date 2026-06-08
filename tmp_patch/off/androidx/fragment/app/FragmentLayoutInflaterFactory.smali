.class Landroidx/fragment/app/FragmentLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@5
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 13

    #@0
    .line 52
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    .line 53
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    #@e
    iget-object p2, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@10
    invoke-direct {p1, p3, p4, p2}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/FragmentManager;)V

    #@13
    return-object p1

    #@14
    :cond_14
    const-string v0, "fragment"

    #@16
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result p2

    #@1a
    const/4 v0, 0x0

    #@1b
    if-nez p2, :cond_1e

    #@1d
    return-object v0

    #@1e
    :cond_1e
    const-string p2, "class"

    #@20
    .line 60
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object p2

    #@24
    .line 61
    sget-object v1, Landroidx/fragment/R$styleable;->Fragment:[I

    #@26
    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@29
    move-result-object v1

    #@2a
    if-nez p2, :cond_32

    #@2c
    .line 63
    sget p2, Landroidx/fragment/R$styleable;->Fragment_android_name:I

    #@2e
    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@31
    move-result-object p2

    #@32
    .line 65
    :cond_32
    sget v2, Landroidx/fragment/R$styleable;->Fragment_android_id:I

    #@34
    const/4 v3, -0x1

    #@35
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@38
    move-result v2

    #@39
    .line 66
    sget v4, Landroidx/fragment/R$styleable;->Fragment_android_tag:I

    #@3b
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    .line 67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@42
    if-eqz p2, :cond_1e6

    #@44
    .line 69
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@47
    move-result-object v1

    #@48
    invoke-static {v1, p2}, Landroidx/fragment/app/FragmentFactory;->isFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    #@4b
    move-result v1

    #@4c
    if-nez v1, :cond_50

    #@4e
    goto/16 :goto_1e6

    #@50
    :cond_50
    if-eqz p1, :cond_57

    #@52
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@55
    move-result v1

    #@56
    goto :goto_58

    #@57
    :cond_57
    const/4 v1, 0x0

    #@58
    :goto_58
    if-ne v1, v3, :cond_80

    #@5a
    if-ne v2, v3, :cond_80

    #@5c
    if-eqz v4, :cond_5f

    #@5e
    goto :goto_80

    #@5f
    .line 77
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@61
    new-instance p3, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@69
    move-result-object p4

    #@6a
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object p3

    #@6e
    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    #@70
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object p3

    #@74
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object p2

    #@78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object p2

    #@7c
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw p1

    #@80
    :cond_80
    :goto_80
    if-eq v2, v3, :cond_88

    #@82
    .line 85
    iget-object v0, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@84
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    #@87
    move-result-object v0

    #@88
    :cond_88
    if-nez v0, :cond_92

    #@8a
    if-eqz v4, :cond_92

    #@8c
    .line 87
    iget-object v0, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@8e
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@91
    move-result-object v0

    #@92
    :cond_92
    if-nez v0, :cond_9c

    #@94
    if-eq v1, v3, :cond_9c

    #@96
    .line 90
    iget-object v0, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@98
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    #@9b
    move-result-object v0

    #@9c
    :cond_9c
    const-string v3, "Fragment "

    #@9e
    const-string v5, "FragmentManager"

    #@a0
    const/4 v6, 0x2

    #@a1
    const/4 v7, 0x1

    #@a2
    if-nez v0, :cond_107

    #@a4
    .line 95
    iget-object v0, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@a6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    #@a9
    move-result-object v0

    #@aa
    .line 96
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@ad
    move-result-object p3

    #@ae
    .line 95
    invoke-virtual {v0, p3, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@b1
    move-result-object v0

    #@b2
    .line 97
    iput-boolean v7, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    #@b4
    if-eqz v2, :cond_b8

    #@b6
    move p3, v2

    #@b7
    goto :goto_b9

    #@b8
    :cond_b8
    move p3, v1

    #@b9
    .line 98
    :goto_b9
    iput p3, v0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    #@bb
    .line 99
    iput v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    #@bd
    .line 100
    iput-object v4, v0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    #@bf
    .line 101
    iput-boolean v7, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@c1
    .line 102
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c3
    iput-object p3, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c5
    .line 103
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@c7
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@ca
    move-result-object p3

    #@cb
    iput-object p3, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@cd
    .line 104
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@cf
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@d2
    move-result-object p3

    #@d3
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@d6
    move-result-object p3

    #@d7
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@d9
    invoke-virtual {v0, p3, p4, v1}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@dc
    .line 106
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@de
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@e1
    move-result-object p3

    #@e2
    .line 107
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@e5
    move-result p4

    #@e6
    if-eqz p4, :cond_154

    #@e8
    .line 108
    new-instance p4, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ed
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object p4

    #@f1
    const-string v1, " has been inflated via the <fragment> tag: id=0x"

    #@f3
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object p4

    #@f7
    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@fa
    move-result-object v1

    #@fb
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object p4

    #@ff
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object p4

    #@103
    .line 108
    invoke-static {v5, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    goto :goto_154

    #@107
    .line 112
    :cond_107
    iget-boolean p3, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@109
    if-nez p3, :cond_19f

    #@10b
    .line 122
    iput-boolean v7, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    #@10d
    .line 123
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@10f
    iput-object p3, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@111
    .line 124
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@113
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@116
    move-result-object p3

    #@117
    iput-object p3, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    #@119
    .line 126
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@11b
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@11e
    move-result-object p3

    #@11f
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@122
    move-result-object p3

    #@123
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@125
    invoke-virtual {v0, p3, p4, v1}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@128
    .line 128
    iget-object p3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@12a
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    #@12d
    move-result-object p3

    #@12e
    .line 129
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@131
    move-result p4

    #@132
    if-eqz p4, :cond_154

    #@134
    .line 130
    new-instance p4, Ljava/lang/StringBuilder;

    #@136
    const-string v1, "Retained Fragment "

    #@138
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13b
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object p4

    #@13f
    const-string v1, " has been re-attached via the <fragment> tag: id=0x"

    #@141
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object p4

    #@145
    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object p4

    #@14d
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object p4

    #@151
    .line 130
    invoke-static {v5, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@154
    .line 134
    :cond_154
    :goto_154
    check-cast p1, Landroid/view/ViewGroup;

    #@156
    invoke-static {v0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onFragmentTagUsage(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    #@159
    .line 138
    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@15b
    .line 142
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    #@15e
    .line 144
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    #@161
    .line 146
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@163
    if-eqz p1, :cond_186

    #@165
    if-eqz v2, :cond_16c

    #@167
    .line 151
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@169
    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    #@16c
    .line 153
    :cond_16c
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@16e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@171
    move-result-object p1

    #@172
    if-nez p1, :cond_179

    #@174
    .line 154
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@176
    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@179
    .line 159
    :cond_179
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@17b
    new-instance p2, Landroidx/fragment/app/FragmentLayoutInflaterFactory$1;

    #@17d
    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/FragmentLayoutInflaterFactory$1;-><init>(Landroidx/fragment/app/FragmentLayoutInflaterFactory;Landroidx/fragment/app/FragmentStateManager;)V

    #@180
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@183
    .line 175
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@185
    return-object p1

    #@186
    .line 147
    :cond_186
    new-instance p1, Ljava/lang/IllegalStateException;

    #@188
    new-instance p3, Ljava/lang/StringBuilder;

    #@18a
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18d
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object p2

    #@191
    const-string p3, " did not create a view."

    #@193
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object p2

    #@197
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object p2

    #@19b
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19e
    throw p1

    #@19f
    .line 115
    :cond_19f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1a1
    new-instance p3, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@1a9
    move-result-object p4

    #@1aa
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object p3

    #@1ae
    const-string p4, ": Duplicate id 0x"

    #@1b0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object p3

    #@1b4
    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b7
    move-result-object p4

    #@1b8
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object p3

    #@1bc
    const-string p4, ", tag "

    #@1be
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object p3

    #@1c2
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object p3

    #@1c6
    const-string p4, ", or parent id 0x"

    #@1c8
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object p3

    #@1cc
    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1cf
    move-result-object p4

    #@1d0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object p3

    #@1d4
    const-string p4, " with another fragment for "

    #@1d6
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object p3

    #@1da
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object p2

    #@1de
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object p2

    #@1e2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e5
    throw p1

    #@1e6
    :cond_1e6
    :goto_1e6
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 45
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.class public Landroidx/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnterAction:Ljava/lang/Runnable;

.field private mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    #@0
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 39
    iput v0, p0, Landroidx/transition/Scene;->mLayoutId:I

    #@6
    .line 90
    iput-object p1, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@8
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .registers 4

    #@0
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    iput-object p3, p0, Landroidx/transition/Scene;->mContext:Landroid/content/Context;

    #@5
    .line 110
    iput-object p1, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@7
    .line 111
    iput p2, p0, Landroidx/transition/Scene;->mLayoutId:I

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    #@0
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 39
    iput v0, p0, Landroidx/transition/Scene;->mLayoutId:I

    #@6
    .line 125
    iput-object p1, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@8
    .line 126
    iput-object p2, p0, Landroidx/transition/Scene;->mLayout:Landroid/view/View;

    #@a
    return-void
.end method

.method public static getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;
    .registers 2

    #@0
    .line 209
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/transition/Scene;

    #@8
    return-object p0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;
    .registers 5

    #@0
    .line 63
    sget v0, Landroidx/transition/R$id;->transition_scene_layoutid_cache:I

    #@2
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/SparseArray;

    #@8
    if-nez v0, :cond_14

    #@a
    .line 66
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 67
    sget v1, Landroidx/transition/R$id;->transition_scene_layoutid_cache:I

    #@11
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@14
    .line 69
    :cond_14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroidx/transition/Scene;

    #@1a
    if-eqz v1, :cond_1d

    #@1c
    return-object v1

    #@1d
    .line 73
    :cond_1d
    new-instance v1, Landroidx/transition/Scene;

    #@1f
    invoke-direct {v1, p0, p1, p2}, Landroidx/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    #@22
    .line 74
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@25
    return-object v1
.end method

.method static setCurrentScene(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V
    .registers 3

    #@0
    .line 196
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    #@0
    .line 168
    iget v0, p0, Landroidx/transition/Scene;->mLayoutId:I

    #@2
    if-gtz v0, :cond_8

    #@4
    iget-object v0, p0, Landroidx/transition/Scene;->mLayout:Landroid/view/View;

    #@6
    if-eqz v0, :cond_28

    #@8
    .line 170
    :cond_8
    invoke-virtual {p0}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    #@f
    .line 172
    iget v0, p0, Landroidx/transition/Scene;->mLayoutId:I

    #@11
    if-lez v0, :cond_21

    #@13
    .line 173
    iget-object v0, p0, Landroidx/transition/Scene;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroidx/transition/Scene;->mLayoutId:I

    #@1b
    iget-object v2, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@20
    goto :goto_28

    #@21
    .line 175
    :cond_21
    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@23
    iget-object v1, p0, Landroidx/transition/Scene;->mLayout:Landroid/view/View;

    #@25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@28
    .line 180
    :cond_28
    :goto_28
    iget-object v0, p0, Landroidx/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    #@2a
    if-eqz v0, :cond_2f

    #@2c
    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@2f
    .line 184
    :cond_2f
    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@31
    invoke-static {v0, p0}, Landroidx/transition/Scene;->setCurrentScene(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V

    #@34
    return-void
.end method

.method public exit()V
    .registers 2

    #@0
    .line 149
    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@2
    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p0, :cond_f

    #@8
    .line 150
    iget-object v0, p0, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@f
    :cond_f
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .registers 2

    #@0
    .line 138
    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .registers 2

    #@0
    .line 259
    iget v0, p0, Landroidx/transition/Scene;->mLayoutId:I

    #@2
    if-lez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 230
    iput-object p1, p0, Landroidx/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    #@2
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 250
    iput-object p1, p0, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    #@2
    return-void
.end method

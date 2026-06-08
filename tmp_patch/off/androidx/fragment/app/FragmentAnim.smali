.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I
    .registers 3

    #@0
    if-eqz p2, :cond_e

    #@2
    if-eqz p1, :cond_9

    #@4
    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    #@7
    move-result p0

    #@8
    return p0

    #@9
    .line 125
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    #@c
    move-result p0

    #@d
    return p0

    #@e
    :cond_e
    if-eqz p1, :cond_15

    #@10
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    #@13
    move-result p0

    #@14
    return p0

    #@15
    .line 131
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    #@18
    move-result p0

    #@19
    return p0
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .registers 9

    #@0
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    #@3
    move-result v0

    #@4
    .line 46
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/FragmentAnim;->getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I

    #@7
    move-result p3

    #@8
    const/4 v1, 0x0

    #@9
    .line 48
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    #@c
    .line 54
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@e
    const/4 v3, 0x0

    #@f
    if-eqz v2, :cond_22

    #@11
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@13
    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    #@15
    .line 55
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    if-eqz v2, :cond_22

    #@1b
    .line 56
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@1d
    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    #@1f
    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@22
    .line 59
    :cond_22
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@24
    if-eqz v2, :cond_2f

    #@26
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@2b
    move-result-object v2

    #@2c
    if-eqz v2, :cond_2f

    #@2e
    return-object v3

    #@2f
    .line 63
    :cond_2f
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    #@32
    move-result-object v2

    #@33
    if-eqz v2, :cond_3b

    #@35
    .line 65
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@37
    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    #@3a
    return-object p0

    #@3b
    .line 68
    :cond_3b
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    #@3e
    move-result-object p1

    #@3f
    if-eqz p1, :cond_47

    #@41
    .line 70
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@43
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    #@46
    return-object p0

    #@47
    :cond_47
    if-nez p3, :cond_4f

    #@49
    if-eqz v0, :cond_4f

    #@4b
    .line 74
    invoke-static {p0, v0, p2}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(Landroid/content/Context;IZ)I

    #@4e
    move-result p3

    #@4f
    :cond_4f
    if-eqz p3, :cond_8f

    #@51
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@54
    move-result-object p1

    #@55
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@58
    move-result-object p1

    #@59
    const-string p2, "anim"

    #@5b
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result p1

    #@5f
    if-eqz p1, :cond_71

    #@61
    .line 84
    :try_start_61
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@64
    move-result-object p2

    #@65
    if-eqz p2, :cond_6d

    #@67
    .line 86
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@69
    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_6c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_61 .. :try_end_6c} :catch_6f
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_6c} :catch_71

    #@6c
    return-object v0

    #@6d
    :cond_6d
    const/4 v1, 0x1

    #@6e
    goto :goto_71

    #@6f
    :catch_6f
    move-exception p0

    #@70
    .line 91
    throw p0

    #@71
    :catch_71
    :cond_71
    :goto_71
    if-nez v1, :cond_8f

    #@73
    .line 99
    :try_start_73
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@76
    move-result-object p2

    #@77
    if-eqz p2, :cond_8f

    #@79
    .line 101
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@7b
    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_7e} :catch_7f

    #@7e
    return-object v0

    #@7f
    :catch_7f
    move-exception p2

    #@80
    if-nez p1, :cond_8e

    #@82
    .line 109
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@85
    move-result-object p0

    #@86
    if-eqz p0, :cond_8f

    #@88
    .line 111
    new-instance p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    #@8a
    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    #@8d
    return-object p1

    #@8e
    .line 106
    :cond_8e
    throw p2

    #@8f
    :cond_8f
    return-object v3
.end method

.method private static toActivityTransitResId(Landroid/content/Context;I)I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    aput p1, v0, v1

    #@6
    const p1, 0x1030001

    #@9
    .line 169
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object p0

    #@d
    const/4 p1, -0x1

    #@e
    .line 171
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@11
    move-result p1

    #@12
    .line 172
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    return p1
.end method

.method private static transitToAnimResourceId(Landroid/content/Context;IZ)I
    .registers 4

    #@0
    const/16 v0, 0x1001

    #@2
    if-eq p1, v0, :cond_4a

    #@4
    const/16 v0, 0x2002

    #@6
    if-eq p1, v0, :cond_42

    #@8
    const/16 v0, 0x2005

    #@a
    if-eq p1, v0, :cond_30

    #@c
    const/16 v0, 0x1003

    #@e
    if-eq p1, v0, :cond_28

    #@10
    const/16 v0, 0x1004

    #@12
    if-eq p1, v0, :cond_16

    #@14
    const/4 p0, -0x1

    #@15
    goto :goto_51

    #@16
    :cond_16
    if-eqz p2, :cond_20

    #@18
    const p1, 0x10100b8

    #@1b
    .line 152
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    #@1e
    move-result p0

    #@1f
    goto :goto_51

    #@20
    :cond_20
    const p1, 0x10100b9

    #@23
    .line 153
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    #@26
    move-result p0

    #@27
    goto :goto_51

    #@28
    :cond_28
    if-eqz p2, :cond_2d

    #@2a
    .line 148
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    #@2c
    goto :goto_51

    #@2d
    :cond_2d
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    #@2f
    goto :goto_51

    #@30
    :cond_30
    if-eqz p2, :cond_3a

    #@32
    const p1, 0x10100ba

    #@35
    .line 157
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    #@38
    move-result p0

    #@39
    goto :goto_51

    #@3a
    :cond_3a
    const p1, 0x10100bb

    #@3d
    .line 159
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    #@40
    move-result p0

    #@41
    goto :goto_51

    #@42
    :cond_42
    if-eqz p2, :cond_47

    #@44
    .line 145
    sget p0, Landroidx/fragment/R$animator;->fragment_close_enter:I

    #@46
    goto :goto_51

    #@47
    :cond_47
    sget p0, Landroidx/fragment/R$animator;->fragment_close_exit:I

    #@49
    goto :goto_51

    #@4a
    :cond_4a
    if-eqz p2, :cond_4f

    #@4c
    .line 142
    sget p0, Landroidx/fragment/R$animator;->fragment_open_enter:I

    #@4e
    goto :goto_51

    #@4f
    :cond_4f
    sget p0, Landroidx/fragment/R$animator;->fragment_open_exit:I

    #@51
    :goto_51
    return p0
.end method

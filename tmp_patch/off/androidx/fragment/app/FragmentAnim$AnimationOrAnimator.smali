.class Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 192
    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    #@6
    .line 193
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    #@8
    if-eqz p1, :cond_b

    #@a
    return-void

    #@b
    .line 195
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    #@d
    const-string v0, "Animator cannot be null"

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
    .registers 3

    #@0
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 184
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    #@5
    const/4 v0, 0x0

    #@6
    .line 185
    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    #@8
    if-eqz p1, :cond_b

    #@a
    return-void

    #@b
    .line 187
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    #@d
    const-string v0, "Animation cannot be null"

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1
.end method

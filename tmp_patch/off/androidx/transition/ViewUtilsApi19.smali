.class Landroidx/transition/ViewUtilsApi19;
.super Landroidx/transition/ViewUtilsBase;
.source "ViewUtilsApi19.java"


# static fields
.field private static sTryHiddenTransitionAlpha:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    .line 26
    invoke-direct {p0}, Landroidx/transition/ViewUtilsBase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .registers 3

    #@0
    .line 52
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 56
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    #@7
    move-result p1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_8} :catch_9

    #@8
    return p1

    #@9
    :catch_9
    const/4 v0, 0x0

    #@a
    .line 58
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    #@c
    .line 61
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .registers 4

    #@0
    .line 36
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 40
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    #@7
    return-void

    #@8
    :catch_8
    const/4 v0, 0x0

    #@9
    .line 43
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    #@b
    .line 46
    :cond_b
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    #@e
    return-void
.end method

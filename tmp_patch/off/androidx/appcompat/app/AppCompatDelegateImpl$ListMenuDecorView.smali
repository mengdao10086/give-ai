.class Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .registers 3

    #@0
    .line 3040
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    #@2
    .line 3041
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method

.method private isOutOfBounds(II)Z
    .registers 4

    #@0
    const/4 v0, -0x5

    #@1
    if-lt p1, v0, :cond_18

    #@3
    if-lt p2, v0, :cond_18

    #@5
    .line 3070
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getWidth()I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, 0x5

    #@b
    if-gt p1, v0, :cond_18

    #@d
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getHeight()I

    #@10
    move-result p1

    #@11
    add-int/lit8 p1, p1, 0x5

    #@13
    if-le p2, p1, :cond_16

    #@15
    goto :goto_18

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    goto :goto_19

    #@18
    :cond_18
    :goto_18
    const/4 p1, 0x1

    #@19
    :goto_19
    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 3046
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_11

    #@8
    .line 3047
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x1

    #@12
    :goto_12
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    .line 3052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1e

    #@6
    .line 3054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@9
    move-result v0

    #@a
    float-to-int v0, v0

    #@b
    .line 3055
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@e
    move-result v1

    #@f
    float-to-int v1, v1

    #@10
    .line 3056
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->isOutOfBounds(II)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1e

    #@16
    .line 3057
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    #@18
    const/4 v0, 0x0

    #@19
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(I)V

    #@1c
    const/4 p1, 0x1

    #@1d
    return p1

    #@1e
    .line 3061
    :cond_1e
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@21
    move-result p1

    #@22
    return p1
.end method

.method public setBackgroundResource(I)V
    .registers 3

    #@0
    .line 3066
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

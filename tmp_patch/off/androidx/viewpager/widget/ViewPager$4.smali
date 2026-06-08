.class Landroidx/viewpager/widget/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/ViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    #@0
    .line 428
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$4;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 429
    new-instance p1, Landroid/graphics/Rect;

    #@7
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    #@c
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 8

    #@0
    .line 436
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    #@3
    move-result-object p1

    #@4
    .line 437
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    #@7
    move-result p2

    #@8
    if-eqz p2, :cond_b

    #@a
    return-object p1

    #@b
    .line 449
    :cond_b
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    #@d
    .line 450
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@10
    move-result v0

    #@11
    iput v0, p2, Landroid/graphics/Rect;->left:I

    #@13
    .line 451
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@16
    move-result v0

    #@17
    iput v0, p2, Landroid/graphics/Rect;->top:I

    #@19
    .line 452
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@1c
    move-result v0

    #@1d
    iput v0, p2, Landroid/graphics/Rect;->right:I

    #@1f
    .line 453
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@22
    move-result v0

    #@23
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    #@25
    .line 455
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$4;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@27
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    #@2a
    move-result v0

    #@2b
    const/4 v1, 0x0

    #@2c
    :goto_2c
    if-ge v1, v0, :cond_6b

    #@2e
    .line 456
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager$4;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@30
    .line 457
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v2

    #@34
    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    #@37
    move-result-object v2

    #@38
    .line 460
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@3b
    move-result v3

    #@3c
    iget v4, p2, Landroid/graphics/Rect;->left:I

    #@3e
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@41
    move-result v3

    #@42
    iput v3, p2, Landroid/graphics/Rect;->left:I

    #@44
    .line 462
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@47
    move-result v3

    #@48
    iget v4, p2, Landroid/graphics/Rect;->top:I

    #@4a
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@4d
    move-result v3

    #@4e
    iput v3, p2, Landroid/graphics/Rect;->top:I

    #@50
    .line 464
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@53
    move-result v3

    #@54
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@56
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@59
    move-result v3

    #@5a
    iput v3, p2, Landroid/graphics/Rect;->right:I

    #@5c
    .line 466
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@5f
    move-result v2

    #@60
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@62
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@65
    move-result v2

    #@66
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    #@68
    add-int/lit8 v1, v1, 0x1

    #@6a
    goto :goto_2c

    #@6b
    .line 471
    :cond_6b
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@6d
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@6f
    iget v2, p2, Landroid/graphics/Rect;->right:I

    #@71
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    #@73
    invoke-virtual {p1, v0, v1, v2, p2}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    #@76
    move-result-object p1

    #@77
    return-object p1
.end method

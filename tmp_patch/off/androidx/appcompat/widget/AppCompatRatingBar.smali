.class public Landroidx/appcompat/widget/AppCompatRatingBar;
.super Landroid/widget/RatingBar;
.source "AppCompatRatingBar.java"


# instance fields
.field private final mAppCompatProgressBarHelper:Landroidx/appcompat/widget/AppCompatProgressBarHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 42
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 46
    sget v0, Landroidx/appcompat/R$attr;->ratingBarStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatRatingBar;->getContext()Landroid/content/Context;

    #@6
    move-result-object p1

    #@7
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    #@a
    .line 55
    new-instance p1, Landroidx/appcompat/widget/AppCompatProgressBarHelper;

    #@c
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V

    #@f
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroidx/appcompat/widget/AppCompatProgressBarHelper;

    #@11
    .line 56
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    #@14
    return-void
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    .line 61
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    #@4
    .line 63
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroidx/appcompat/widget/AppCompatProgressBarHelper;

    #@6
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->getSampleTile()Landroid/graphics/Bitmap;

    #@9
    move-result-object p2

    #@a
    if-eqz p2, :cond_21

    #@c
    .line 65
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@f
    move-result p2

    #@10
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatRatingBar;->getNumStars()I

    #@13
    move-result v0

    #@14
    mul-int/2addr p2, v0

    #@15
    const/4 v0, 0x0

    #@16
    .line 66
    invoke-static {p2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    #@19
    move-result p1

    #@1a
    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatRatingBar;->getMeasuredHeight()I

    #@1d
    move-result p2

    #@1e
    .line 66
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRatingBar;->setMeasuredDimension(II)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    #@21
    .line 69
    :cond_21
    monitor-exit p0

    #@22
    return-void

    #@23
    :catchall_23
    move-exception p1

    #@24
    monitor-exit p0

    #@25
    throw p1
.end method

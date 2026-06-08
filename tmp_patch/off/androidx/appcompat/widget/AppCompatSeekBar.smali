.class public Landroidx/appcompat/widget/AppCompatSeekBar;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private final mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 41
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 45
    sget v0, Landroidx/appcompat/R$attr;->seekBarStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->getContext()Landroid/content/Context;

    #@6
    move-result-object p1

    #@7
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    #@a
    .line 54
    new-instance p1, Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    #@c
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;-><init>(Landroid/widget/SeekBar;)V

    #@f
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    #@11
    .line 55
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    #@14
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    #@0
    .line 66
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    #@3
    .line 67
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    #@5
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->drawableStateChanged()V

    #@8
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    #@0
    .line 72
    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    #@3
    .line 73
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    #@5
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->jumpDrawablesToCurrentState()V

    #@8
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    .line 60
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 61
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    #@6
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->drawTickMarks(Landroid/graphics/Canvas;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    #@9
    .line 62
    monitor-exit p0

    #@a
    return-void

    #@b
    :catchall_b
    move-exception p1

    #@c
    monitor-exit p0

    #@d
    throw p1
.end method

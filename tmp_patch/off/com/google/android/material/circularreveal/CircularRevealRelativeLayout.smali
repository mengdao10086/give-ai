.class public Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CircularRevealRelativeLayout.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 38
    new-instance p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@5
    invoke-direct {p1, p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    #@8
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@a
    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 94
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    return-void
.end method

.method public actualIsOpaque()Z
    .registers 2

    #@0
    .line 108
    invoke-super {p0}, Landroid/widget/RelativeLayout;->isOpaque()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public buildCircularRevealCache()V
    .registers 2

    #@0
    .line 43
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    #@5
    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 2

    #@0
    .line 48
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    #@5
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    #@0
    .line 85
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 86
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    #@7
    goto :goto_b

    #@8
    .line 88
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    #@b
    :goto_b
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 75
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    #@0
    .line 64
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2

    #@0
    .line 54
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    #@0
    .line 99
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 100
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 102
    :cond_9
    invoke-super {p0}, Landroid/widget/RelativeLayout;->isOpaque()Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3

    #@0
    .line 69
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    #@5
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3

    #@0
    .line 59
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    #@5
    return-void
.end method

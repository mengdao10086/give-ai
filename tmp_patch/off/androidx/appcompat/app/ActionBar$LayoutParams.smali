.class public Landroidx/appcompat/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    #@0
    const/4 v0, -0x2

    #@1
    const/4 v1, -0x1

    #@2
    .line 1395
    invoke-direct {p0, v0, v1, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    #@5
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    #@0
    .line 1385
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    const p1, 0x800013

    #@6
    .line 1386
    iput p1, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@8
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    #@0
    .line 1390
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 1391
    iput p3, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 1377
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 1374
    iput v0, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@6
    .line 1379
    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBarLayout:[I

    #@8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object p1

    #@c
    .line 1380
    sget p2, Landroidx/appcompat/R$styleable;->ActionBarLayout_android_layout_gravity:I

    #@e
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@11
    move-result p2

    #@12
    iput p2, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@14
    .line 1381
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@17
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    #@0
    .line 1405
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1374
    iput p1, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@6
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .registers 3

    #@0
    .line 1399
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 1374
    iput v0, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@6
    .line 1401
    iget p1, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@8
    iput p1, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    #@a
    return-void
.end method

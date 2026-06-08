.class public Landroidx/appcompat/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final mPaddingBottomNoButtons:I

.field private final mPaddingTopNoTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 840
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 844
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 846
    sget-object v0, Landroidx/appcompat/R$styleable;->RecycleListView:[I

    #@5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object p1

    #@9
    .line 848
    sget p2, Landroidx/appcompat/R$styleable;->RecycleListView_paddingBottomNoButtons:I

    #@b
    const/4 v0, -0x1

    #@c
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@f
    move-result p2

    #@10
    iput p2, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    #@12
    .line 850
    sget p2, Landroidx/appcompat/R$styleable;->RecycleListView_paddingTopNoTitle:I

    #@14
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@17
    move-result p1

    #@18
    iput p1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    #@1a
    return-void
.end method


# virtual methods
.method public setHasDecor(ZZ)V
    .registers 5

    #@0
    if-eqz p2, :cond_4

    #@2
    if-nez p1, :cond_21

    #@4
    .line 856
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingLeft()I

    #@7
    move-result v0

    #@8
    if-eqz p1, :cond_f

    #@a
    .line 857
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingTop()I

    #@d
    move-result p1

    #@e
    goto :goto_11

    #@f
    :cond_f
    iget p1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    #@11
    .line 858
    :goto_11
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingRight()I

    #@14
    move-result v1

    #@15
    if-eqz p2, :cond_1c

    #@17
    .line 859
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingBottom()I

    #@1a
    move-result p2

    #@1b
    goto :goto_1e

    #@1c
    :cond_1c
    iget p2, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    #@1e
    .line 860
    :goto_1e
    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/appcompat/app/AlertController$RecycleListView;->setPadding(IIII)V

    #@21
    :cond_21
    return-void
.end method

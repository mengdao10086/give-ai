.class Landroidx/appcompat/widget/AppCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AppCompatPopupWindow.java"


# static fields
.field private static final COMPAT_OVERLAP_ANCHOR:Z


# instance fields
.field private mOverlapAnchor:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 34
    sput-boolean v0, Landroidx/appcompat/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    #@0
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    #@0
    .line 51
    sget-object v0, Landroidx/appcompat/R$styleable;->PopupWindow:[I

    #@2
    invoke-static {p1, p2, v0, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@5
    move-result-object p1

    #@6
    .line 53
    sget p2, Landroidx/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    #@8
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@b
    move-result p2

    #@c
    if-eqz p2, :cond_18

    #@e
    .line 54
    sget p2, Landroidx/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    #@10
    const/4 p3, 0x0

    #@11
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@14
    move-result p2

    #@15
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatPopupWindow;->setSupportOverlapAnchor(Z)V

    #@18
    .line 57
    :cond_18
    sget p2, Landroidx/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    #@1a
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object p2

    #@1e
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@21
    .line 59
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@24
    return-void
.end method

.method private setSupportOverlapAnchor(Z)V
    .registers 3

    #@0
    .line 90
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 91
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    #@6
    goto :goto_a

    #@7
    .line 93
    :cond_7
    invoke-static {p0, p1}, Landroidx/core/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    #@a
    :goto_a
    return-void
.end method


# virtual methods
.method public showAsDropDown(Landroid/view/View;II)V
    .registers 5

    #@0
    .line 64
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@b
    move-result v0

    #@c
    sub-int/2addr p3, v0

    #@d
    .line 68
    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    #@10
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 6

    #@0
    .line 73
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@b
    move-result v0

    #@c
    sub-int/2addr p3, v0

    #@d
    .line 77
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    #@10
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 12

    #@0
    .line 82
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@b
    move-result v0

    #@c
    sub-int/2addr p3, v0

    #@d
    :cond_d
    move v3, p3

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move v2, p2

    #@11
    move v4, p4

    #@12
    move v5, p5

    #@13
    .line 86
    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    #@16
    return-void
.end method

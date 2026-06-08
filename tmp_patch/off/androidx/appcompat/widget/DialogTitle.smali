.class public Landroidx/appcompat/widget/DialogTitle;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 9

    #@0
    .line 55
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    #@3
    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_42

    #@9
    .line 59
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_42

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    .line 61
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    #@14
    move-result v0

    #@15
    if-lez v0, :cond_42

    #@17
    const/4 v0, 0x0

    #@18
    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DialogTitle;->setSingleLine(Z)V

    #@1b
    const/4 v1, 0x2

    #@1c
    .line 64
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/DialogTitle;->setMaxLines(I)V

    #@1f
    .line 66
    invoke-virtual {p0}, Landroidx/appcompat/widget/DialogTitle;->getContext()Landroid/content/Context;

    #@22
    move-result-object v1

    #@23
    sget-object v2, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    #@25
    const v3, 0x1010041

    #@28
    const v4, 0x1030044

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2f
    move-result-object v1

    #@30
    .line 70
    sget v2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    #@32
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_3c

    #@38
    int-to-float v2, v2

    #@39
    .line 74
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/DialogTitle;->setTextSize(IF)V

    #@3c
    .line 76
    :cond_3c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@3f
    .line 78
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    #@42
    :cond_42
    return-void
.end method

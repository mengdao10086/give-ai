.class Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private mOriginalHorizontalOffset:I

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 973
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@2
    .line 974
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 970
    new-instance p2, Landroid/graphics/Rect;

    #@7
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    #@c
    .line 976
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    #@f
    const/4 p2, 0x1

    #@10
    .line 977
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setModal(Z)V

    #@13
    const/4 p2, 0x0

    #@14
    .line 978
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptPosition(I)V

    #@17
    .line 980
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;

    #@19
    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Landroidx/appcompat/widget/AppCompatSpinner;)V

    #@1c
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@1f
    return-void
.end method

.method static synthetic access$001(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V
    .registers 1

    #@0
    .line 967
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    #@3
    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .registers 8

    #@0
    .line 1011
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_24

    #@6
    .line 1014
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@8
    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@d
    .line 1015
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@f
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1c

    #@15
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@17
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@19
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@1b
    goto :goto_32

    #@1c
    .line 1016
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@1e
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@20
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@22
    neg-int v0, v0

    #@23
    goto :goto_32

    #@24
    .line 1018
    :cond_24
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@26
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@28
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@2a
    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@2c
    const/4 v2, 0x0

    #@2d
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@2f
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@31
    move v0, v2

    #@32
    .line 1021
    :goto_32
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@34
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingLeft()I

    #@37
    move-result v1

    #@38
    .line 1022
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@3a
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingRight()I

    #@3d
    move-result v2

    #@3e
    .line 1023
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@40
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatSpinner;->getWidth()I

    #@43
    move-result v3

    #@44
    .line 1024
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@46
    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    #@48
    const/4 v5, -0x2

    #@49
    if-ne v4, v5, :cond_85

    #@4b
    .line 1025
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@4d
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    #@4f
    check-cast v5, Landroid/widget/SpinnerAdapter;

    #@51
    .line 1026
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@54
    move-result-object v6

    #@55
    .line 1025
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    #@58
    move-result v4

    #@59
    .line 1027
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@5b
    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@62
    move-result-object v5

    #@63
    .line 1028
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@66
    move-result-object v5

    #@67
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    #@69
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@6b
    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@6d
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@6f
    sub-int/2addr v5, v6

    #@70
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@72
    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    #@74
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@76
    sub-int/2addr v5, v6

    #@77
    if-le v4, v5, :cond_7a

    #@79
    move v4, v5

    #@7a
    :cond_7a
    sub-int v5, v3, v1

    #@7c
    sub-int/2addr v5, v2

    #@7d
    .line 1032
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@80
    move-result v4

    #@81
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    #@84
    goto :goto_9a

    #@85
    .line 1034
    :cond_85
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@87
    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    #@89
    const/4 v5, -0x1

    #@8a
    if-ne v4, v5, :cond_93

    #@8c
    sub-int v4, v3, v1

    #@8e
    sub-int/2addr v4, v2

    #@8f
    .line 1035
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    #@92
    goto :goto_9a

    #@93
    .line 1037
    :cond_93
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@95
    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    #@97
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    #@9a
    .line 1039
    :goto_9a
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@9c
    invoke-static {v4}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@9f
    move-result v4

    #@a0
    if-eqz v4, :cond_af

    #@a2
    sub-int/2addr v3, v2

    #@a3
    .line 1040
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getWidth()I

    #@a6
    move-result v1

    #@a7
    sub-int/2addr v3, v1

    #@a8
    .line 1041
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOriginalOffset()I

    #@ab
    move-result v1

    #@ac
    sub-int/2addr v3, v1

    #@ad
    add-int/2addr v0, v3

    #@ae
    goto :goto_b5

    #@af
    .line 1043
    :cond_af
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOriginalOffset()I

    #@b2
    move-result v2

    #@b3
    add-int/2addr v1, v2

    #@b4
    add-int/2addr v0, v1

    #@b5
    .line 1045
    :goto_b5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    #@b8
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1001
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getHorizontalOriginalOffset()I
    .registers 2

    #@0
    .line 1117
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    #@2
    return v0
.end method

.method isVisibleToUser(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 1107
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_10

    #@e
    const/4 p1, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p1, 0x0

    #@11
    :goto_11
    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    #@0
    .line 995
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3
    .line 996
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .registers 2

    #@0
    .line 1112
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    #@2
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 1007
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    #@2
    return-void
.end method

.method public show(II)V
    .registers 6

    #@0
    .line 1050
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    #@3
    move-result v0

    #@4
    .line 1052
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    #@7
    const/4 v1, 0x2

    #@8
    .line 1054
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setInputMethodMode(I)V

    #@b
    .line 1055
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    #@e
    .line 1056
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    .line 1057
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@16
    .line 1059
    invoke-static {v1, p1}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->setTextDirection(Landroid/view/View;I)V

    #@19
    .line 1060
    invoke-static {v1, p2}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->setTextAlignment(Landroid/view/View;I)V

    #@1c
    .line 1062
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@1e
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    #@21
    move-result p1

    #@22
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setSelection(I)V

    #@25
    if-eqz v0, :cond_28

    #@27
    return-void

    #@28
    .line 1073
    :cond_28
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@2a
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@2d
    move-result-object p1

    #@2e
    if-eqz p1, :cond_40

    #@30
    .line 1075
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;

    #@32
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    #@35
    .line 1090
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@38
    .line 1091
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;

    #@3a
    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3d
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@40
    :cond_40
    return-void
.end method

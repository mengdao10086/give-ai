.class Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .registers 2

    #@0
    .line 695
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    const/4 p1, 0x4

    #@6
    .line 687
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@8
    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .registers 2

    #@0
    .line 840
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCount()I
    .registers 3

    #@0
    .line 726
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    #@5
    move-result v0

    #@6
    .line 727
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@8
    if-nez v1, :cond_14

    #@a
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@c
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_14

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    .line 730
    :cond_14
    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v0

    #@1a
    .line 731
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@1c
    if-eqz v1, :cond_20

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    :cond_20
    return v0
.end method

.method public getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;
    .registers 2

    #@0
    .line 848
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@2
    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 2

    #@0
    .line 829
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHistorySize()I
    .registers 2

    #@0
    .line 844
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getHistorySize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    #@0
    .line 739
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    const/4 p1, 0x1

    #@7
    if-ne v0, p1, :cond_b

    #@9
    const/4 p1, 0x0

    #@a
    return-object p1

    #@b
    .line 749
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw p1

    #@11
    .line 744
    :cond_11
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@13
    if-nez v0, :cond_1f

    #@15
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@17
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_1f

    #@1d
    add-int/lit8 p1, p1, 0x1

    #@1f
    .line 747
    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@21
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    #@24
    move-result-object p1

    #@25
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    #@0
    .line 712
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    sub-int/2addr v0, v1

    #@a
    if-ne p1, v0, :cond_d

    #@c
    return v1

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return p1
.end method

.method public getShowDefaultActivity()Z
    .registers 2

    #@0
    .line 862
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@2
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    #@0
    .line 760
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    if-eqz v0, :cond_43

    #@8
    if-ne v0, v2, :cond_3d

    #@a
    if-eqz p2, :cond_12

    #@c
    .line 763
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@f
    move-result p1

    #@10
    if-eq p1, v2, :cond_3c

    #@12
    .line 764
    :cond_12
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@14
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    #@17
    move-result-object p1

    #@18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@1b
    move-result-object p1

    #@1c
    sget p2, Landroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    #@1e
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@21
    move-result-object p2

    #@22
    .line 766
    invoke-virtual {p2, v2}, Landroid/view/View;->setId(I)V

    #@25
    .line 767
    sget p1, Landroidx/appcompat/R$id;->title:I

    #@27
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object p1

    #@2b
    check-cast p1, Landroid/widget/TextView;

    #@2d
    .line 768
    iget-object p3, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@2f
    invoke-virtual {p3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    #@32
    move-result-object p3

    #@33
    sget v0, Landroidx/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    #@35
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@38
    move-result-object p3

    #@39
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3c
    :cond_3c
    return-object p2

    #@3d
    .line 793
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@3f
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@42
    throw p1

    #@43
    :cond_43
    if-eqz p2, :cond_4d

    #@45
    .line 773
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@48
    move-result v0

    #@49
    sget v3, Landroidx/appcompat/R$id;->list_item:I

    #@4b
    if-eq v0, v3, :cond_5d

    #@4d
    .line 774
    :cond_4d
    iget-object p2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@4f
    invoke-virtual {p2}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    #@52
    move-result-object p2

    #@53
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@56
    move-result-object p2

    #@57
    sget v0, Landroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    #@59
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@5c
    move-result-object p2

    #@5d
    .line 777
    :cond_5d
    iget-object p3, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@5f
    invoke-virtual {p3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    #@62
    move-result-object p3

    #@63
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@66
    move-result-object p3

    #@67
    .line 779
    sget v0, Landroidx/appcompat/R$id;->icon:I

    #@69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Landroid/widget/ImageView;

    #@6f
    .line 780
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@75
    .line 781
    invoke-virtual {v3, p3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7c
    .line 783
    sget v0, Landroidx/appcompat/R$id;->title:I

    #@7e
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@81
    move-result-object v0

    #@82
    check-cast v0, Landroid/widget/TextView;

    #@84
    .line 784
    invoke-virtual {v3, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@87
    move-result-object p3

    #@88
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@8b
    .line 786
    iget-boolean p3, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@8d
    if-eqz p3, :cond_99

    #@8f
    if-nez p1, :cond_99

    #@91
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    #@93
    if-eqz p1, :cond_99

    #@95
    .line 787
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    #@98
    goto :goto_9c

    #@99
    .line 789
    :cond_99
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    #@9c
    :goto_9c
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public measureContentWidth()I
    .registers 10

    #@0
    .line 800
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@2
    const v1, 0x7fffffff

    #@5
    .line 801
    iput v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@7
    const/4 v1, 0x0

    #@8
    .line 806
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@b
    move-result v2

    #@c
    .line 807
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f
    move-result v3

    #@10
    .line 808
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    #@13
    move-result v4

    #@14
    const/4 v5, 0x0

    #@15
    move v6, v1

    #@16
    move-object v7, v5

    #@17
    :goto_17
    if-ge v1, v4, :cond_2b

    #@19
    .line 811
    invoke-virtual {p0, v1, v7, v5}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@1c
    move-result-object v7

    #@1d
    .line 812
    invoke-virtual {v7, v2, v3}, Landroid/view/View;->measure(II)V

    #@20
    .line 813
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    #@23
    move-result v8

    #@24
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@27
    move-result v6

    #@28
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_17

    #@2b
    .line 816
    :cond_2b
    iput v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@2d
    return v6
.end method

.method public setDataModel(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .registers 4

    #@0
    .line 699
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@2
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_19

    #@a
    .line 700
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@c
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_19

    #@12
    .line 701
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@14
    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    #@16
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    #@19
    .line 703
    :cond_19
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    #@1b
    if-eqz p1, :cond_2c

    #@1d
    .line 704
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@1f
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2c

    #@25
    .line 705
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    #@27
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    #@29
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    #@2c
    .line 707
    :cond_2c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@2f
    return-void
.end method

.method public setMaxActivityCount(I)V
    .registers 3

    #@0
    .line 822
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 823
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@6
    .line 824
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@9
    :cond_9
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .registers 4

    #@0
    .line 853
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@2
    if-ne v0, p1, :cond_8

    #@4
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    #@6
    if-eq v0, p2, :cond_f

    #@8
    .line 855
    :cond_8
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@a
    .line 856
    iput-boolean p2, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    #@c
    .line 857
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@f
    :cond_f
    return-void
.end method

.method public setShowFooterView(Z)V
    .registers 3

    #@0
    .line 833
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 834
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@6
    .line 835
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@9
    :cond_9
    return-void
.end method

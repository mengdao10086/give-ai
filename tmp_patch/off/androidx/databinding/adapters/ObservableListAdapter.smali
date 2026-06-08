.class Landroidx/databinding/adapters/ObservableListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ObservableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDropDownResourceId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

.field private final mResourceId:I

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    #@0
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mContext:Landroid/content/Context;

    #@5
    .line 47
    iput p3, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mResourceId:I

    #@7
    .line 48
    iput p4, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mDropDownResourceId:I

    #@9
    .line 49
    iput p5, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    #@b
    if-nez p3, :cond_f

    #@d
    const/4 p1, 0x0

    #@e
    goto :goto_17

    #@f
    :cond_f
    const-string p3, "layout_inflater"

    #@11
    .line 51
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, Landroid/view/LayoutInflater;

    #@17
    :goto_17
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@19
    .line 52
    invoke-virtual {p0, p2}, Landroidx/databinding/adapters/ObservableListAdapter;->setList(Ljava/util/List;)V

    #@1c
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    #@0
    .line 105
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 125
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mDropDownResourceId:I

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/databinding/adapters/ObservableListAdapter;->getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    #@0
    .line 110
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 120
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mResourceId:I

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/databinding/adapters/ObservableListAdapter;->getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    #@0
    if-nez p3, :cond_13

    #@2
    if-nez p1, :cond_c

    #@4
    .line 132
    new-instance p3, Landroid/widget/TextView;

    #@6
    iget-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mContext:Landroid/content/Context;

    #@8
    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@b
    goto :goto_13

    #@c
    .line 134
    :cond_c
    iget-object p3, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@e
    const/4 v0, 0x0

    #@f
    invoke-virtual {p3, p1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@12
    move-result-object p3

    #@13
    .line 137
    :cond_13
    :goto_13
    iget p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    #@15
    if-nez p1, :cond_19

    #@17
    move-object p1, p3

    #@18
    goto :goto_1d

    #@19
    .line 138
    :cond_19
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1c
    move-result-object p1

    #@1d
    :goto_1d
    check-cast p1, Landroid/widget/TextView;

    #@1f
    .line 139
    iget-object p4, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    #@21
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object p2

    #@25
    .line 141
    instance-of p4, p2, Ljava/lang/CharSequence;

    #@27
    if-eqz p4, :cond_2c

    #@29
    .line 142
    check-cast p2, Ljava/lang/CharSequence;

    #@2b
    goto :goto_30

    #@2c
    .line 144
    :cond_2c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object p2

    #@30
    .line 146
    :goto_30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@33
    return-object p3
.end method

.method public setList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 56
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 59
    :cond_5
    instance-of v1, v0, Landroidx/databinding/ObservableList;

    #@7
    if-eqz v1, :cond_10

    #@9
    .line 61
    check-cast v0, Landroidx/databinding/ObservableList;

    #@b
    iget-object v1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    #@d
    invoke-interface {v0, v1}, Landroidx/databinding/ObservableList;->removeOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    #@10
    .line 63
    :cond_10
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    #@12
    .line 64
    instance-of p1, p1, Landroidx/databinding/ObservableList;

    #@14
    if-eqz p1, :cond_2a

    #@16
    .line 65
    iget-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    #@18
    if-nez p1, :cond_21

    #@1a
    .line 66
    new-instance p1, Landroidx/databinding/adapters/ObservableListAdapter$1;

    #@1c
    invoke-direct {p1, p0}, Landroidx/databinding/adapters/ObservableListAdapter$1;-><init>(Landroidx/databinding/adapters/ObservableListAdapter;)V

    #@1f
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    #@21
    .line 98
    :cond_21
    iget-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    #@23
    check-cast p1, Landroidx/databinding/ObservableList;

    #@25
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    #@27
    invoke-interface {p1, v0}, Landroidx/databinding/ObservableList;->addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    #@2a
    .line 100
    :cond_2a
    invoke-virtual {p0}, Landroidx/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    #@2d
    return-void
.end method

.class public Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;
.super Ljava/lang/Object;
.source "AdapterViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/adapters/AdapterViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnItemSelectedComponentListener"
.end annotation


# instance fields
.field private final mAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private final mNothingSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

.field private final mSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;


# direct methods
.method public constructor <init>(Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    #@0
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    iput-object p1, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    #@5
    .line 95
    iput-object p2, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    #@7
    .line 96
    iput-object p3, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroidx/databinding/InverseBindingListener;

    #@9
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .line 101
    iget-object v0, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    #@2
    if-eqz v0, :cond_b

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    move-wide v4, p4

    #@8
    .line 102
    invoke-interface/range {v0 .. v5}, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    #@b
    .line 104
    :cond_b
    iget-object p1, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroidx/databinding/InverseBindingListener;

    #@d
    if-eqz p1, :cond_12

    #@f
    .line 105
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    #@12
    :cond_12
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 111
    iget-object v0, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 112
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;->onNothingSelected(Landroid/widget/AdapterView;)V

    #@7
    .line 114
    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroidx/databinding/InverseBindingListener;

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 115
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    #@e
    :cond_e
    return-void
.end method

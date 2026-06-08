.class Landroidx/databinding/ListChangeRegistry$1;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ListChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/ObservableList$OnListChangedCallback;",
        "Landroidx/databinding/ObservableList;",
        "Landroidx/databinding/ListChangeRegistry$ListChanges;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Landroidx/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p3, v0, :cond_2a

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p3, v0, :cond_22

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p3, v0, :cond_18

    #@9
    const/4 v0, 0x4

    #@a
    if-eq p3, v0, :cond_10

    #@c
    .line 58
    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onChanged(Landroidx/databinding/ObservableList;)V

    #@f
    goto :goto_31

    #@10
    .line 55
    :cond_10
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    #@12
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    #@14
    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V

    #@17
    goto :goto_31

    #@18
    .line 51
    :cond_18
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    #@1a
    iget v0, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->to:I

    #@1c
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    #@1e
    invoke-virtual {p1, p2, p3, v0, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeMoved(Landroidx/databinding/ObservableList;III)V

    #@21
    goto :goto_31

    #@22
    .line 48
    :cond_22
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    #@24
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    #@26
    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeInserted(Landroidx/databinding/ObservableList;II)V

    #@29
    goto :goto_31

    #@2a
    .line 45
    :cond_2a
    iget p3, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    #@2c
    iget p4, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    #@2e
    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeChanged(Landroidx/databinding/ObservableList;II)V

    #@31
    :goto_31
    return-void
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    #@0
    .line 39
    check-cast p1, Landroidx/databinding/ObservableList$OnListChangedCallback;

    #@2
    check-cast p2, Landroidx/databinding/ObservableList;

    #@4
    check-cast p4, Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ListChangeRegistry$1;->onNotifyCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    #@9
    return-void
.end method

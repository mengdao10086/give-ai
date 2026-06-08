.class Landroidx/databinding/ViewDataBinding$5;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/OnRebindCallback;",
        "Landroidx/databinding/ViewDataBinding;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 153
    invoke-direct {p0}, Landroidx/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroidx/databinding/OnRebindCallback;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V
    .registers 5

    #@0
    const/4 p4, 0x1

    #@1
    if-eq p3, p4, :cond_12

    #@3
    const/4 p4, 0x2

    #@4
    if-eq p3, p4, :cond_e

    #@6
    const/4 p4, 0x3

    #@7
    if-eq p3, p4, :cond_a

    #@9
    goto :goto_1b

    #@a
    .line 167
    :cond_a
    invoke-virtual {p1, p2}, Landroidx/databinding/OnRebindCallback;->onBound(Landroidx/databinding/ViewDataBinding;)V

    #@d
    goto :goto_1b

    #@e
    .line 164
    :cond_e
    invoke-virtual {p1, p2}, Landroidx/databinding/OnRebindCallback;->onCanceled(Landroidx/databinding/ViewDataBinding;)V

    #@11
    goto :goto_1b

    #@12
    .line 159
    :cond_12
    invoke-virtual {p1, p2}, Landroidx/databinding/OnRebindCallback;->onPreBind(Landroidx/databinding/ViewDataBinding;)Z

    #@15
    move-result p1

    #@16
    if-nez p1, :cond_1b

    #@18
    .line 160
    # setter for: Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z
    invoke-static {p2, p4}, Landroidx/databinding/ViewDataBinding;->access$002(Landroidx/databinding/ViewDataBinding;Z)Z

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    #@0
    .line 153
    check-cast p1, Landroidx/databinding/OnRebindCallback;

    #@2
    check-cast p2, Landroidx/databinding/ViewDataBinding;

    #@4
    check-cast p4, Ljava/lang/Void;

    #@6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ViewDataBinding$5;->onNotifyCallback(Landroidx/databinding/OnRebindCallback;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V

    #@9
    return-void
.end method

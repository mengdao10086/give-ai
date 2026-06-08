.class public abstract Landroidx/databinding/OnRebindCallback;
.super Ljava/lang/Object;
.source "OnRebindCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onBound(Landroidx/databinding/ViewDataBinding;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onCanceled(Landroidx/databinding/ViewDataBinding;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onPreBind(Landroidx/databinding/ViewDataBinding;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

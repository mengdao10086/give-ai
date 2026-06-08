.class Landroidx/databinding/ViewDataBinding$8;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .registers 2

    #@0
    .line 317
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$8;->this$0:Landroidx/databinding/ViewDataBinding;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 3

    #@0
    .line 320
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$8;->this$0:Landroidx/databinding/ViewDataBinding;

    #@2
    # getter for: Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->access$100(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;

    #@5
    move-result-object p1

    #@6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@9
    return-void
.end method

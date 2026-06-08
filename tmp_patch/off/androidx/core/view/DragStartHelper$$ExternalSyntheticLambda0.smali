.class public final synthetic Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/DragStartHelper;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/DragStartHelper;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/DragStartHelper;

    #@5
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/DragStartHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/DragStartHelper;->onLongClick(Landroid/view/View;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

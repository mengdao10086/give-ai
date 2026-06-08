.class public final synthetic Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

.field public final synthetic f$1:Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl30;Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    #@5
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$1:Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    #@7
    return-void
.end method


# virtual methods
.method public final onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V
    .registers 5

    #@0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    #@2
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$1:Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->lambda$addOnControllableInsetsChangedListener$0$androidx-core-view-WindowInsetsControllerCompat$Impl30(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;Landroid/view/WindowInsetsController;I)V

    #@7
    return-void
.end method

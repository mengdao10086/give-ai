.class Landroidx/fragment/app/Fragment$6;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    #@0
    .line 3077
    iput-object p1, p0, Landroidx/fragment/app/Fragment$6;->this$0:Landroidx/fragment/app/Fragment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    #@0
    .line 3081
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@2
    if-ne p2, p1, :cond_11

    #@4
    .line 3082
    iget-object p1, p0, Landroidx/fragment/app/Fragment$6;->this$0:Landroidx/fragment/app/Fragment;

    #@6
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@8
    if-eqz p1, :cond_11

    #@a
    .line 3083
    iget-object p1, p0, Landroidx/fragment/app/Fragment$6;->this$0:Landroidx/fragment/app/Fragment;

    #@c
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    #@e
    invoke-static {p1}, Landroidx/fragment/app/Fragment$Api19Impl;->cancelPendingInputEvents(Landroid/view/View;)V

    #@11
    :cond_11
    return-void
.end method

.class Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    #@0
    .line 277
    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->this$0:Landroidx/activity/ComponentActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    #@0
    .line 281
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@2
    if-ne p2, p1, :cond_17

    #@4
    .line 282
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->this$0:Landroidx/activity/ComponentActivity;

    #@6
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_11

    #@c
    .line 283
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@f
    move-result-object p1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
    if-eqz p1, :cond_17

    #@14
    .line 285
    invoke-static {p1}, Landroidx/activity/ComponentActivity$Api19Impl;->cancelPendingInputEvents(Landroid/view/View;)V

    #@17
    :cond_17
    return-void
.end method

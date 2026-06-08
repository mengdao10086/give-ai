.class public Landroidx/activity/ComponentDialog;
.super Landroid/app/Dialog;
.source "ComponentDialog.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/activity/OnBackPressedDispatcherOwner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0019\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u000fJ\u0008\u0010\u001b\u001a\u00020\u0013H\u0002J\u0008\u0010\u001c\u001a\u00020\u0013H\u0017J\u0012\u0010\u001d\u001a\u00020\u00132\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0015J\u0008\u0010 \u001a\u00020\u0013H\u0015J\u0008\u0010!\u001a\u00020\u0013H\u0015J\u0010\u0010\"\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\"\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u0007H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/activity/ComponentDialog;",
        "Landroid/app/Dialog;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Landroidx/activity/OnBackPressedDispatcherOwner;",
        "context",
        "Landroid/content/Context;",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "_lifecycleRegistry",
        "Landroidx/lifecycle/LifecycleRegistry;",
        "lifecycleRegistry",
        "getLifecycleRegistry",
        "()Landroidx/lifecycle/LifecycleRegistry;",
        "onBackPressedDispatcher",
        "Landroidx/activity/OnBackPressedDispatcher;",
        "getOnBackPressedDispatcher$annotations",
        "()V",
        "addContentView",
        "",
        "view",
        "Landroid/view/View;",
        "params",
        "Landroid/view/ViewGroup$LayoutParams;",
        "getLifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "getOnBackPressedDispatcher",
        "initViewTreeOwners",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onStop",
        "setContentView",
        "layoutResID",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private _lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public static synthetic $r8$lambda$3VrmmHeIN9Sasz9FquQXdvV7x_o(Landroidx/activity/ComponentDialog;)V
    .registers 1

    #@0
    invoke-static {p0}, Landroidx/activity/ComponentDialog;->onBackPressedDispatcher$lambda-1(Landroidx/activity/ComponentDialog;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 v0, 0x2

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@8
    .line 75
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher;

    #@a
    new-instance p2, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    #@c
    invoke-direct {p2, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/ComponentDialog;)V

    #@f
    invoke-direct {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    #@12
    iput-object p1, p0, Landroidx/activity/ComponentDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@14
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    #@0
    and-int/lit8 p3, p3, 0x2

    #@2
    if-eqz p3, :cond_5

    #@4
    const/4 p2, 0x0

    #@5
    .line 35
    :cond_5
    invoke-direct {p0, p1, p2}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;I)V

    #@8
    return-void
.end method

.method private final getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;
    .registers 3

    #@0
    .line 44
    iget-object v0, p0, Landroidx/activity/ComponentDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@2
    if-nez v0, :cond_e

    #@4
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    #@6
    move-object v1, p0

    #@7
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    #@9
    invoke-direct {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    #@c
    .line 45
    iput-object v0, p0, Landroidx/activity/ComponentDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@e
    :cond_e
    return-object v0
.end method

.method private static synthetic getOnBackPressedDispatcher$annotations()V
    .registers 0

    #@0
    return-void
.end method

.method private final initViewTreeOwners()V
    .registers 3

    #@0
    .line 107
    invoke-virtual {p0}, Landroidx/activity/ComponentDialog;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    move-object v1, p0

    #@c
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    #@e
    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    #@11
    .line 108
    invoke-virtual {p0}, Landroidx/activity/ComponentDialog;->getWindow()Landroid/view/Window;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "window!!.decorView"

    #@1e
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@21
    move-object v1, p0

    #@22
    check-cast v1, Landroidx/activity/OnBackPressedDispatcherOwner;

    #@24
    invoke-static {v0, v1}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->set(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V

    #@27
    return-void
.end method

.method private static final onBackPressedDispatcher$lambda-1(Landroidx/activity/ComponentDialog;)V
    .registers 2

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    #@8
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    const-string v0, "view"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 102
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->initViewTreeOwners()V

    #@8
    .line 103
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@b
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    #@0
    .line 48
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/lifecycle/Lifecycle;

    #@6
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .registers 2

    #@0
    .line 79
    iget-object v0, p0, Landroidx/activity/ComponentDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@2
    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    #@0
    .line 83
    iget-object v0, p0, Landroidx/activity/ComponentDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@2
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    #@5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 54
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v0, 0x21

    #@7
    if-lt p1, v0, :cond_12

    #@9
    .line 55
    iget-object p1, p0, Landroidx/activity/ComponentDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    #@b
    invoke-virtual {p0}, Landroidx/activity/ComponentDialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    #@12
    .line 57
    :cond_12
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    #@15
    move-result-object p1

    #@16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@18
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@1b
    return-void
.end method

.method protected onStart()V
    .registers 3

    #@0
    .line 62
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    #@3
    .line 63
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    #@6
    move-result-object v0

    #@7
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@c
    return-void
.end method

.method protected onStop()V
    .registers 3

    #@0
    .line 69
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@6
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    #@9
    const/4 v0, 0x0

    #@a
    .line 70
    iput-object v0, p0, Landroidx/activity/ComponentDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@c
    .line 71
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    #@f
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    #@0
    .line 87
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->initViewTreeOwners()V

    #@3
    .line 88
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    #@6
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    #@0
    const-string v0, "view"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 92
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->initViewTreeOwners()V

    #@8
    .line 93
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@b
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    const-string v0, "view"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 97
    invoke-direct {p0}, Landroidx/activity/ComponentDialog;->initViewTreeOwners()V

    #@8
    .line 98
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@b
    return-void
.end method

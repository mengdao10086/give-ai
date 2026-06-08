.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$Api33Impl;,
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
    }
.end annotation


# instance fields
.field private mBackInvokedCallbackRegistered:Z

.field private mEnabledConsumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFallbackOnBackPressed:Ljava/lang/Runnable;

.field private mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field final mOnBackPressedCallbacks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/activity/OnBackPressedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 111
    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    #@a
    const/4 v0, 0x0

    #@b
    .line 74
    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    #@d
    .line 123
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    #@f
    .line 124
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_27

    #@15
    .line 125
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    #@17
    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    #@1a
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    #@1c
    .line 130
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;

    #@1e
    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    #@21
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->createOnBackInvokedCallback(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    #@24
    move-result-object p1

    #@25
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    #@27
    :cond_27
    return-void
.end method


# virtual methods
.method public addCallback(Landroidx/activity/OnBackPressedCallback;)V
    .registers 2

    #@0
    .line 150
    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCancellableCallback(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;

    #@3
    return-void
.end method

.method public addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V
    .registers 5

    #@0
    .line 207
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@3
    move-result-object p1

    #@4
    .line 208
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    #@a
    if-ne v0, v1, :cond_d

    #@c
    return-void

    #@d
    .line 212
    :cond_d
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    #@f
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedCallback;)V

    #@12
    invoke-virtual {p2, v0}, Landroidx/activity/OnBackPressedCallback;->addCancellable(Landroidx/activity/Cancellable;)V

    #@15
    .line 214
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_23

    #@1b
    .line 215
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    #@1e
    .line 216
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    #@20
    invoke-virtual {p2, p1}, Landroidx/activity/OnBackPressedCallback;->setIsEnabledConsumer(Landroidx/core/util/Consumer;)V

    #@23
    :cond_23
    return-void
.end method

.method addCancellableCallback(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;
    .registers 4

    #@0
    .line 168
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@5
    .line 169
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;

    #@7
    invoke-direct {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/OnBackPressedCallback;)V

    #@a
    .line 170
    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback;->addCancellable(Landroidx/activity/Cancellable;)V

    #@d
    .line 171
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1b

    #@13
    .line 172
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    #@16
    .line 173
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    #@18
    invoke-virtual {p1, v1}, Landroidx/activity/OnBackPressedCallback;->setIsEnabledConsumer(Landroidx/core/util/Consumer;)V

    #@1b
    :cond_1b
    return-object v0
.end method

.method public hasEnabledCallbacks()Z
    .registers 3

    #@0
    .line 228
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    #@2
    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 230
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1a

    #@c
    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    #@12
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_6

    #@18
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    return v0
.end method

.method synthetic lambda$new$0$androidx-activity-OnBackPressedDispatcher(Ljava/lang/Boolean;)V
    .registers 2

    #@0
    .line 126
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 127
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    #@9
    :cond_9
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    #@0
    .line 250
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    #@2
    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 252
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1c

    #@c
    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    #@12
    .line 254
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_6

    #@18
    .line 255
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackPressed()V

    #@1b
    return-void

    #@1c
    .line 259
    :cond_1c
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    #@1e
    if-eqz v0, :cond_23

    #@20
    .line 260
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@23
    :cond_23
    return-void
.end method

.method public setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .registers 2

    #@0
    .line 83
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    #@2
    .line 84
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    #@5
    return-void
.end method

.method updateBackInvokedCallbackState()V
    .registers 5

    #@0
    .line 89
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks()Z

    #@3
    move-result v0

    #@4
    .line 90
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    #@6
    if-eqz v1, :cond_25

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v0, :cond_18

    #@b
    .line 91
    iget-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    #@d
    if-nez v3, :cond_18

    #@f
    .line 92
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    #@11
    invoke-static {v1, v2, v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    #@14
    const/4 v0, 0x1

    #@15
    .line 97
    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    #@17
    goto :goto_25

    #@18
    :cond_18
    if-nez v0, :cond_25

    #@1a
    .line 98
    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    #@1c
    if-eqz v0, :cond_25

    #@1e
    .line 99
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    #@20
    invoke-static {v1, v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    #@23
    .line 101
    iput-boolean v2, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    #@25
    :cond_25
    :goto_25
    return-void
.end method

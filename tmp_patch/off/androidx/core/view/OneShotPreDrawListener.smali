.class public final Landroidx/core/view/OneShotPreDrawListener;
.super Ljava/lang/Object;
.source "OneShotPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroidx/core/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    #@5
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@8
    move-result-object p1

    #@9
    iput-object p1, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    #@b
    .line 46
    iput-object p2, p0, Landroidx/core/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    #@d
    return-void
.end method

.method public static add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;
    .registers 3

    #@0
    if-eqz p0, :cond_1c

    #@2
    if-eqz p1, :cond_14

    #@4
    .line 62
    new-instance v0, Landroidx/core/view/OneShotPreDrawListener;

    #@6
    invoke-direct {v0, p0, p1}, Landroidx/core/view/OneShotPreDrawListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    #@9
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@10
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@13
    return-object v0

    #@14
    .line 60
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    #@16
    const-string p1, "runnable == null"

    #@18
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p0

    #@1c
    .line 59
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    #@1e
    const-string p1, "view == null"

    #@20
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw p0
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    #@0
    .line 70
    invoke-virtual {p0}, Landroidx/core/view/OneShotPreDrawListener;->removeListener()V

    #@3
    .line 71
    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    #@5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@8
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    #@0
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    #@6
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    #@0
    .line 95
    invoke-virtual {p0}, Landroidx/core/view/OneShotPreDrawListener;->removeListener()V

    #@3
    return-void
.end method

.method public removeListener()V
    .registers 2

    #@0
    .line 80
    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 81
    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    #@a
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@d
    goto :goto_17

    #@e
    .line 83
    :cond_e
    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@17
    .line 85
    :goto_17
    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    #@19
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1c
    return-void
.end method

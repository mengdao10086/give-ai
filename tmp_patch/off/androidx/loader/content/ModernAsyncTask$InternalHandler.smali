.class Landroidx/loader/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 497
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    .line 503
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    #@4
    .line 504
    iget p1, p1, Landroid/os/Message;->what:I

    #@6
    const/4 v1, 0x1

    #@7
    if-eq p1, v1, :cond_15

    #@9
    const/4 v1, 0x2

    #@a
    if-eq p1, v1, :cond_d

    #@c
    goto :goto_1f

    #@d
    .line 510
    :cond_d
    iget-object p1, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/ModernAsyncTask;

    #@f
    iget-object v0, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    #@11
    invoke-virtual {p1, v0}, Landroidx/loader/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    #@14
    goto :goto_1f

    #@15
    .line 507
    :cond_15
    iget-object p1, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/ModernAsyncTask;

    #@17
    iget-object v0, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    #@19
    const/4 v1, 0x0

    #@1a
    aget-object v0, v0, v1

    #@1c
    invoke-virtual {p1, v0}, Landroidx/loader/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    #@1f
    :goto_1f
    return-void
.end method

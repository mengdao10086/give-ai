.class public abstract Landroidx/lifecycle/ComputableLiveData;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mInvalidationRunnable:Ljava/lang/Runnable;

.field final mLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 56
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    #@7
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    #@0
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@9
    iput-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@11
    iput-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13
    .line 86
    new-instance v0, Landroidx/lifecycle/ComputableLiveData$2;

    #@15
    invoke-direct {v0, p0}, Landroidx/lifecycle/ComputableLiveData$2;-><init>(Landroidx/lifecycle/ComputableLiveData;)V

    #@18
    iput-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    #@1a
    .line 123
    new-instance v0, Landroidx/lifecycle/ComputableLiveData$3;

    #@1c
    invoke-direct {v0, p0}, Landroidx/lifecycle/ComputableLiveData$3;-><init>(Landroidx/lifecycle/ComputableLiveData;)V

    #@1f
    iput-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    #@21
    .line 66
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    #@23
    .line 67
    new-instance p1, Landroidx/lifecycle/ComputableLiveData$1;

    #@25
    invoke-direct {p1, p0}, Landroidx/lifecycle/ComputableLiveData$1;-><init>(Landroidx/lifecycle/ComputableLiveData;)V

    #@28
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->mLiveData:Landroidx/lifecycle/LiveData;

    #@2a
    return-void
.end method


# virtual methods
.method protected abstract compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 83
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->mLiveData:Landroidx/lifecycle/LiveData;

    #@2
    return-object v0
.end method

.method public invalidate()V
    .registers 3

    #@0
    .line 143
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    #@9
    return-void
.end method

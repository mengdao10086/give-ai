.class Landroidx/lifecycle/Transformations$3;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TX;>;"
    }
.end annotation


# instance fields
.field mFirstTime:Z

.field final synthetic val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/MediatorLiveData;)V
    .registers 2

    #@0
    .line 177
    iput-object p1, p0, Landroidx/lifecycle/Transformations$3;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 p1, 0x1

    #@6
    .line 179
    iput-boolean p1, p0, Landroidx/lifecycle/Transformations$3;->mFirstTime:Z

    #@8
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    #@0
    .line 183
    iget-object v0, p0, Landroidx/lifecycle/Transformations$3;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    #@2
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 184
    iget-boolean v1, p0, Landroidx/lifecycle/Transformations$3;->mFirstTime:Z

    #@8
    if-nez v1, :cond_16

    #@a
    if-nez v0, :cond_e

    #@c
    if-nez p1, :cond_16

    #@e
    :cond_e
    if-eqz v0, :cond_1e

    #@10
    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1e

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    .line 187
    iput-boolean v0, p0, Landroidx/lifecycle/Transformations$3;->mFirstTime:Z

    #@19
    .line 188
    iget-object v0, p0, Landroidx/lifecycle/Transformations$3;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    #@1b
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    #@1e
    :cond_1e
    return-void
.end method

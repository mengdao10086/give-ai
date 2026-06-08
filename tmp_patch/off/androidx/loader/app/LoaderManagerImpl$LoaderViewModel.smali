.class Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private mCreatingLoader:Z

.field private mLoaders:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 281
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    #@2
    invoke-direct {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    #@5
    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    .line 280
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    #@3
    .line 295
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    #@5
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@a
    const/4 v0, 0x0

    #@b
    .line 296
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    #@d
    return-void
.end method

.method static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    .registers 3

    #@0
    .line 292
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    #@2
    sget-object v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    #@4
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    #@7
    const-class p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    #@9
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    #@c
    move-result-object p0

    #@d
    check-cast p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    #@f
    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    #@0
    .line 354
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@2
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_57

    #@8
    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    const-string v0, "Loaders:"

    #@d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "    "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    const/4 v1, 0x0

    #@24
    .line 357
    :goto_24
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@26
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    #@29
    move-result v2

    #@2a
    if-ge v1, v2, :cond_57

    #@2c
    .line 358
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@2e
    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    #@34
    .line 359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    const-string v3, "  #"

    #@39
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    iget-object v3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@3e
    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    #@41
    move-result v3

    #@42
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@45
    const-string v3, ": "

    #@47
    .line 360
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    invoke-virtual {v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 361
    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@54
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_24

    #@57
    :cond_57
    return-void
.end method

.method finishCreatingLoader()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 307
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    #@3
    return-void
.end method

.method getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<",
            "TD;>;"
        }
    .end annotation

    #@0
    .line 316
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    #@8
    return-object p1
.end method

.method hasRunningLoaders()Z
    .registers 5

    #@0
    .line 324
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@2
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1d

    #@a
    .line 326
    iget-object v3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@c
    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    #@12
    .line 327
    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->isCallbackWaitingForData()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1a

    #@18
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_8

    #@1d
    :cond_1d
    return v1
.end method

.method isCreatingLoader()Z
    .registers 2

    #@0
    .line 303
    iget-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    #@2
    return v0
.end method

.method markForRedelivery()V
    .registers 4

    #@0
    .line 335
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@2
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_17

    #@9
    .line 337
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@b
    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    #@11
    .line 338
    invoke-virtual {v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->markForRedelivery()V

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_7

    #@17
    :cond_17
    return-void
.end method

.method protected onCleared()V
    .registers 5

    #@0
    .line 344
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    #@3
    .line 345
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@5
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_1b

    #@c
    .line 347
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@e
    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    #@14
    const/4 v3, 0x1

    #@15
    .line 348
    invoke-virtual {v2, v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_a

    #@1b
    .line 350
    :cond_1b
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@1d
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    #@20
    return-void
.end method

.method putLoader(ILandroidx/loader/app/LoaderManagerImpl$LoaderInfo;)V
    .registers 4

    #@0
    .line 311
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    #@5
    return-void
.end method

.method removeLoader(I)V
    .registers 3

    #@0
    .line 320
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    #@5
    return-void
.end method

.method startCreatingLoader()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 299
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    #@3
    return-void
.end method

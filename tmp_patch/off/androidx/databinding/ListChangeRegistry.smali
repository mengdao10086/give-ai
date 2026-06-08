.class public Landroidx/databinding/ListChangeRegistry;
.super Landroidx/databinding/CallbackRegistry;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ListChangeRegistry$ListChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry<",
        "Landroidx/databinding/ObservableList$OnListChangedCallback;",
        "Landroidx/databinding/ObservableList;",
        "Landroidx/databinding/ListChangeRegistry$ListChanges;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL:I = 0x0

.field private static final CHANGED:I = 0x1

.field private static final INSERTED:I = 0x2

.field private static final MOVED:I = 0x3

.field private static final NOTIFIER_CALLBACK:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "Landroidx/databinding/ObservableList$OnListChangedCallback;",
            "Landroidx/databinding/ObservableList;",
            "Landroidx/databinding/ListChangeRegistry$ListChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOVED:I = 0x4

.field private static final sListChanges:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Landroidx/databinding/ListChangeRegistry$ListChanges;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 28
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    sput-object v0, Landroidx/databinding/ListChangeRegistry;->sListChanges:Landroidx/core/util/Pools$SynchronizedPool;

    #@9
    .line 38
    new-instance v0, Landroidx/databinding/ListChangeRegistry$1;

    #@b
    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry$1;-><init>()V

    #@e
    sput-object v0, Landroidx/databinding/ListChangeRegistry;->NOTIFIER_CALLBACK:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 143
    sget-object v0, Landroidx/databinding/ListChangeRegistry;->NOTIFIER_CALLBACK:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    #@2
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;-><init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V

    #@5
    return-void
.end method

.method private static acquire(III)Landroidx/databinding/ListChangeRegistry$ListChanges;
    .registers 4

    #@0
    .line 123
    sget-object v0, Landroidx/databinding/ListChangeRegistry;->sListChanges:Landroidx/core/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@8
    if-nez v0, :cond_f

    #@a
    .line 125
    new-instance v0, Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@c
    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry$ListChanges;-><init>()V

    #@f
    .line 127
    :cond_f
    iput p0, v0, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    #@11
    .line 128
    iput p1, v0, Landroidx/databinding/ListChangeRegistry$ListChanges;->to:I

    #@13
    .line 129
    iput p2, v0, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    #@15
    return-object v0
.end method


# virtual methods
.method public declared-synchronized notifyCallbacks(Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    .line 136
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    #@4
    if-eqz p3, :cond_b

    #@6
    .line 138
    sget-object p1, Landroidx/databinding/ListChangeRegistry;->sListChanges:Landroidx/core/util/Pools$SynchronizedPool;

    #@8
    invoke-virtual {p1, p3}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    #@b
    .line 140
    :cond_b
    monitor-exit p0

    #@c
    return-void

    #@d
    :catchall_d
    move-exception p1

    #@e
    monitor-exit p0

    #@f
    throw p1
.end method

.method public bridge synthetic notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    #@0
    .line 24
    check-cast p1, Landroidx/databinding/ObservableList;

    #@2
    check-cast p3, Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ListChangeRegistry;->notifyCallbacks(Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    #@7
    return-void
.end method

.method public notifyChanged(Landroidx/databinding/ObservableList;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 70
    invoke-virtual {p0, p1, v0, v1}, Landroidx/databinding/ListChangeRegistry;->notifyCallbacks(Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    #@5
    return-void
.end method

.method public notifyChanged(Landroidx/databinding/ObservableList;II)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 81
    invoke-static {p2, v0, p3}, Landroidx/databinding/ListChangeRegistry;->acquire(III)Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@4
    move-result-object p2

    #@5
    const/4 p3, 0x1

    #@6
    .line 82
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/ListChangeRegistry;->notifyCallbacks(Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    #@9
    return-void
.end method

.method public notifyInserted(Landroidx/databinding/ObservableList;II)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 93
    invoke-static {p2, v0, p3}, Landroidx/databinding/ListChangeRegistry;->acquire(III)Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@4
    move-result-object p2

    #@5
    const/4 p3, 0x2

    #@6
    .line 94
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/ListChangeRegistry;->notifyCallbacks(Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    #@9
    return-void
.end method

.method public notifyMoved(Landroidx/databinding/ObservableList;III)V
    .registers 5

    #@0
    .line 106
    invoke-static {p2, p3, p4}, Landroidx/databinding/ListChangeRegistry;->acquire(III)Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@3
    move-result-object p2

    #@4
    const/4 p3, 0x3

    #@5
    .line 107
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/ListChangeRegistry;->notifyCallbacks(Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    #@8
    return-void
.end method

.method public notifyRemoved(Landroidx/databinding/ObservableList;II)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 118
    invoke-static {p2, v0, p3}, Landroidx/databinding/ListChangeRegistry;->acquire(III)Landroidx/databinding/ListChangeRegistry$ListChanges;

    #@4
    move-result-object p2

    #@5
    const/4 p3, 0x4

    #@6
    .line 119
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/ListChangeRegistry;->notifyCallbacks(Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    #@9
    return-void
.end method

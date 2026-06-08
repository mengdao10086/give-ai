.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Landroidx/lifecycle/GeneratedAdapter;)V
    .registers 2

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    #@5
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 9

    #@0
    .line 32
    new-instance v0, Landroidx/lifecycle/MethodCallsLogger;

    #@2
    invoke-direct {v0}, Landroidx/lifecycle/MethodCallsLogger;-><init>()V

    #@5
    .line 33
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    #@7
    array-length v2, v1

    #@8
    const/4 v3, 0x0

    #@9
    move v4, v3

    #@a
    :goto_a
    if-ge v4, v2, :cond_14

    #@c
    aget-object v5, v1, v4

    #@e
    .line 34
    invoke-interface {v5, p1, p2, v3, v0}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    #@11
    add-int/lit8 v4, v4, 0x1

    #@13
    goto :goto_a

    #@14
    .line 36
    :cond_14
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    #@16
    array-length v2, v1

    #@17
    :goto_17
    if-ge v3, v2, :cond_22

    #@19
    aget-object v4, v1, v3

    #@1b
    const/4 v5, 0x1

    #@1c
    .line 37
    invoke-interface {v4, p1, p2, v5, v0}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    #@1f
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_17

    #@22
    :cond_22
    return-void
.end method

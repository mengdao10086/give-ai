.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/BaseObservable;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;,
        Landroidx/databinding/ViewDataBinding$IncludedLayouts;,
        Landroidx/databinding/ViewDataBinding$LiveDataListener;,
        Landroidx/databinding/ViewDataBinding$WeakMapListener;,
        Landroidx/databinding/ViewDataBinding$WeakListListener;,
        Landroidx/databinding/ViewDataBinding$WeakPropertyListener;
    }
.end annotation


# static fields
.field private static final BINDING_NUMBER_START:I = 0x8

.field public static final BINDING_TAG_PREFIX:Ljava/lang/String; = "binding_"

.field private static final CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final HALTED:I = 0x2

.field private static final REBIND:I = 0x1

.field private static final REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final REBOUND:I = 0x3

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mBindingComponent:Landroidx/databinding/DataBindingComponent;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainingBinding:Landroidx/databinding/ViewDataBinding;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mInLiveDataRegisterObserver:Z

.field protected mInStateFlowRegisterObserver:Z

.field private mIsExecutingPendingBindings:Z

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mLocalFieldObservers:[Landroidx/databinding/WeakListener;

.field private mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field private mPendingRebind:Z

.field private mRebindCallbacks:Landroidx/databinding/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mRoot:Landroid/view/View;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    sput v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    #@4
    const/4 v0, 0x1

    #@5
    .line 90
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    #@7
    .line 95
    new-instance v0, Landroidx/databinding/ViewDataBinding$1;

    #@9
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$1;-><init>()V

    #@c
    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@e
    .line 110
    new-instance v0, Landroidx/databinding/ViewDataBinding$2;

    #@10
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$2;-><init>()V

    #@13
    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@15
    .line 125
    new-instance v0, Landroidx/databinding/ViewDataBinding$3;

    #@17
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$3;-><init>()V

    #@1a
    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@1c
    .line 140
    new-instance v0, Landroidx/databinding/ViewDataBinding$4;

    #@1e
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$4;-><init>()V

    #@21
    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@23
    .line 153
    new-instance v0, Landroidx/databinding/ViewDataBinding$5;

    #@25
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$5;-><init>()V

    #@28
    sput-object v0, Landroidx/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    #@2a
    .line 173
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@2c
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@2f
    sput-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@31
    .line 181
    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    #@33
    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$6;-><init>()V

    #@36
    sput-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    #@38
    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V
    .registers 5

    #@0
    .line 308
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    #@3
    .line 201
    new-instance v0, Landroidx/databinding/ViewDataBinding$7;

    #@5
    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$7;-><init>(Landroidx/databinding/ViewDataBinding;)V

    #@8
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    #@a
    const/4 v0, 0x0

    #@b
    .line 225
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    #@d
    .line 230
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    #@f
    .line 309
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    #@11
    .line 310
    new-array p1, p3, [Landroidx/databinding/WeakListener;

    #@13
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@15
    .line 311
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    #@17
    .line 312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1a
    move-result-object p1

    #@1b
    if-eqz p1, :cond_3e

    #@1d
    .line 315
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    #@1f
    if-eqz p1, :cond_2f

    #@21
    .line 316
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@24
    move-result-object p1

    #@25
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    #@27
    .line 317
    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    #@29
    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(Landroidx/databinding/ViewDataBinding;)V

    #@2c
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    #@2e
    goto :goto_3d

    #@2f
    :cond_2f
    const/4 p1, 0x0

    #@30
    .line 324
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    #@32
    .line 325
    new-instance p1, Landroid/os/Handler;

    #@34
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@37
    move-result-object p2

    #@38
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3b
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    #@3d
    :goto_3d
    return-void

    #@3e
    .line 313
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    #@40
    const-string p2, "DataBinding must be created in view\'s UI Thread"

    #@42
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw p1
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    #@0
    .line 333
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    #@7
    return-void
.end method

.method static synthetic access$002(Landroidx/databinding/ViewDataBinding;Z)Z
    .registers 2

    #@0
    .line 67
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    #@2
    return p1
.end method

.method static synthetic access$100(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .registers 1

    #@0
    .line 67
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    #@2
    return-object p0
.end method

.method static synthetic access$202(Landroidx/databinding/ViewDataBinding;Z)Z
    .registers 2

    #@0
    .line 67
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    #@2
    return p1
.end method

.method static synthetic access$300()V
    .registers 0

    #@0
    .line 67
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->processReferenceQueue()V

    #@3
    return-void
.end method

.method static synthetic access$400(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .registers 1

    #@0
    .line 67
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    #@2
    return-object p0
.end method

.method static synthetic access$500()Landroid/view/View$OnAttachStateChangeListener;
    .registers 1

    #@0
    .line 67
    sget-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    #@2
    return-object v0
.end method

.method protected static bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 3

    #@0
    .line 737
    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    #@3
    move-result-object p0

    #@4
    .line 736
    invoke-static {p0, p1, p2}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 340
    :cond_4
    instance-of v0, p0, Landroidx/databinding/DataBindingComponent;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 346
    check-cast p0, Landroidx/databinding/DataBindingComponent;

    #@a
    return-object p0

    #@b
    .line 341
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    #@f
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw p0
.end method

.method private executeBindingsInternal()V
    .registers 5

    #@0
    .line 494
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 495
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    #@7
    return-void

    #@8
    .line 498
    :cond_8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 v0, 0x1

    #@10
    .line 501
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    #@12
    const/4 v1, 0x0

    #@13
    .line 502
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    #@15
    .line 503
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    #@17
    const/4 v3, 0x0

    #@18
    if-eqz v2, :cond_27

    #@1a
    .line 504
    invoke-virtual {v2, p0, v0, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    #@1d
    .line 507
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    #@1f
    if-eqz v0, :cond_27

    #@21
    .line 508
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    #@23
    const/4 v2, 0x2

    #@24
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    #@27
    .line 511
    :cond_27
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    #@29
    if-nez v0, :cond_36

    #@2b
    .line 512
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    #@2e
    .line 513
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    #@30
    if-eqz v0, :cond_36

    #@32
    const/4 v2, 0x3

    #@33
    .line 514
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    #@36
    .line 517
    :cond_36
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    #@38
    return-void
.end method

.method protected static executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V
    .registers 1

    #@0
    .line 526
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    #@3
    return-void
.end method

.method private static findIncludeIndex(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I
    .registers 6

    #@0
    const/16 v0, 0x2f

    #@2
    .line 1317
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    .line 1318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v1, v1, -0x2

    #@e
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    #@11
    move-result-object p0

    #@12
    .line 1320
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    #@14
    aget-object p2, p2, p3

    #@16
    .line 1321
    array-length p3, p2

    #@17
    :goto_17
    if-ge p1, p3, :cond_25

    #@19
    .line 1323
    aget-object v0, p2, p1

    #@1b
    .line 1324
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_22

    #@21
    return p1

    #@22
    :cond_22
    add-int/lit8 p1, p1, 0x1

    #@24
    goto :goto_17

    #@25
    :cond_25
    const/4 p0, -0x1

    #@26
    return p0
.end method

.method private static findLastMatching(Landroid/view/ViewGroup;I)I
    .registers 10

    #@0
    .line 1332
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    .line 1334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@18
    move-result v2

    #@19
    .line 1337
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1c
    move-result v3

    #@1d
    add-int/lit8 v4, p1, 0x1

    #@1f
    :goto_1f
    if-ge v4, v3, :cond_60

    #@21
    .line 1340
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v5

    #@25
    .line 1341
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    .line 1342
    instance-of v6, v6, Ljava/lang/String;

    #@2b
    if-eqz v6, :cond_34

    #@2d
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    goto :goto_35

    #@34
    :cond_34
    const/4 v5, 0x0

    #@35
    :goto_35
    if-eqz v5, :cond_5d

    #@37
    .line 1343
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_5d

    #@3d
    .line 1344
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@40
    move-result v6

    #@41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@44
    move-result v7

    #@45
    if-ne v6, v7, :cond_56

    #@47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4a
    move-result v6

    #@4b
    add-int/lit8 v6, v6, -0x1

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v6

    #@51
    const/16 v7, 0x30

    #@53
    if-ne v6, v7, :cond_56

    #@55
    return p1

    #@56
    .line 1347
    :cond_56
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_5d

    #@5c
    move p1, v4

    #@5d
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_1f

    #@60
    :cond_60
    return p1
.end method

.method static getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .registers 2

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 564
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    #@4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, Landroidx/databinding/ViewDataBinding;

    #@a
    return-object p0

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    return-object p0
.end method

.method public static getBuildSdkInt()I
    .registers 1

    #@0
    .line 371
    sget v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    #@2
    return v0
.end method

.method protected static getColorFromResource(Landroid/view/View;I)I
    .registers 2

    #@0
    .line 837
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method protected static getColorStateListFromResource(Landroid/view/View;I)Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 846
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method protected static getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 855
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method protected static getFrom(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;)TT;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1127
    :cond_4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method protected static getFromArray([BI)B
    .registers 3

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 895
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 898
    :cond_8
    aget-byte p0, p0, p1

    #@a
    return p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method protected static getFromArray([CI)C
    .registers 3

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 927
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 930
    :cond_8
    aget-char p0, p0, p1

    #@a
    return p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method protected static getFromArray([DI)D
    .registers 4

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 991
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 994
    :cond_8
    aget-wide v0, p0, p1

    #@a
    return-wide v0

    #@b
    :cond_b
    :goto_b
    const-wide/16 p0, 0x0

    #@d
    return-wide p0
.end method

.method protected static getFromArray([FI)F
    .registers 3

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 975
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 978
    :cond_8
    aget p0, p0, p1

    #@a
    return p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method protected static getFromArray([II)I
    .registers 3

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 943
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 946
    :cond_8
    aget p0, p0, p1

    #@a
    return p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method protected static getFromArray([JI)J
    .registers 4

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 959
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 962
    :cond_8
    aget-wide v0, p0, p1

    #@a
    return-wide v0

    #@b
    :cond_b
    :goto_b
    const-wide/16 p0, 0x0

    #@d
    return-wide p0
.end method

.method protected static getFromArray([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 863
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 866
    :cond_8
    aget-object p0, p0, p1

    #@a
    return-object p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return-object p0
.end method

.method protected static getFromArray([SI)S
    .registers 3

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 911
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 914
    :cond_8
    aget-short p0, p0, p1

    #@a
    return p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method protected static getFromArray([ZI)Z
    .registers 3

    #@0
    if-eqz p0, :cond_b

    #@2
    if-ltz p1, :cond_b

    #@4
    .line 879
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_b

    #@8
    .line 882
    :cond_8
    aget-boolean p0, p0, p1

    #@a
    return p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return p0
.end method

.method protected static getFromList(Landroid/util/SparseIntArray;I)I
    .registers 2

    #@0
    if-eqz p0, :cond_a

    #@2
    if-gez p1, :cond_5

    #@4
    goto :goto_a

    #@5
    .line 1093
    :cond_5
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@8
    move-result p0

    #@9
    return p0

    #@a
    :cond_a
    :goto_a
    const/4 p0, 0x0

    #@b
    return p0
.end method

.method protected static getFromList(Landroid/util/SparseLongArray;I)J
    .registers 2

    #@0
    if-eqz p0, :cond_a

    #@2
    if-gez p1, :cond_5

    #@4
    goto :goto_a

    #@5
    .line 1110
    :cond_5
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    #@8
    move-result-wide p0

    #@9
    return-wide p0

    #@a
    :cond_a
    :goto_a
    const-wide/16 p0, 0x0

    #@c
    return-wide p0
.end method

.method protected static getFromList(Landroid/util/LongSparseArray;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_b

    #@2
    if-gez p1, :cond_5

    #@4
    goto :goto_b

    #@5
    :cond_5
    int-to-long v0, p1

    #@6
    .line 1043
    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return-object p0
.end method

.method protected static getFromList(Landroid/util/SparseArray;I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_a

    #@2
    if-gez p1, :cond_5

    #@4
    goto :goto_a

    #@5
    .line 1026
    :cond_5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    return-object p0

    #@a
    :cond_a
    :goto_a
    const/4 p0, 0x0

    #@b
    return-object p0
.end method

.method protected static getFromList(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_b

    #@2
    if-gez p1, :cond_5

    #@4
    goto :goto_b

    #@5
    :cond_5
    int-to-long v0, p1

    #@6
    .line 1060
    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x0

    #@c
    return-object p0
.end method

.method protected static getFromList(Ljava/util/List;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_10

    #@2
    if-ltz p1, :cond_10

    #@4
    .line 1007
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_10

    #@b
    .line 1010
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object p0

    #@f
    return-object p0

    #@10
    :cond_10
    :goto_10
    const/4 p0, 0x0

    #@11
    return-object p0
.end method

.method protected static getFromList(Landroid/util/SparseBooleanArray;I)Z
    .registers 2

    #@0
    if-eqz p0, :cond_a

    #@2
    if-gez p1, :cond_5

    #@4
    goto :goto_a

    #@5
    .line 1077
    :cond_5
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@8
    move-result p0

    #@9
    return p0

    #@a
    :cond_a
    :goto_a
    const/4 p0, 0x0

    #@b
    return p0
.end method

.method protected static inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 1414
    invoke-static {p4}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    #@3
    move-result-object p4

    #@4
    .line 1409
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static isNumeric(Ljava/lang/String;I)Z
    .registers 5

    #@0
    .line 1356
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-ne v0, p1, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    :goto_8
    if-ge p1, v0, :cond_18

    #@a
    .line 1361
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v2

    #@e
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_15

    #@14
    return v1

    #@15
    :cond_15
    add-int/lit8 p1, p1, 0x1

    #@17
    goto :goto_8

    #@18
    :cond_18
    const/4 p0, 0x1

    #@19
    return p0
.end method

.method private static mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V
    .registers 23

    #@0
    move-object/from16 v6, p0

    #@2
    move-object/from16 v0, p1

    #@4
    move-object/from16 v7, p3

    #@6
    move-object/from16 v8, p4

    #@8
    .line 1231
    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_f

    #@e
    return-void

    #@f
    .line 1235
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 1236
    instance-of v2, v1, Ljava/lang/String;

    #@15
    if-eqz v2, :cond_1a

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v1, 0x0

    #@1b
    :goto_1b
    const-string v9, "layout"

    #@1d
    const/4 v2, -0x1

    #@1e
    const/4 v11, 0x1

    #@1f
    if-eqz p5, :cond_4b

    #@21
    if-eqz v1, :cond_4b

    #@23
    .line 1238
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_4b

    #@29
    const/16 v3, 0x5f

    #@2b
    .line 1239
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@2e
    move-result v3

    #@2f
    if-lez v3, :cond_47

    #@31
    add-int/2addr v3, v11

    #@32
    .line 1240
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_47

    #@38
    .line 1241
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    #@3b
    move-result v1

    #@3c
    .line 1242
    aget-object v3, p2, v1

    #@3e
    if-nez v3, :cond_42

    #@40
    .line 1243
    aput-object v0, p2, v1

    #@42
    :cond_42
    if-nez v7, :cond_45

    #@44
    move v1, v2

    #@45
    :cond_45
    move v3, v11

    #@46
    goto :goto_49

    #@47
    :cond_47
    move v1, v2

    #@48
    const/4 v3, 0x0

    #@49
    :goto_49
    move v12, v1

    #@4a
    goto :goto_69

    #@4b
    :cond_4b
    if-eqz v1, :cond_67

    #@4d
    const-string v3, "binding_"

    #@4f
    .line 1250
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_67

    #@55
    .line 1251
    sget v3, Landroidx/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    #@57
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    #@5a
    move-result v1

    #@5b
    .line 1252
    aget-object v3, p2, v1

    #@5d
    if-nez v3, :cond_61

    #@5f
    .line 1253
    aput-object v0, p2, v1

    #@61
    :cond_61
    if-nez v7, :cond_64

    #@63
    move v1, v2

    #@64
    :cond_64
    move v12, v1

    #@65
    move v3, v11

    #@66
    goto :goto_69

    #@67
    :cond_67
    move v12, v2

    #@68
    const/4 v3, 0x0

    #@69
    :goto_69
    if-nez v3, :cond_7f

    #@6b
    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    #@6e
    move-result v1

    #@6f
    if-lez v1, :cond_7f

    #@71
    if-eqz v8, :cond_7f

    #@73
    .line 1265
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@76
    move-result v1

    #@77
    if-ltz v1, :cond_7f

    #@79
    aget-object v2, p2, v1

    #@7b
    if-nez v2, :cond_7f

    #@7d
    .line 1267
    aput-object v0, p2, v1

    #@7f
    .line 1272
    :cond_7f
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@81
    if-eqz v1, :cond_119

    #@83
    .line 1273
    move-object v13, v0

    #@84
    check-cast v13, Landroid/view/ViewGroup;

    #@86
    .line 1274
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    #@89
    move-result v14

    #@8a
    const/4 v0, 0x0

    #@8b
    const/4 v1, 0x0

    #@8c
    :goto_8c
    if-ge v0, v14, :cond_119

    #@8e
    .line 1277
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@91
    move-result-object v2

    #@92
    if-ltz v12, :cond_fc

    #@94
    .line 1279
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@97
    move-result-object v3

    #@98
    instance-of v3, v3, Ljava/lang/String;

    #@9a
    if-eqz v3, :cond_fc

    #@9c
    .line 1280
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@9f
    move-result-object v3

    #@a0
    check-cast v3, Ljava/lang/String;

    #@a2
    const-string v4, "_0"

    #@a4
    .line 1281
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a7
    move-result v4

    #@a8
    if-eqz v4, :cond_fc

    #@aa
    .line 1282
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ad
    move-result v4

    #@ae
    if-eqz v4, :cond_fc

    #@b0
    const/16 v4, 0x2f

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@b5
    move-result v4

    #@b6
    if-lez v4, :cond_fc

    #@b8
    .line 1284
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->findIncludeIndex(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I

    #@bb
    move-result v3

    #@bc
    if-ltz v3, :cond_fc

    #@be
    add-int/lit8 v1, v3, 0x1

    #@c0
    .line 1289
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    #@c2
    aget-object v4, v4, v12

    #@c4
    aget v4, v4, v3

    #@c6
    .line 1290
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    #@c8
    aget-object v5, v5, v12

    #@ca
    aget v3, v5, v3

    #@cc
    .line 1291
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->findLastMatching(Landroid/view/ViewGroup;I)I

    #@cf
    move-result v5

    #@d0
    if-ne v5, v0, :cond_dc

    #@d2
    .line 1293
    invoke-static {v6, v2, v3}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@d5
    move-result-object v3

    #@d6
    aput-object v3, p2, v4

    #@d8
    move v10, v0

    #@d9
    move v0, v11

    #@da
    move v11, v1

    #@db
    goto :goto_ff

    #@dc
    :cond_dc
    sub-int/2addr v5, v0

    #@dd
    add-int/2addr v5, v11

    #@de
    .line 1297
    new-array v15, v5, [Landroid/view/View;

    #@e0
    const/4 v10, 0x0

    #@e1
    :goto_e1
    if-ge v10, v5, :cond_ef

    #@e3
    add-int v11, v0, v10

    #@e5
    .line 1299
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@e8
    move-result-object v11

    #@e9
    aput-object v11, v15, v10

    #@eb
    add-int/lit8 v10, v10, 0x1

    #@ed
    const/4 v11, 0x1

    #@ee
    goto :goto_e1

    #@ef
    .line 1301
    :cond_ef
    invoke-static {v6, v15, v3}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@f2
    move-result-object v3

    #@f3
    aput-object v3, p2, v4

    #@f5
    add-int/lit8 v5, v5, -0x1

    #@f7
    add-int/2addr v0, v5

    #@f8
    move v10, v0

    #@f9
    move v11, v1

    #@fa
    const/4 v0, 0x1

    #@fb
    goto :goto_ff

    #@fc
    :cond_fc
    move v10, v0

    #@fd
    move v11, v1

    #@fe
    const/4 v0, 0x0

    #@ff
    :goto_ff
    if-nez v0, :cond_10e

    #@101
    const/4 v5, 0x0

    #@102
    move-object/from16 v0, p0

    #@104
    move-object v1, v2

    #@105
    move-object/from16 v2, p2

    #@107
    move-object/from16 v3, p3

    #@109
    move-object/from16 v4, p4

    #@10b
    .line 1309
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    #@10e
    :cond_10e
    const/4 v0, 0x1

    #@10f
    add-int/lit8 v1, v10, 0x1

    #@111
    move/from16 v16, v11

    #@113
    move v11, v0

    #@114
    move v0, v1

    #@115
    move/from16 v1, v16

    #@117
    goto/16 :goto_8c

    #@119
    :cond_119
    return-void
.end method

.method protected static mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .registers 11

    #@0
    .line 759
    new-array p2, p2, [Ljava/lang/Object;

    #@2
    const/4 v5, 0x1

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    .line 760
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    #@b
    return-object p2
.end method

.method protected static mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .registers 12

    #@0
    .line 1220
    new-array p2, p2, [Ljava/lang/Object;

    #@2
    const/4 v0, 0x0

    #@3
    move v6, v0

    #@4
    .line 1221
    :goto_4
    array-length v0, p1

    #@5
    if-ge v6, v0, :cond_14

    #@7
    .line 1222
    aget-object v1, p1, v6

    #@9
    const/4 v5, 0x1

    #@a
    move-object v0, p0

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    #@11
    add-int/lit8 v6, v6, 0x1

    #@13
    goto :goto_4

    #@14
    :cond_14
    return-object p2
.end method

.method protected static parse(Ljava/lang/String;B)B
    .registers 2

    #@0
    .line 775
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    :catch_5
    return p1
.end method

.method protected static parse(Ljava/lang/String;C)C
    .registers 3

    #@0
    if-eqz p0, :cond_f

    #@2
    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_f

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    .line 831
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result p0

    #@e
    return p0

    #@f
    :cond_f
    :goto_f
    return p1
.end method

.method protected static parse(Ljava/lang/String;D)D
    .registers 3

    #@0
    .line 820
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3
    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-wide p0

    #@5
    :catch_5
    return-wide p1
.end method

.method protected static parse(Ljava/lang/String;F)F
    .registers 2

    #@0
    .line 811
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    :catch_5
    return p1
.end method

.method protected static parse(Ljava/lang/String;I)I
    .registers 2

    #@0
    .line 793
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    :catch_5
    return p1
.end method

.method protected static parse(Ljava/lang/String;J)J
    .registers 3

    #@0
    .line 802
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3
    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-wide p0

    #@5
    :catch_5
    return-wide p1
.end method

.method protected static parse(Ljava/lang/String;S)S
    .registers 2

    #@0
    .line 784
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    :catch_5
    return p1
.end method

.method protected static parse(Ljava/lang/String;Z)Z
    .registers 2

    #@0
    if-nez p0, :cond_3

    #@2
    return p1

    #@3
    .line 769
    :cond_3
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@6
    move-result p0

    #@7
    return p0
.end method

.method private static parseTagInt(Ljava/lang/String;I)I
    .registers 5

    #@0
    .line 1375
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge p1, v0, :cond_13

    #@7
    mul-int/lit8 v1, v1, 0xa

    #@9
    .line 1379
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    add-int/lit8 v2, v2, -0x30

    #@f
    add-int/2addr v1, v2

    #@10
    add-int/lit8 p1, p1, 0x1

    #@12
    goto :goto_5

    #@13
    :cond_13
    return v1
.end method

.method private static processReferenceQueue()V
    .registers 2

    #@0
    .line 1390
    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 1391
    instance-of v1, v0, Landroidx/databinding/WeakListener;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1392
    check-cast v0, Landroidx/databinding/WeakListener;

    #@e
    .line 1393
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->unregister()Z

    #@11
    goto :goto_0

    #@12
    :cond_12
    return-void
.end method

.method protected static safeUnbox(Ljava/lang/Byte;)B
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 1169
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Character;)C
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 1174
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Double;)D
    .registers 3

    #@0
    if-nez p0, :cond_5

    #@2
    const-wide/16 v0, 0x0

    #@4
    goto :goto_9

    #@5
    .line 1179
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    #@8
    move-result-wide v0

    #@9
    :goto_9
    return-wide v0
.end method

.method protected static safeUnbox(Ljava/lang/Float;)F
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 1184
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Integer;)I
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 1154
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Long;)J
    .registers 3

    #@0
    if-nez p0, :cond_5

    #@2
    const-wide/16 v0, 0x0

    #@4
    goto :goto_9

    #@5
    .line 1159
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@8
    move-result-wide v0

    #@9
    :goto_9
    return-wide v0
.end method

.method protected static safeUnbox(Ljava/lang/Short;)S
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 1164
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Boolean;)Z
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 1189
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method protected static setBindingInverseListener(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;)V
    .registers 3

    #@0
    if-eq p1, p2, :cond_e

    #@2
    if-eqz p1, :cond_9

    #@4
    .line 1143
    check-cast p1, Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;

    #@6
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    #@9
    :cond_9
    if-eqz p2, :cond_e

    #@b
    .line 1147
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    #@e
    :cond_e
    return-void
.end method

.method protected static setTo(Landroid/util/LongSparseArray;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_f

    #@2
    if-ltz p1, :cond_f

    #@4
    .line 1049
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_f

    #@b
    :cond_b
    int-to-long v0, p1

    #@c
    .line 1052
    invoke-virtual {p0, v0, v1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@f
    :cond_f
    :goto_f
    return-void
.end method

.method protected static setTo(Landroid/util/SparseArray;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_e

    #@2
    if-ltz p1, :cond_e

    #@4
    .line 1031
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_e

    #@b
    .line 1034
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e
    :cond_e
    :goto_e
    return-void
.end method

.method protected static setTo(Landroid/util/SparseBooleanArray;IZ)V
    .registers 4

    #@0
    if-eqz p0, :cond_e

    #@2
    if-ltz p1, :cond_e

    #@4
    .line 1082
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_e

    #@b
    .line 1085
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@e
    :cond_e
    :goto_e
    return-void
.end method

.method protected static setTo(Landroid/util/SparseIntArray;II)V
    .registers 4

    #@0
    if-eqz p0, :cond_e

    #@2
    if-ltz p1, :cond_e

    #@4
    .line 1098
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_e

    #@b
    .line 1101
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@e
    :cond_e
    :goto_e
    return-void
.end method

.method protected static setTo(Landroid/util/SparseLongArray;IJ)V
    .registers 5

    #@0
    if-eqz p0, :cond_e

    #@2
    if-ltz p1, :cond_e

    #@4
    .line 1116
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_e

    #@b
    .line 1119
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    #@e
    :cond_e
    :goto_e
    return-void
.end method

.method protected static setTo(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_f

    #@2
    if-ltz p1, :cond_f

    #@4
    .line 1066
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_f

    #@b
    :cond_b
    int-to-long v0, p1

    #@c
    .line 1069
    invoke-virtual {p0, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@f
    :cond_f
    :goto_f
    return-void
.end method

.method protected static setTo(Ljava/util/List;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_e

    #@2
    if-ltz p1, :cond_e

    #@4
    .line 1015
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_e

    #@b
    .line 1018
    :cond_b
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@e
    :cond_e
    :goto_e
    return-void
.end method

.method protected static setTo(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;TT;)V"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 1135
    :cond_3
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    return-void
.end method

.method protected static setTo([BIB)V
    .registers 4

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 903
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 906
    :cond_8
    aput-byte p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([CIC)V
    .registers 4

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 935
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 938
    :cond_8
    aput-char p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([DID)V
    .registers 5

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 999
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 1002
    :cond_8
    aput-wide p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([FIF)V
    .registers 4

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 983
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 986
    :cond_8
    aput p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([III)V
    .registers 4

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 951
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 954
    :cond_8
    aput p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([JIJ)V
    .registers 5

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 967
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 970
    :cond_8
    aput-wide p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 871
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 874
    :cond_8
    aput-object p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([SIS)V
    .registers 4

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 919
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 922
    :cond_8
    aput-short p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method protected static setTo([ZIZ)V
    .registers 4

    #@0
    if-eqz p0, :cond_a

    #@2
    if-ltz p1, :cond_a

    #@4
    .line 887
    array-length v0, p0

    #@5
    if-lt p1, v0, :cond_8

    #@7
    goto :goto_a

    #@8
    .line 890
    :cond_8
    aput-boolean p2, p0, p1

    #@a
    :cond_a
    :goto_a
    return-void
.end method


# virtual methods
.method public addOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .registers 4

    #@0
    .line 461
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 462
    new-instance v0, Landroidx/databinding/CallbackRegistry;

    #@6
    sget-object v1, Landroidx/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    #@8
    invoke-direct {v0, v1}, Landroidx/databinding/CallbackRegistry;-><init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V

    #@b
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    #@d
    .line 464
    :cond_d
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    #@f
    invoke-virtual {v0, p1}, Landroidx/databinding/CallbackRegistry;->add(Ljava/lang/Object;)V

    #@12
    return-void
.end method

.method protected ensureBindingComponentIsNotNull(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 701
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 702
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    const-string v1, "Required DataBindingComponent is null in class "

    #@9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string v1, ". A BindingAdapter in "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 704
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    const-string v0, " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don\'t use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static."

    #@28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    .line 709
    new-instance v0, Ljava/lang/IllegalStateException;

    #@32
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0
.end method

.method protected abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .registers 2

    #@0
    .line 483
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 484
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    #@7
    goto :goto_b

    #@8
    .line 486
    :cond_8
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    #@b
    :goto_b
    return-void
.end method

.method forceExecuteBindings()V
    .registers 1

    #@0
    .line 531
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    #@3
    return-void
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .registers 2

    #@0
    .line 451
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    #@2
    return-object v0
.end method

.method protected getObservedField(I)Ljava/lang/Object;
    .registers 3

    #@0
    .line 638
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@2
    aget-object p1, v0, p1

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 642
    :cond_8
    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public getRoot()Landroid/view/View;
    .registers 2

    #@0
    .line 578
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    #@2
    return-object v0
.end method

.method protected handleFieldChange(ILjava/lang/Object;I)V
    .registers 5

    #@0
    .line 583
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    #@2
    if-nez v0, :cond_12

    #@4
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInStateFlowRegisterObserver:Z

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 589
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->onFieldChange(ILjava/lang/Object;I)Z

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_12

    #@f
    .line 591
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    #@12
    :cond_12
    :goto_12
    return-void
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method protected abstract onFieldChange(ILjava/lang/Object;I)Z
.end method

.method protected registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V
    .registers 5

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 721
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@5
    aget-object v0, v0, p1

    #@7
    if-nez v0, :cond_1a

    #@9
    .line 723
    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@b
    invoke-interface {p3, p0, p1, v0}, Landroidx/databinding/CreateWeakListener;->create(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;

    #@e
    move-result-object v0

    #@f
    .line 724
    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@11
    aput-object v0, p3, p1

    #@13
    .line 725
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    #@15
    if-eqz p1, :cond_1a

    #@17
    .line 726
    invoke-virtual {v0, p1}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    #@1a
    .line 729
    :cond_1a
    invoke-virtual {v0, p2}, Landroidx/databinding/WeakListener;->setTarget(Ljava/lang/Object;)V

    #@1d
    return-void
.end method

.method public removeOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .registers 3

    #@0
    .line 473
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 474
    invoke-virtual {v0, p1}, Landroidx/databinding/CallbackRegistry;->remove(Ljava/lang/Object;)V

    #@7
    :cond_7
    return-void
.end method

.method protected requestRebind()V
    .registers 3

    #@0
    .line 610
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 611
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    #@7
    goto :goto_3b

    #@8
    .line 613
    :cond_8
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    #@a
    if-eqz v0, :cond_1d

    #@c
    .line 615
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    #@13
    move-result-object v0

    #@14
    .line 616
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    #@16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1d

    #@1c
    return-void

    #@1d
    .line 620
    :cond_1d
    monitor-enter p0

    #@1e
    .line 621
    :try_start_1e
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    #@20
    if-eqz v0, :cond_24

    #@22
    .line 622
    monitor-exit p0

    #@23
    return-void

    #@24
    :cond_24
    const/4 v0, 0x1

    #@25
    .line 624
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    #@27
    .line 625
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_3c

    #@28
    .line 626
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    #@2a
    if-eqz v0, :cond_34

    #@2c
    .line 627
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    #@2e
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    #@30
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@33
    goto :goto_3b

    #@34
    .line 629
    :cond_34
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    #@36
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    #@38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3b
    :goto_3b
    return-void

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    .line 625
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    #@3e
    throw v0
.end method

.method protected setContainedBinding(Landroidx/databinding/ViewDataBinding;)V
    .registers 2

    #@0
    if-eqz p1, :cond_4

    #@2
    .line 1199
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    #@4
    :cond_4
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 6

    #@0
    .line 418
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    #@2
    if-eqz v0, :cond_b

    #@4
    const-string v0, "DataBinding"

    #@6
    const-string v1, "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment\'s view lifecycle"

    #@8
    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 423
    :cond_b
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    #@d
    if-ne v0, p1, :cond_10

    #@f
    return-void

    #@10
    :cond_10
    if-eqz v0, :cond_1b

    #@12
    .line 427
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    #@18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@1b
    .line 429
    :cond_1b
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    #@1d
    if-eqz p1, :cond_34

    #@1f
    .line 431
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    #@21
    if-nez v0, :cond_2b

    #@23
    .line 432
    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    #@25
    const/4 v1, 0x0

    #@26
    invoke-direct {v0, p0, v1}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/ViewDataBinding$1;)V

    #@29
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    #@2b
    .line 434
    :cond_2b
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    #@31
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@34
    .line 436
    :cond_34
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@36
    array-length v1, v0

    #@37
    const/4 v2, 0x0

    #@38
    :goto_38
    if-ge v2, v1, :cond_44

    #@3a
    aget-object v3, v0, v2

    #@3c
    if-eqz v3, :cond_41

    #@3e
    .line 438
    invoke-virtual {v3, p1}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    #@41
    :cond_41
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_38

    #@44
    :cond_44
    return-void
.end method

.method protected setRootTag(Landroid/view/View;)V
    .registers 3

    #@0
    .line 353
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    #@2
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@5
    return-void
.end method

.method protected setRootTag([Landroid/view/View;)V
    .registers 6

    #@0
    .line 360
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    :goto_2
    if-ge v1, v0, :cond_e

    #@4
    aget-object v2, p1, v1

    #@6
    .line 361
    sget v3, Landroidx/databinding/library/R$id;->dataBinding:I

    #@8
    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_2

    #@e
    :cond_e
    return-void
.end method

.method public abstract setVariable(ILjava/lang/Object;)Z
.end method

.method public unbind()V
    .registers 5

    #@0
    .line 555
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v1, :cond_10

    #@6
    aget-object v3, v0, v2

    #@8
    if-eqz v3, :cond_d

    #@a
    .line 557
    invoke-virtual {v3}, Landroidx/databinding/WeakListener;->unregister()Z

    #@d
    :cond_d
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_4

    #@10
    :cond_10
    return-void
.end method

.method protected unregisterFrom(I)Z
    .registers 3

    #@0
    .line 599
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@2
    aget-object p1, v0, p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 601
    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->unregister()Z

    #@9
    move-result p1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method protected updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/LiveData<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 689
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    #@3
    const/4 v0, 0x0

    #@4
    .line 691
    :try_start_4
    sget-object v1, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@6
    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    #@9
    move-result p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_d

    #@a
    .line 693
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    #@c
    return p1

    #@d
    :catchall_d
    move-exception p1

    #@e
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    #@10
    .line 694
    throw p1
.end method

.method protected updateRegistration(ILandroidx/databinding/Observable;)Z
    .registers 4

    #@0
    .line 668
    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected updateRegistration(ILandroidx/databinding/ObservableList;)Z
    .registers 4

    #@0
    .line 675
    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected updateRegistration(ILandroidx/databinding/ObservableMap;)Z
    .registers 4

    #@0
    .line 682
    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z
    .registers 6

    #@0
    if-nez p2, :cond_7

    #@2
    .line 649
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->unregisterFrom(I)Z

    #@5
    move-result p1

    #@6
    return p1

    #@7
    .line 651
    :cond_7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    #@9
    aget-object v0, v0, p1

    #@b
    const/4 v1, 0x1

    #@c
    if-nez v0, :cond_12

    #@e
    .line 653
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    #@11
    return v1

    #@12
    .line 656
    :cond_12
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    if-ne v0, p2, :cond_1a

    #@18
    const/4 p1, 0x0

    #@19
    return p1

    #@1a
    .line 659
    :cond_1a
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->unregisterFrom(I)Z

    #@1d
    .line 660
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    #@20
    return v1
.end method

.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "ImmLeaksCleaner.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final INIT_FAILED:I = 0x2

.field private static final INIT_SUCCESS:I = 0x1

.field private static final NOT_INITIALIAZED:I

.field private static sHField:Ljava/lang/reflect/Field;

.field private static sNextServedViewField:Ljava/lang/reflect/Field;

.field private static sReflectedFieldsInitialized:I

.field private static sServedViewField:Ljava/lang/reflect/Field;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    #@0
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    #@5
    return-void
.end method

.method private static initializeReflectiveFields()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    .line 103
    :try_start_1
    sput v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    #@3
    .line 104
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    #@5
    const-string v1, "mServedView"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    #@d
    const/4 v1, 0x1

    #@e
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@11
    .line 106
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    #@13
    const-string v2, "mNextServedView"

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    #@1b
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@1e
    .line 108
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    #@20
    const-string v2, "mH"

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    #@28
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@2b
    .line 110
    sput v1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_2d} :catch_2d

    #@2d
    :catch_2d
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    #@0
    .line 52
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@2
    if-eq p2, p1, :cond_5

    #@4
    return-void

    #@5
    .line 55
    :cond_5
    sget p1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    #@7
    if-nez p1, :cond_c

    #@9
    .line 56
    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->initializeReflectiveFields()V

    #@c
    .line 58
    :cond_c
    sget p1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    #@e
    const/4 p2, 0x1

    #@f
    if-ne p1, p2, :cond_4e

    #@11
    .line 59
    iget-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    #@13
    const-string p2, "input_method"

    #@15
    .line 60
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object p1

    #@19
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    #@1b
    .line 63
    :try_start_1b
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    #@1d
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object p2
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_21} :catch_4e

    #@21
    if-nez p2, :cond_24

    #@23
    return-void

    #@24
    .line 70
    :cond_24
    monitor-enter p2

    #@25
    .line 73
    :try_start_25
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    #@27
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/view/View;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2d} :catch_4a
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2d} :catch_48
    .catchall {:try_start_25 .. :try_end_2d} :catchall_46

    #@2d
    if-nez v0, :cond_31

    #@2f
    .line 80
    :try_start_2f
    monitor-exit p2

    #@30
    return-void

    #@31
    .line 82
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_39

    #@37
    .line 83
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_46

    #@38
    return-void

    #@39
    .line 88
    :cond_39
    :try_start_39
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    #@3b
    const/4 v1, 0x0

    #@3c
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3f} :catch_44
    .catchall {:try_start_39 .. :try_end_3f} :catchall_46

    #@3f
    .line 92
    :try_start_3f
    monitor-exit p2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_46

    #@40
    .line 95
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    #@43
    goto :goto_4e

    #@44
    .line 90
    :catch_44
    :try_start_44
    monitor-exit p2

    #@45
    return-void

    #@46
    :catchall_46
    move-exception p1

    #@47
    goto :goto_4c

    #@48
    .line 77
    :catch_48
    monitor-exit p2

    #@49
    return-void

    #@4a
    .line 75
    :catch_4a
    monitor-exit p2

    #@4b
    return-void

    #@4c
    .line 92
    :goto_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_46

    #@4d
    throw p1

    #@4e
    :catch_4e
    :cond_4e
    :goto_4e
    return-void
.end method

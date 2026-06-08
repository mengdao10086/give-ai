.class public Landroidx/core/view/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/KeyEventDispatcher$Component;
    }
.end annotation


# static fields
.field private static sActionBarFieldsFetched:Z = false

.field private static sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method; = null

.field private static sDialogFieldsFetched:Z = false

.field private static sDialogKeyListenerField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .registers 8

    #@0
    .line 98
    sget-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-nez v0, :cond_1a

    #@6
    .line 101
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    const-string v3, "onMenuKeyEvent"

    #@c
    new-array v4, v1, [Ljava/lang/Class;

    #@e
    const-class v5, Landroid/view/KeyEvent;

    #@10
    aput-object v5, v4, v2

    #@12
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_18} :catch_18

    #@18
    .line 104
    :catch_18
    sput-boolean v1, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    #@1a
    .line 106
    :cond_1a
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    #@1c
    if-eqz v0, :cond_30

    #@1e
    :try_start_1e
    new-array v1, v1, [Ljava/lang/Object;

    #@20
    aput-object p1, v1, v2

    #@22
    .line 108
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object p0

    #@26
    if-nez p0, :cond_29

    #@28
    return v2

    #@29
    .line 112
    :cond_29
    check-cast p0, Ljava/lang/Boolean;

    #@2b
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@2e
    move-result p0
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_2f} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_2f} :catch_30

    #@2f
    return p0

    #@30
    :catch_30
    :cond_30
    return v2
.end method

.method private static activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .registers 7

    #@0
    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    const/16 v1, 0x8

    #@9
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@c
    move-result v1

    #@d
    const/4 v2, 0x1

    #@e
    if-eqz v1, :cond_25

    #@10
    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@13
    move-result-object v1

    #@14
    .line 129
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@17
    move-result v3

    #@18
    const/16 v4, 0x52

    #@1a
    if-ne v3, v4, :cond_25

    #@1c
    if-eqz v1, :cond_25

    #@1e
    .line 131
    invoke-static {v1, p1}, Landroidx/core/view/KeyEventDispatcher;->actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_25

    #@24
    return v2

    #@25
    .line 136
    :cond_25
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_2c

    #@2b
    return v2

    #@2c
    .line 139
    :cond_2c
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 140
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_37

    #@36
    return v2

    #@37
    :cond_37
    if-eqz v0, :cond_3e

    #@39
    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@3c
    move-result-object v0

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    .line 143
    :goto_3f
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@42
    move-result p0

    #@43
    return p0
.end method

.method private static dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z
    .registers 5

    #@0
    .line 168
    invoke-static {p0}, Landroidx/core/view/KeyEventDispatcher;->getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_12

    #@7
    .line 169
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@a
    move-result v2

    #@b
    invoke-interface {v0, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_12

    #@11
    return v1

    #@12
    .line 172
    :cond_12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@15
    move-result-object v0

    #@16
    .line 173
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1d

    #@1c
    return v1

    #@1d
    .line 176
    :cond_1d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 177
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_28

    #@27
    return v1

    #@28
    :cond_28
    if-eqz v0, :cond_2f

    #@2a
    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@2d
    move-result-object v0

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    .line 180
    :goto_30
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@33
    move-result p0

    #@34
    return p0
.end method

.method public static dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 2

    #@0
    .line 64
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 85
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v2, 0x1c

    #@8
    if-lt v1, v2, :cond_f

    #@a
    .line 86
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 88
    :cond_f
    instance-of v1, p2, Landroid/app/Activity;

    #@11
    if-eqz v1, :cond_1a

    #@13
    .line 89
    check-cast p2, Landroid/app/Activity;

    #@15
    invoke-static {p2, p3}, Landroidx/core/view/KeyEventDispatcher;->activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    #@18
    move-result p0

    #@19
    return p0

    #@1a
    .line 90
    :cond_1a
    instance-of v1, p2, Landroid/app/Dialog;

    #@1c
    if-eqz v1, :cond_25

    #@1e
    .line 91
    check-cast p2, Landroid/app/Dialog;

    #@20
    invoke-static {p2, p3}, Landroidx/core/view/KeyEventDispatcher;->dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z

    #@23
    move-result p0

    #@24
    return p0

    #@25
    :cond_25
    if-eqz p1, :cond_2d

    #@27
    .line 93
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@2a
    move-result p1

    #@2b
    if-nez p1, :cond_33

    #@2d
    .line 94
    :cond_2d
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@30
    move-result p0

    #@31
    if-eqz p0, :cond_34

    #@33
    :cond_33
    const/4 v0, 0x1

    #@34
    :cond_34
    return v0
.end method

.method private static getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 4

    #@0
    .line 149
    sget-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    #@2
    if-nez v0, :cond_14

    #@4
    const/4 v0, 0x1

    #@5
    .line 151
    :try_start_5
    const-class v1, Landroid/app/Dialog;

    #@7
    const-string v2, "mOnKeyListener"

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@c
    move-result-object v1

    #@d
    sput-object v1, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    #@f
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    #@12
    .line 155
    :catch_12
    sput-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    #@14
    .line 158
    :cond_14
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    #@16
    if-eqz v0, :cond_1f

    #@18
    .line 160
    :try_start_18
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object p0

    #@1c
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_1e} :catch_1f

    #@1e
    return-object p0

    #@1f
    :catch_1f
    :cond_1f
    const/4 p0, 0x0

    #@20
    return-object p0
.end method

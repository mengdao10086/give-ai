.class public Landroidx/core/app/ComponentActivity;
.super Landroid/app/Activity;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ComponentActivity$ExtraData;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">;",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 59
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@5
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    #@a
    .line 66
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    #@c
    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    #@f
    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@11
    return-void
.end method

.method private static shouldSkipDump([Ljava/lang/String;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_64

    #@3
    .line 174
    array-length v1, p0

    #@4
    if-lez v1, :cond_64

    #@6
    .line 176
    aget-object p0, p0, v0

    #@8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x1

    #@10
    const/4 v3, -0x1

    #@11
    sparse-switch v1, :sswitch_data_66

    #@14
    goto :goto_4b

    #@15
    :sswitch_15
    const-string v1, "--autofill"

    #@17
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result p0

    #@1b
    if-nez p0, :cond_1e

    #@1d
    goto :goto_4b

    #@1e
    :cond_1e
    const/4 v3, 0x4

    #@1f
    goto :goto_4b

    #@20
    :sswitch_20
    const-string v1, "--contentcapture"

    #@22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result p0

    #@26
    if-nez p0, :cond_29

    #@28
    goto :goto_4b

    #@29
    :cond_29
    const/4 v3, 0x3

    #@2a
    goto :goto_4b

    #@2b
    :sswitch_2b
    const-string v1, "--list-dumpables"

    #@2d
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result p0

    #@31
    if-nez p0, :cond_34

    #@33
    goto :goto_4b

    #@34
    :cond_34
    const/4 v3, 0x2

    #@35
    goto :goto_4b

    #@36
    :sswitch_36
    const-string v1, "--dump-dumpable"

    #@38
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result p0

    #@3c
    if-nez p0, :cond_3f

    #@3e
    goto :goto_4b

    #@3f
    :cond_3f
    move v3, v2

    #@40
    goto :goto_4b

    #@41
    :sswitch_41
    const-string v1, "--translation"

    #@43
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result p0

    #@47
    if-nez p0, :cond_4a

    #@49
    goto :goto_4b

    #@4a
    :cond_4a
    move v3, v0

    #@4b
    :goto_4b
    packed-switch v3, :pswitch_data_7c

    #@4e
    goto :goto_64

    #@4f
    :pswitch_4f
    return v2

    #@50
    .line 180
    :pswitch_50
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@52
    const/16 v1, 0x1d

    #@54
    if-lt p0, v1, :cond_57

    #@56
    move v0, v2

    #@57
    :cond_57
    return v0

    #@58
    .line 185
    :pswitch_58
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@5b
    move-result p0

    #@5c
    return p0

    #@5d
    .line 182
    :pswitch_5d
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5f
    const/16 v1, 0x1f

    #@61
    if-lt p0, v1, :cond_64

    #@63
    move v0, v2

    #@64
    :cond_64
    :goto_64
    return v0

    #@65
    nop

    #@66
    :sswitch_data_66
    .sparse-switch
        -0x2673d6ef -> :sswitch_41
        0x5fd0f67 -> :sswitch_36
        0x1c2b8816 -> :sswitch_2b
        0x4519f64d -> :sswitch_20
        0x56b9c952 -> :sswitch_15
    .end sparse-switch

    #@7c
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_58
        :pswitch_58
        :pswitch_50
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 140
    invoke-virtual {p0}, Landroidx/core/app/ComponentActivity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_12

    #@a
    .line 141
    invoke-static {v0, p1}, Landroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    return p1

    #@12
    .line 144
    :cond_12
    invoke-static {p0, v0, p0, p1}, Landroidx/core/view/KeyEventDispatcher;->dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    #@15
    move-result p1

    #@16
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 131
    invoke-virtual {p0}, Landroidx/core/app/ComponentActivity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_12

    #@a
    .line 132
    invoke-static {v0, p1}, Landroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    return p1

    #@12
    .line 135
    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@15
    move-result p1

    #@16
    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$ExtraData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 110
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/core/app/ComponentActivity$ExtraData;

    #@8
    return-object p1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    #@0
    .line 116
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@2
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 89
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    #@6
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 95
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    #@2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    #@4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    #@7
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@a
    return-void
.end method

.method public putExtraData(Landroidx/core/app/ComponentActivity$ExtraData;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 82
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method protected final shouldDumpInternalState([Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 169
    invoke-static {p1}, Landroidx/core/app/ComponentActivity;->shouldSkipDump([Ljava/lang/String;)Z

    #@3
    move-result p1

    #@4
    xor-int/lit8 p1, p1, 0x1

    #@6
    return p1
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    #@0
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

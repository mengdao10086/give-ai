.class public final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;
.source "Recreator.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/Recreator$SavedStateProvider;,
        Landroidx/savedstate/Recreator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/savedstate/Recreator;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "owner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "(Landroidx/savedstate/SavedStateRegistryOwner;)V",
        "onStateChanged",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "reflectiveNew",
        "className",
        "",
        "Companion",
        "SavedStateProvider",
        "savedstate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CLASSES_KEY:Ljava/lang/String; = "classes_to_restore"

.field public static final COMPONENT_KEY:Ljava/lang/String; = "androidx.savedstate.Restarter"

.field public static final Companion:Landroidx/savedstate/Recreator$Companion;


# instance fields
.field private final owner:Landroidx/savedstate/SavedStateRegistryOwner;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Landroidx/savedstate/Recreator$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroidx/savedstate/Recreator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Landroidx/savedstate/Recreator;->Companion:Landroidx/savedstate/Recreator$Companion;

    #@8
    return-void
.end method

.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .registers 3

    #@0
    const-string v0, "owner"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 25
    iput-object p1, p0, Landroidx/savedstate/Recreator;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    #@a
    return-void
.end method

.method private final reflectiveNew(Ljava/lang/String;)V
    .registers 6

    #@0
    const-string v0, "Class "

    #@2
    .line 49
    :try_start_2
    const-class v1, Landroidx/savedstate/Recreator;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    const-class v3, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;

    #@f
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@12
    move-result-object v1

    #@13
    const-string v3, "{\n                Class.\u2026class.java)\n            }"

    #@15
    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_18} :catch_6d

    #@18
    :try_start_18
    new-array v3, v2, [Ljava/lang/Class;

    #@1a
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@1d
    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_1e} :catch_4d

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@22
    :try_start_22
    new-array v1, v2, [Ljava/lang/Object;

    #@24
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    const-string v1, "{\n                constr\u2026wInstance()\n            }"

    #@2a
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@2d
    check-cast v0, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_35

    #@2f
    .line 70
    iget-object p1, p0, Landroidx/savedstate/Recreator;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    #@31
    invoke-interface {v0, p1}, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;->onRecreated(Landroidx/savedstate/SavedStateRegistryOwner;)V

    #@34
    return-void

    #@35
    :catch_35
    move-exception v0

    #@36
    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    const-string v3, "Failed to instantiate "

    #@3c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object p1

    #@47
    check-cast v0, Ljava/lang/Throwable;

    #@49
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v1

    #@4d
    :catch_4d
    move-exception p1

    #@4e
    .line 58
    new-instance v2, Ljava/lang/IllegalStateException;

    #@50
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@55
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    const-string v1, " must have default constructor in order to be automatically recreated"

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    .line 60
    check-cast p1, Ljava/lang/Throwable;

    #@69
    .line 58
    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6c
    throw v2

    #@6d
    :catch_6d
    move-exception v1

    #@6e
    .line 52
    new-instance v2, Ljava/lang/RuntimeException;

    #@70
    new-instance v3, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@75
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object p1

    #@79
    const-string v0, " wasn\'t found"

    #@7b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object p1

    #@7f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object p1

    #@83
    check-cast v1, Ljava/lang/Throwable;

    #@85
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@88
    throw v2
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    #@0
    const-string v0, "source"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "event"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 29
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@c
    if-ne p2, v0, :cond_4e

    #@e
    .line 32
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@11
    move-result-object p1

    #@12
    move-object p2, p0

    #@13
    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    #@15
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@18
    .line 33
    iget-object p1, p0, Landroidx/savedstate/Recreator;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    #@1a
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    #@1d
    move-result-object p1

    #@1e
    const-string p2, "androidx.savedstate.Restarter"

    #@20
    .line 34
    invoke-virtual {p1, p2}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    #@23
    move-result-object p1

    #@24
    if-nez p1, :cond_27

    #@26
    return-void

    #@27
    :cond_27
    const-string p2, "classes_to_restore"

    #@29
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@2c
    move-result-object p1

    #@2d
    if-eqz p1, :cond_46

    #@2f
    check-cast p1, Ljava/util/List;

    #@31
    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object p1

    #@35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result p2

    #@39
    if-eqz p2, :cond_45

    #@3b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object p2

    #@3f
    check-cast p2, Ljava/lang/String;

    #@41
    .line 42
    invoke-direct {p0, p2}, Landroidx/savedstate/Recreator;->reflectiveNew(Ljava/lang/String;)V

    #@44
    goto :goto_35

    #@45
    :cond_45
    return-void

    #@46
    .line 36
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    #@48
    const-string p2, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    #@4a
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4d
    throw p1

    #@4e
    .line 30
    :cond_4e
    new-instance p1, Ljava/lang/AssertionError;

    #@50
    const-string p2, "Next event must be ON_CREATE"

    #@52
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@55
    throw p1
.end method

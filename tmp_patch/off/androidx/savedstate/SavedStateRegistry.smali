.class public final Landroidx/savedstate/SavedStateRegistry;
.super Ljava/lang/Object;
.source "SavedStateRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/SavedStateRegistry$AutoRecreated;,
        Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;,
        Landroidx/savedstate/SavedStateRegistry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavedStateRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateRegistry.kt\nandroidx/savedstate/SavedStateRegistry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1#2:273\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 )2\u00020\u0001:\u0003()*B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0007J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0015\u001a\u00020\u0007J\u0015\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0001\u00a2\u0006\u0002\u0008\u001bJ\u0017\u0010\u001c\u001a\u00020\u00182\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0013H\u0001\u00a2\u0006\u0002\u0008\u001eJ\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0013H\u0007J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0008H\u0007J\u0018\u0010#\u001a\u00020\u00182\u000e\u0010$\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020&0%H\u0007J\u0010\u0010\'\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00048G@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Landroidx/savedstate/SavedStateRegistry;",
        "",
        "()V",
        "attached",
        "",
        "components",
        "Landroidx/arch/core/internal/SafeIterableMap;",
        "",
        "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
        "isAllowingSavingState",
        "isAllowingSavingState$savedstate_release",
        "()Z",
        "setAllowingSavingState$savedstate_release",
        "(Z)V",
        "<set-?>",
        "isRestored",
        "recreatorProvider",
        "Landroidx/savedstate/Recreator$SavedStateProvider;",
        "restoredState",
        "Landroid/os/Bundle;",
        "consumeRestoredStateForKey",
        "key",
        "getSavedStateProvider",
        "performAttach",
        "",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "performAttach$savedstate_release",
        "performRestore",
        "savedState",
        "performRestore$savedstate_release",
        "performSave",
        "outBundle",
        "registerSavedStateProvider",
        "provider",
        "runOnNextRecreation",
        "clazz",
        "Ljava/lang/Class;",
        "Landroidx/savedstate/SavedStateRegistry$AutoRecreated;",
        "unregisterSavedStateProvider",
        "AutoRecreated",
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
.field private static final Companion:Landroidx/savedstate/SavedStateRegistry$Companion;

.field private static final SAVED_COMPONENTS_KEY:Ljava/lang/String; = "androidx.lifecycle.BundlableSavedStateRegistry.key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private attached:Z

.field private final components:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Ljava/lang/String;",
            "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private isAllowingSavingState:Z

.field private isRestored:Z

.field private recreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

.field private restoredState:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$fqOml4yVknvVr08QjHEXC_isf3A(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Landroidx/savedstate/SavedStateRegistry;->performAttach$lambda-4(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Landroidx/savedstate/SavedStateRegistry$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroidx/savedstate/SavedStateRegistry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Landroidx/savedstate/SavedStateRegistry;->Companion:Landroidx/savedstate/SavedStateRegistry$Companion;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    #@5
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->components:Landroidx/arch/core/internal/SafeIterableMap;

    #@a
    const/4 v0, 0x1

    #@b
    .line 48
    iput-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    #@d
    return-void
.end method

.method private static final performAttach$lambda-4(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "<anonymous parameter 0>"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p1, "event"

    #@c
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    .line 202
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@11
    if-ne p2, p1, :cond_17

    #@13
    const/4 p1, 0x1

    #@14
    .line 203
    iput-boolean p1, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    #@16
    goto :goto_1e

    #@17
    .line 204
    :cond_17
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@19
    if-ne p2, p1, :cond_1e

    #@1b
    const/4 p1, 0x0

    #@1c
    .line 205
    iput-boolean p1, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    #@1e
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public final consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 72
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->isRestored:Z

    #@7
    if-eqz v0, :cond_2f

    #@9
    .line 76
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    #@b
    const/4 v1, 0x0

    #@c
    if-eqz v0, :cond_2e

    #@e
    if-eqz v0, :cond_15

    #@10
    .line 77
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@13
    move-result-object v0

    #@14
    goto :goto_16

    #@15
    :cond_15
    move-object v0, v1

    #@16
    .line 78
    :goto_16
    iget-object v2, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    #@18
    if-eqz v2, :cond_1d

    #@1a
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1d
    .line 79
    :cond_1d
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    #@1f
    const/4 v2, 0x0

    #@20
    if-eqz p1, :cond_29

    #@22
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    #@25
    move-result p1

    #@26
    if-nez p1, :cond_29

    #@28
    const/4 v2, 0x1

    #@29
    :cond_29
    if-nez v2, :cond_2d

    #@2b
    .line 80
    iput-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    #@2d
    :cond_2d
    return-object v0

    #@2e
    :cond_2e
    return-object v1

    #@2f
    .line 72
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@31
    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    #@33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw p1
.end method

.method public final getSavedStateProvider(Ljava/lang/String;)Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .registers 5

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 128
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->components:Landroidx/arch/core/internal/SafeIterableMap;

    #@7
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2f

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/Map$Entry;

    #@17
    const-string v2, "components"

    #@19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/String;

    #@22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    #@28
    .line 129
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_b

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    :goto_30
    return-object v1
.end method

.method public final isAllowingSavingState$savedstate_release()Z
    .registers 2

    #@0
    .line 48
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    #@2
    return v0
.end method

.method public final isRestored()Z
    .registers 2

    #@0
    .line 45
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->isRestored:Z

    #@2
    return v0
.end method

.method public final performAttach$savedstate_release(Landroidx/lifecycle/Lifecycle;)V
    .registers 4

    #@0
    const-string v0, "lifecycle"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 199
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->attached:Z

    #@7
    const/4 v1, 0x1

    #@8
    xor-int/2addr v0, v1

    #@9
    if-eqz v0, :cond_18

    #@b
    .line 201
    new-instance v0, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;

    #@d
    invoke-direct {v0, p0}, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;-><init>(Landroidx/savedstate/SavedStateRegistry;)V

    #@10
    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    #@12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@15
    .line 208
    iput-boolean v1, p0, Landroidx/savedstate/SavedStateRegistry;->attached:Z

    #@17
    return-void

    #@18
    .line 199
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1a
    const-string v0, "SavedStateRegistry was already attached."

    #@1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw p1
.end method

.method public final performRestore$savedstate_release(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 217
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->attached:Z

    #@2
    if-eqz v0, :cond_25

    #@4
    .line 221
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->isRestored:Z

    #@6
    const/4 v1, 0x1

    #@7
    xor-int/2addr v0, v1

    #@8
    if-eqz v0, :cond_19

    #@a
    if-eqz p1, :cond_13

    #@c
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    #@e
    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@11
    move-result-object p1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    :goto_14
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    #@16
    .line 224
    iput-boolean v1, p0, Landroidx/savedstate/SavedStateRegistry;->isRestored:Z

    #@18
    return-void

    #@19
    .line 221
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1b
    const-string v0, "SavedStateRegistry was already restored."

    #@1d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw p1

    #@25
    .line 217
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    #@27
    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    #@29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw p1
.end method

.method public final performSave(Landroid/os/Bundle;)V
    .registers 6

    #@0
    const-string v0, "outBundle"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 239
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@a
    .line 240
    iget-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    #@c
    if-eqz v1, :cond_11

    #@e
    .line 241
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@11
    .line 244
    :cond_11
    iget-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->components:Landroidx/arch/core/internal/SafeIterableMap;

    #@13
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    #@16
    move-result-object v1

    #@17
    const-string v2, "this.components.iteratorWithAdditions()"

    #@19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1c
    check-cast v1, Ljava/util/Iterator;

    #@1e
    .line 245
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3e

    #@24
    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/util/Map$Entry;

    #@2a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/String;

    #@30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    #@36
    .line 247
    invoke-interface {v2}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3d
    goto :goto_1e

    #@3e
    .line 249
    :cond_3e
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_49

    #@44
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    #@46
    .line 250
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@49
    :cond_49
    return-void
.end method

.method public final registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    .registers 4

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "provider"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 109
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->components:Landroidx/arch/core/internal/SafeIterableMap;

    #@c
    invoke-virtual {v0, p1, p2}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    #@12
    if-nez p1, :cond_16

    #@14
    const/4 p1, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    :goto_17
    if-eqz p1, :cond_1a

    #@19
    return-void

    #@1a
    .line 110
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string p2, "SavedStateProvider with the given key is already registered"

    #@1e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object p2

    #@22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw p1
.end method

.method public final runOnNextRecreation(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/savedstate/SavedStateRegistry$AutoRecreated;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "clazz"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 180
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    #@7
    if-eqz v0, :cond_4d

    #@9
    .line 181
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->recreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

    #@b
    if-nez v0, :cond_12

    #@d
    new-instance v0, Landroidx/savedstate/Recreator$SavedStateProvider;

    #@f
    invoke-direct {v0, p0}, Landroidx/savedstate/Recreator$SavedStateProvider;-><init>(Landroidx/savedstate/SavedStateRegistry;)V

    #@12
    :cond_12
    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->recreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

    #@14
    const/4 v0, 0x0

    #@15
    :try_start_15
    new-array v0, v0, [Ljava/lang/Class;

    #@17
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_1a} :catch_2b

    #@1a
    .line 190
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->recreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

    #@1c
    if-eqz v0, :cond_2a

    #@1e
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    const-string v1, "clazz.name"

    #@24
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@27
    invoke-virtual {v0, p1}, Landroidx/savedstate/Recreator$SavedStateProvider;->add(Ljava/lang/String;)V

    #@2a
    :cond_2a
    return-void

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2e
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    const-string v3, "Class "

    #@32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p1

    #@3d
    const-string v2, " must have default constructor in order to be automatically recreated"

    #@3f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object p1

    #@47
    .line 187
    check-cast v0, Ljava/lang/Throwable;

    #@49
    .line 185
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v1

    #@4d
    .line 180
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@4f
    const-string v0, "Can not perform this action after onSaveInstanceState"

    #@51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@58
    throw p1
.end method

.method public final setAllowingSavingState$savedstate_release(Z)V
    .registers 2

    #@0
    .line 48
    iput-boolean p1, p0, Landroidx/savedstate/SavedStateRegistry;->isAllowingSavingState:Z

    #@2
    return-void
.end method

.method public final unregisterSavedStateProvider(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 144
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->components:Landroidx/arch/core/internal/SafeIterableMap;

    #@7
    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

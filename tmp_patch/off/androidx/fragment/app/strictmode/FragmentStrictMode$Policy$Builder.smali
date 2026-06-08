.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
.super Ljava/lang/Object;
.source "FragmentStrictMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\r\u001a\u00020\u00002\u000e\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000b2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000bH\u0007J \u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000bH\u0007J\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0000H\u0007J\u0008\u0010\u0014\u001a\u00020\u0000H\u0007J\u0008\u0010\u0015\u001a\u00020\u0000H\u0007J\u0008\u0010\u0016\u001a\u00020\u0000H\u0007J\u0008\u0010\u0017\u001a\u00020\u0000H\u0007J\u0008\u0010\u0018\u001a\u00020\u0000H\u0007J\u0008\u0010\u0019\u001a\u00020\u0000H\u0007J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0008\u0010\u001b\u001a\u00020\u0000H\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\n\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000b0\u00040\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;",
        "",
        "()V",
        "flags",
        "",
        "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
        "listener",
        "Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;",
        "mAllowedViolations",
        "",
        "",
        "Ljava/lang/Class;",
        "Landroidx/fragment/app/strictmode/Violation;",
        "allowViolation",
        "fragmentClass",
        "Landroidx/fragment/app/Fragment;",
        "violationClass",
        "build",
        "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;",
        "detectFragmentReuse",
        "detectFragmentTagUsage",
        "detectRetainInstanceUsage",
        "detectSetUserVisibleHint",
        "detectTargetFragmentUsage",
        "detectWrongFragmentContainer",
        "penaltyDeath",
        "penaltyListener",
        "penaltyLog",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

.field private final mAllowedViolations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 331
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    check-cast v0, Ljava/util/Set;

    #@a
    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@c
    .line 334
    new-instance v0, Ljava/util/LinkedHashMap;

    #@e
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@11
    check-cast v0, Ljava/util/Map;

    #@13
    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    #@15
    return-void
.end method


# virtual methods
.method public final allowViolation(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;)",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;"
        }
    .end annotation

    #@0
    const-string v0, "fragmentClass"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "violationClass"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 428
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    const-string v0, "fragmentClassString"

    #@10
    .line 429
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->allowViolation(Ljava/lang/String;Ljava/lang/Class;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;

    #@16
    move-result-object p1

    #@17
    return-object p1
.end method

.method public final allowViolation(Ljava/lang/String;Ljava/lang/Class;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/strictmode/Violation;",
            ">;)",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;"
        }
    .end annotation

    #@0
    const-string v0, "fragmentClass"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "violationClass"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 447
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    #@c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/Set;

    #@12
    if-nez v0, :cond_1b

    #@14
    .line 449
    new-instance v0, Ljava/util/LinkedHashSet;

    #@16
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@19
    check-cast v0, Ljava/util/Set;

    #@1b
    .line 451
    :cond_1b
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e
    .line 452
    iget-object p2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    #@20
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    return-object p0
.end method

.method public final build()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .registers 5

    #@0
    .line 463
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    #@2
    if-nez v0, :cond_11

    #@4
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@6
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_11

    #@e
    .line 464
    invoke-virtual {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->penaltyLog()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;

    #@11
    .line 466
    :cond_11
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    #@13
    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@15
    iget-object v2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    #@17
    iget-object v3, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->mAllowedViolations:Ljava/util/Map;

    #@19
    invoke-direct {v0, v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Ljava/util/Map;)V

    #@1c
    return-object v0
.end method

.method public final detectFragmentReuse()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 370
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public final detectFragmentTagUsage()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 377
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public final detectRetainInstanceUsage()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 386
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public final detectSetUserVisibleHint()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 393
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_SET_USER_VISIBLE_HINT:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public final detectTargetFragmentUsage()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 403
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public final detectWrongFragmentContainer()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 413
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public final penaltyDeath()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 350
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public final penaltyListener(Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    const-string v0, "listener"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 360
    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    #@7
    return-object p0
.end method

.method public final penaltyLog()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .registers 3

    #@0
    .line 339
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    #@2
    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

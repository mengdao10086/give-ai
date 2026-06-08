.class public final Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestMultiplePermissions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "[",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,796:1\n12537#2,2:797\n8676#2,2:799\n9358#2,4:801\n11365#2:805\n11700#2,3:806\n*S KotlinDebug\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions\n*L\n182#1:797,2\n189#1:799,2\n189#1:801,4\n202#1:805\n202#1:806,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u00152%\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0003\u0012\t\u0012\u00070\u0005\u00a2\u0006\u0002\u0008\u00060\u00040\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0007J#\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0002\u0010\rJ7\u0010\u000e\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0002\u0010\u0010J&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "",
        "",
        "",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "()V",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;",
        "getSynchronousResult",
        "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;",
        "(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;",
        "parseResult",
        "resultCode",
        "",
        "intent",
        "Companion",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

.field public static final Companion:Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions$Companion;

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "androidx.activity.result.contract.extra.PERMISSIONS"

.field public static final EXTRA_PERMISSION_GRANT_RESULTS:Ljava/lang/String; = "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions$Companion;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 131
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 3

    #@0
    .line 130
    check-cast p2, [Ljava/lang/String;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string p1, "input"

    #@7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 172
    sget-object p1, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions$Companion;

    #@c
    invoke-virtual {p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions$Companion;->createIntent$activity_release([Ljava/lang/String;)Landroid/content/Intent;

    #@f
    move-result-object p1

    #@10
    return-object p1
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .registers 3

    #@0
    .line 130
    check-cast p2, [Ljava/lang/String;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "input"

    #@7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 179
    array-length v0, p2

    #@b
    const/4 v1, 0x0

    #@c
    const/4 v2, 0x1

    #@d
    if-nez v0, :cond_11

    #@f
    move v0, v2

    #@10
    goto :goto_12

    #@11
    :cond_11
    move v0, v1

    #@12
    :goto_12
    if-eqz v0, :cond_1e

    #@14
    .line 180
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    #@16
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    #@19
    move-result-object p2

    #@1a
    invoke-direct {p1, p2}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    #@1d
    return-object p1

    #@1e
    .line 797
    :cond_1e
    array-length v0, p2

    #@1f
    move v3, v1

    #@20
    :goto_20
    if-ge v3, v0, :cond_34

    #@22
    aget-object v4, p2, v3

    #@24
    .line 183
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_2c

    #@2a
    move v4, v2

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v4, v1

    #@2d
    :goto_2d
    if-nez v4, :cond_31

    #@2f
    move p1, v1

    #@30
    goto :goto_35

    #@31
    :cond_31
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_20

    #@34
    :cond_34
    move p1, v2

    #@35
    :goto_35
    if-eqz p1, :cond_6a

    #@37
    .line 799
    array-length p1, p2

    #@38
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    #@3b
    move-result p1

    #@3c
    const/16 v0, 0x10

    #@3e
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    #@41
    move-result p1

    #@42
    .line 800
    new-instance v0, Ljava/util/LinkedHashMap;

    #@44
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@47
    check-cast v0, Ljava/util/Map;

    #@49
    .line 801
    array-length p1, p2

    #@4a
    :goto_4a
    if-ge v1, p1, :cond_64

    #@4c
    aget-object v3, p2, v1

    #@4e
    .line 189
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@51
    move-result-object v4

    #@52
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_4a

    #@64
    :cond_64
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    #@66
    invoke-direct {p1, v0}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    const/4 p1, 0x0

    #@6b
    :goto_6b
    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 3

    #@0
    .line 130
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->parseResult(ILandroid/content/Intent;)Ljava/util/Map;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_8

    #@3
    .line 197
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    #@6
    move-result-object p1

    #@7
    return-object p1

    #@8
    :cond_8
    if-nez p2, :cond_f

    #@a
    .line 198
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    :cond_f
    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    #@11
    .line 199
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    const-string v0, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    #@17
    .line 200
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    #@1a
    move-result-object p2

    #@1b
    if-eqz p2, :cond_53

    #@1d
    if-nez p1, :cond_20

    #@1f
    goto :goto_53

    #@20
    .line 805
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    #@22
    array-length v1, p2

    #@23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@26
    check-cast v0, Ljava/util/Collection;

    #@28
    .line 806
    array-length v1, p2

    #@29
    const/4 v2, 0x0

    #@2a
    move v3, v2

    #@2b
    :goto_2b
    if-ge v3, v1, :cond_3e

    #@2d
    aget v4, p2, v3

    #@2f
    if-nez v4, :cond_33

    #@31
    const/4 v4, 0x1

    #@32
    goto :goto_34

    #@33
    :cond_33
    move v4, v2

    #@34
    .line 203
    :goto_34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@37
    move-result-object v4

    #@38
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@3b
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_2b

    #@3e
    .line 808
    :cond_3e
    check-cast v0, Ljava/util/List;

    #@40
    .line 205
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    #@43
    move-result-object p1

    #@44
    check-cast p1, Ljava/lang/Iterable;

    #@46
    check-cast v0, Ljava/lang/Iterable;

    #@48
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    #@4b
    move-result-object p1

    #@4c
    check-cast p1, Ljava/lang/Iterable;

    #@4e
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    #@51
    move-result-object p1

    #@52
    return-object p1

    #@53
    .line 201
    :cond_53
    :goto_53
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    #@56
    move-result-object p1

    #@57
    return-object p1
.end method

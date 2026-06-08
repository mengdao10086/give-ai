.class public final Landroidx/lifecycle/SavedStateHandle$Companion;
.super Ljava/lang/Object;
.source "SavedStateHandle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0007R \u0010\u0003\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/lifecycle/SavedStateHandle$Companion;",
        "",
        "()V",
        "ACCEPTABLE_CLASSES",
        "",
        "Ljava/lang/Class;",
        "[Ljava/lang/Class;",
        "KEYS",
        "",
        "VALUES",
        "createHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "restoredState",
        "Landroid/os/Bundle;",
        "defaultState",
        "validateValue",
        "",
        "value",
        "lifecycle-viewmodel-savedstate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandle$Companion;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    if-nez p1, :cond_39

    #@2
    if-nez p2, :cond_a

    #@4
    .line 360
    new-instance p1, Landroidx/lifecycle/SavedStateHandle;

    #@6
    invoke-direct {p1}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    #@9
    goto :goto_38

    #@a
    .line 362
    :cond_a
    new-instance p1, Ljava/util/HashMap;

    #@c
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    #@f
    check-cast p1, Ljava/util/Map;

    #@11
    .line 363
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_32

    #@1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/String;

    #@25
    const-string v2, "key"

    #@27
    .line 364
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@2a
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    goto :goto_19

    #@32
    .line 366
    :cond_32
    new-instance p2, Landroidx/lifecycle/SavedStateHandle;

    #@34
    invoke-direct {p2, p1}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    #@37
    move-object p1, p2

    #@38
    :goto_38
    return-object p1

    #@39
    :cond_39
    const-string p2, "keys"

    #@3b
    .line 373
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@3e
    move-result-object p2

    #@3f
    const-string v0, "values"

    #@41
    .line 374
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@44
    move-result-object p1

    #@45
    const/4 v0, 0x0

    #@46
    if-eqz p2, :cond_56

    #@48
    if-eqz p1, :cond_56

    #@4a
    .line 375
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v1

    #@4e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@51
    move-result v2

    #@52
    if-ne v1, v2, :cond_56

    #@54
    const/4 v1, 0x1

    #@55
    goto :goto_57

    #@56
    :cond_56
    move v1, v0

    #@57
    :goto_57
    if-eqz v1, :cond_86

    #@59
    .line 378
    new-instance v1, Ljava/util/LinkedHashMap;

    #@5b
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@5e
    check-cast v1, Ljava/util/Map;

    #@60
    .line 379
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@63
    move-result v2

    #@64
    :goto_64
    if-ge v0, v2, :cond_80

    #@66
    .line 380
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v3

    #@6a
    if-eqz v3, :cond_78

    #@6c
    check-cast v3, Ljava/lang/String;

    #@6e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v4

    #@72
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    add-int/lit8 v0, v0, 0x1

    #@77
    goto :goto_64

    #@78
    :cond_78
    new-instance p1, Ljava/lang/NullPointerException;

    #@7a
    const-string p2, "null cannot be cast to non-null type kotlin.String"

    #@7c
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7f
    throw p1

    #@80
    .line 382
    :cond_80
    new-instance p1, Landroidx/lifecycle/SavedStateHandle;

    #@82
    invoke-direct {p1, v1}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    #@85
    return-object p1

    #@86
    .line 375
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    #@88
    const-string p2, "Invalid bundle passed as restored state"

    #@8a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8d
    move-result-object p2

    #@8e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@91
    throw p1
.end method

.method public final validateValue(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 393
    :cond_4
    # getter for: Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;
    invoke-static {}, Landroidx/lifecycle/SavedStateHandle;->access$getACCEPTABLE_CLASSES$cp()[Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    array-length v2, v1

    #@9
    const/4 v3, 0x0

    #@a
    move v4, v3

    #@b
    :goto_b
    if-ge v4, v2, :cond_1c

    #@d
    aget-object v5, v1, v4

    #@f
    .line 394
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@12
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_19

    #@18
    return v0

    #@19
    :cond_19
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_b

    #@1c
    :cond_1c
    return v3
.end method

.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# static fields
.field static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 34
    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    #@2
    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    #@5
    .line 35
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    #@7
    .line 37
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    #@d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_7

    #@2
    .line 94
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    #@5
    move-result-object p0

    #@6
    goto :goto_b

    #@7
    .line 95
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    #@a
    move-result-object p0

    #@b
    :goto_b
    if-eqz p0, :cond_41

    #@d
    .line 97
    new-instance p1, Ljava/util/ArrayList;

    #@f
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 98
    new-instance p2, Ljava/util/ArrayList;

    #@14
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    #@17
    const/4 v0, 0x0

    #@18
    if-nez p3, :cond_1c

    #@1a
    move v1, v0

    #@1b
    goto :goto_20

    #@1c
    .line 99
    :cond_1c
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    #@1f
    move-result v1

    #@20
    :goto_20
    if-ge v0, v1, :cond_37

    #@22
    .line 101
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/String;

    #@28
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 102
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/view/View;

    #@31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_20

    #@37
    :cond_37
    const/4 p3, 0x0

    #@38
    if-eqz p4, :cond_3e

    #@3a
    .line 105
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@3d
    goto :goto_41

    #@3e
    .line 107
    :cond_3e
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@41
    :cond_41
    :goto_41
    return-void
.end method

.method static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 55
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1b

    #@7
    .line 57
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_18

    #@11
    .line 58
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@14
    move-result-object p0

    #@15
    check-cast p0, Ljava/lang/String;

    #@17
    return-object p0

    #@18
    :cond_18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    const/4 p0, 0x0

    #@1c
    return-object p0
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 3

    #@0
    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    #@2
    .line 42
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    new-array v2, v1, [Ljava/lang/Class;

    #@9
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@c
    move-result-object v0

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    #@15
    return-object v0

    #@16
    :catch_16
    const/4 v0, 0x0

    #@17
    return-object v0
.end method

.method static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 71
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_1a

    #@8
    .line 72
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    .line 73
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_17

    #@14
    .line 74
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@17
    :cond_17
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 119
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    :goto_9
    if-ltz v0, :cond_17

    #@b
    .line 120
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/View;

    #@11
    .line 121
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_9

    #@17
    :cond_17
    return-void
.end method

.method static supportsTransition()Z
    .registers 1

    #@0
    .line 126
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    #@2
    if-nez v0, :cond_b

    #@4
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 v0, 0x1

    #@c
    :goto_c
    return v0
.end method

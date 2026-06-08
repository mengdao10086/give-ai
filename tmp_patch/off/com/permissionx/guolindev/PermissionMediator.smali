.class public final Lcom/permissionx/guolindev/PermissionMediator;
.super Ljava/lang/Object;
.source "PermissionMediator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001f\u0010\u0008\u001a\u00020\t2\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n\"\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\rR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/permissionx/guolindev/PermissionMediator;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "permissions",
        "Lcom/permissionx/guolindev/request/PermissionBuilder;",
        "",
        "",
        "([Ljava/lang/String;)Lcom/permissionx/guolindev/request/PermissionBuilder;",
        "",
        "permissionx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private activity:Landroidx/fragment/app/FragmentActivity;

.field private fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    #@0
    const-string v0, "fragment"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 43
    iput-object p1, p0, Lcom/permissionx/guolindev/PermissionMediator;->fragment:Landroidx/fragment/app/Fragment;

    #@a
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    #@0
    const-string v0, "activity"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 39
    iput-object p1, p0, Lcom/permissionx/guolindev/PermissionMediator;->activity:Landroidx/fragment/app/FragmentActivity;

    #@a
    return-void
.end method


# virtual methods
.method public final permissions(Ljava/util/List;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/permissionx/guolindev/request/PermissionBuilder;"
        }
    .end annotation

    #@0
    const-string v0, "permissions"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@a
    .line 54
    new-instance v1, Ljava/util/LinkedHashSet;

    #@c
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@f
    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@11
    .line 56
    iget-object v3, p0, Lcom/permissionx/guolindev/PermissionMediator;->activity:Landroidx/fragment/app/FragmentActivity;

    #@13
    if-eqz v3, :cond_1f

    #@15
    .line 57
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@18
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@1b
    move-result-object v3

    #@1c
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1e
    goto :goto_2e

    #@1f
    .line 59
    :cond_1f
    iget-object v3, p0, Lcom/permissionx/guolindev/PermissionMediator;->fragment:Landroidx/fragment/app/Fragment;

    #@21
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@24
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2b
    move-result-object v3

    #@2c
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2e
    .line 61
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object p1

    #@32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_50

    #@38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljava/lang/String;

    #@3e
    .line 62
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getAllSpecialPermissions()Ljava/util/Set;

    #@41
    move-result-object v5

    #@42
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_4c

    #@48
    .line 63
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_32

    #@4c
    .line 65
    :cond_4c
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_32

    #@50
    :cond_50
    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    #@52
    .line 68
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_68

    #@58
    const/16 v4, 0x1d

    #@5a
    if-eq v2, v4, :cond_62

    #@5c
    const/16 v4, 0x1e

    #@5e
    if-ne v2, v4, :cond_68

    #@60
    if-ge v3, v4, :cond_68

    #@62
    .line 73
    :cond_62
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@65
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@68
    :cond_68
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    #@6a
    .line 77
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_7c

    #@70
    const/16 v4, 0x21

    #@72
    if-lt v2, v4, :cond_7c

    #@74
    if-lt v3, v4, :cond_7c

    #@76
    .line 81
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@79
    .line 82
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@7c
    .line 85
    :cond_7c
    new-instance p1, Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@7e
    iget-object v2, p0, Lcom/permissionx/guolindev/PermissionMediator;->activity:Landroidx/fragment/app/FragmentActivity;

    #@80
    iget-object v3, p0, Lcom/permissionx/guolindev/PermissionMediator;->fragment:Landroidx/fragment/app/Fragment;

    #@82
    check-cast v0, Ljava/util/Set;

    #@84
    check-cast v1, Ljava/util/Set;

    #@86
    invoke-direct {p1, v2, v3, v0, v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V

    #@89
    return-object p1
.end method

.method public final varargs permissions([Ljava/lang/String;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .registers 3

    #@0
    const-string v0, "permissions"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 95
    array-length v0, p1

    #@6
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p0, p1}, Lcom/permissionx/guolindev/PermissionMediator;->permissions(Ljava/util/List;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@11
    move-result-object p1

    #@12
    return-object p1
.end method

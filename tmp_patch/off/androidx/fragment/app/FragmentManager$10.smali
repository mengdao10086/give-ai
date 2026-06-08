.class Landroidx/fragment/app/FragmentManager$10;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManager;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    #@0
    .line 2732
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$10;->this$0:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 2732
    check-cast p1, Ljava/util/Map;

    #@2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager$10;->onActivityResult(Ljava/util/Map;)V

    #@5
    return-void
.end method

.method public onActivityResult(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 2736
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    new-array v2, v1, [Ljava/lang/String;

    #@7
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/lang/String;

    #@d
    .line 2737
    new-instance v2, Ljava/util/ArrayList;

    #@f
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@12
    move-result-object p1

    #@13
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    .line 2738
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@19
    move-result p1

    #@1a
    new-array p1, p1, [I

    #@1c
    move v3, v1

    #@1d
    .line 2739
    :goto_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v4

    #@21
    if-ge v3, v4, :cond_37

    #@23
    .line 2740
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljava/lang/Boolean;

    #@29
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_31

    #@2f
    move v4, v1

    #@30
    goto :goto_32

    #@31
    :cond_31
    const/4 v4, -0x1

    #@32
    .line 2742
    :goto_32
    aput v4, p1, v3

    #@34
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_1d

    #@37
    .line 2744
    :cond_37
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$10;->this$0:Landroidx/fragment/app/FragmentManager;

    #@39
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    #@3b
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    #@41
    const-string v2, "FragmentManager"

    #@43
    if-nez v1, :cond_58

    #@45
    .line 2746
    new-instance p1, Ljava/lang/StringBuilder;

    #@47
    const-string v0, "No permissions were requested for "

    #@49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object p1

    #@50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object p1

    #@54
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    return-void

    #@58
    .line 2749
    :cond_58
    iget-object v3, v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    #@5a
    .line 2750
    iget v1, v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    #@5c
    .line 2751
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager$10;->this$0:Landroidx/fragment/app/FragmentManager;

    #@5e
    # getter for: Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->access$200(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentStore;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@65
    move-result-object v4

    #@66
    if-nez v4, :cond_7b

    #@68
    .line 2756
    new-instance p1, Ljava/lang/StringBuilder;

    #@6a
    const-string v0, "Permission request result delivered for unknown Fragment "

    #@6c
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6f
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object p1

    #@73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object p1

    #@77
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    return-void

    #@7b
    .line 2760
    :cond_7b
    invoke-virtual {v4, v1, v0, p1}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@7e
    return-void
.end method

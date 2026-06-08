.class Landroidx/fragment/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/BackStackRecordState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 88
    new-instance v0, Landroidx/fragment/app/BackStackState$1;

    #@2
    invoke-direct {v0}, Landroidx/fragment/app/BackStackState$1;-><init>()V

    #@5
    sput-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    #@9
    .line 43
    sget-object v0, Landroidx/fragment/app/BackStackRecordState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Landroidx/fragment/app/BackStackState;->mTransactions:Ljava/util/List;

    #@11
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/BackStackRecordState;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    #@5
    .line 38
    iput-object p2, p0, Landroidx/fragment/app/BackStackState;->mTransactions:Ljava/util/List;

    #@7
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method instantiate(Landroidx/fragment/app/FragmentManager;Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation

    #@0
    .line 51
    new-instance v0, Ljava/util/HashMap;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@b
    .line 52
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    #@d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_50

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/lang/String;

    #@1d
    .line 53
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@23
    if-eqz v3, :cond_2b

    #@25
    .line 57
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    goto :goto_11

    #@2b
    .line 61
    :cond_2b
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentStore()Landroidx/fragment/app/FragmentStore;

    #@2e
    move-result-object v3

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    #@33
    move-result-object v2

    #@34
    if-eqz v2, :cond_11

    #@36
    .line 63
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    #@39
    move-result-object v3

    #@3a
    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@45
    move-result-object v4

    #@46
    .line 63
    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;

    #@49
    move-result-object v2

    #@4a
    .line 65
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    #@4c
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    goto :goto_11

    #@50
    .line 70
    :cond_50
    new-instance p2, Ljava/util/ArrayList;

    #@52
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    #@55
    .line 71
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->mTransactions:Ljava/util/List;

    #@57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v1

    #@5b
    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_6f

    #@61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v2

    #@65
    check-cast v2, Landroidx/fragment/app/BackStackRecordState;

    #@67
    .line 72
    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/BackStackRecordState;->instantiate(Landroidx/fragment/app/FragmentManager;Ljava/util/Map;)Landroidx/fragment/app/BackStackRecord;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    goto :goto_5b

    #@6f
    :cond_6f
    return-object p2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 84
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    #@2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@5
    .line 85
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->mTransactions:Ljava/util/List;

    #@7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a
    return-void
.end method

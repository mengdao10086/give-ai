.class public final Landroidx/lifecycle/SavedStateHandle;
.super Ljava/lang/Object;
.source "SavedStateHandle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;,
        Landroidx/lifecycle/SavedStateHandle$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavedStateHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n357#2,3:443\n360#2,4:447\n1#3:446\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n*L\n197#1:443,3\n197#1:447,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\t\u0018\u0000 *2\u00020\u0001:\u0002*+B\u001d\u0008\u0016\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0011\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0004H\u0087\u0002J\u001e\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0012\u001a\u00020\u0004H\u0087\u0002\u00a2\u0006\u0002\u0010\u0017J\u001c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0019\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J)\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0019\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u0002H\u0016H\u0007\u00a2\u0006\u0002\u0010\u001bJ1\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0019\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u0002H\u0016H\u0002\u00a2\u0006\u0002\u0010\u001eJ)\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00160 \"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u0002H\u0016H\u0007\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00040#H\u0007J\u001d\u0010$\u001a\u0004\u0018\u0001H\u0016\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0012\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\r\u001a\u00020\u000eH\u0007J&\u0010%\u001a\u00020\u0011\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0012\u001a\u00020\u00042\u0008\u0010&\u001a\u0004\u0018\u0001H\u0016H\u0087\u0002\u00a2\u0006\u0002\u0010\'J\u0018\u0010(\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u000eH\u0007R\"\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/lifecycle/SavedStateHandle;",
        "",
        "initialState",
        "",
        "",
        "(Ljava/util/Map;)V",
        "()V",
        "flows",
        "",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "liveDatas",
        "Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;",
        "regular",
        "savedStateProvider",
        "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
        "savedStateProviders",
        "clearSavedStateProvider",
        "",
        "key",
        "contains",
        "",
        "get",
        "T",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "getLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "initialValue",
        "(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;",
        "getLiveDataInternal",
        "hasInitialValue",
        "(Ljava/lang/String;ZLjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;",
        "getStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;",
        "keys",
        "",
        "remove",
        "set",
        "value",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "setSavedStateProvider",
        "provider",
        "Companion",
        "SavingStateLiveData",
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


# static fields
.field private static final ACCEPTABLE_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/lifecycle/SavedStateHandle$Companion;

.field private static final KEYS:Ljava/lang/String; = "keys"

.field private static final VALUES:Ljava/lang/String; = "values"


# instance fields
.field private final flows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final liveDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final regular:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

.field private final savedStateProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$85q68529u9GpNelrug3JBSyWf4c(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;
    .registers 1

    #@0
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider$lambda-0(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Landroidx/lifecycle/SavedStateHandle$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroidx/lifecycle/SavedStateHandle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Landroidx/lifecycle/SavedStateHandle;->Companion:Landroidx/lifecycle/SavedStateHandle$Companion;

    #@8
    const/16 v0, 0x1d

    #@a
    new-array v0, v0, [Ljava/lang/Class;

    #@c
    const/4 v1, 0x0

    #@d
    .line 403
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x1

    #@12
    const-class v2, [Z

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x2

    #@17
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x3

    #@1c
    const-class v2, [D

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x4

    #@21
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@23
    aput-object v2, v0, v1

    #@25
    const/4 v1, 0x5

    #@26
    const-class v2, [I

    #@28
    aput-object v2, v0, v1

    #@2a
    const/4 v1, 0x6

    #@2b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2d
    aput-object v2, v0, v1

    #@2f
    const/4 v1, 0x7

    #@30
    const-class v2, [J

    #@32
    aput-object v2, v0, v1

    #@34
    const/16 v1, 0x8

    #@36
    const-class v2, Ljava/lang/String;

    #@38
    aput-object v2, v0, v1

    #@3a
    const/16 v1, 0x9

    #@3c
    const-class v2, [Ljava/lang/String;

    #@3e
    aput-object v2, v0, v1

    #@40
    const/16 v1, 0xa

    #@42
    const-class v2, Landroid/os/Binder;

    #@44
    aput-object v2, v0, v1

    #@46
    const/16 v1, 0xb

    #@48
    const-class v2, Landroid/os/Bundle;

    #@4a
    aput-object v2, v0, v1

    #@4c
    const/16 v1, 0xc

    #@4e
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@50
    aput-object v2, v0, v1

    #@52
    const/16 v1, 0xd

    #@54
    const-class v2, [B

    #@56
    aput-object v2, v0, v1

    #@58
    const/16 v1, 0xe

    #@5a
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@5c
    aput-object v2, v0, v1

    #@5e
    const/16 v1, 0xf

    #@60
    const-class v2, [C

    #@62
    aput-object v2, v0, v1

    #@64
    const/16 v1, 0x10

    #@66
    const-class v2, Ljava/lang/CharSequence;

    #@68
    aput-object v2, v0, v1

    #@6a
    const/16 v1, 0x11

    #@6c
    const-class v2, [Ljava/lang/CharSequence;

    #@6e
    aput-object v2, v0, v1

    #@70
    const/16 v1, 0x12

    #@72
    const-class v2, Ljava/util/ArrayList;

    #@74
    aput-object v2, v0, v1

    #@76
    const/16 v1, 0x13

    #@78
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@7a
    aput-object v2, v0, v1

    #@7c
    const/16 v1, 0x14

    #@7e
    const-class v2, [F

    #@80
    aput-object v2, v0, v1

    #@82
    const/16 v1, 0x15

    #@84
    const-class v2, Landroid/os/Parcelable;

    #@86
    aput-object v2, v0, v1

    #@88
    const/16 v1, 0x16

    #@8a
    const-class v2, [Landroid/os/Parcelable;

    #@8c
    aput-object v2, v0, v1

    #@8e
    const/16 v1, 0x17

    #@90
    const-class v2, Ljava/io/Serializable;

    #@92
    aput-object v2, v0, v1

    #@94
    const/16 v1, 0x18

    #@96
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@98
    aput-object v2, v0, v1

    #@9a
    const/16 v1, 0x19

    #@9c
    const-class v2, [S

    #@9e
    aput-object v2, v0, v1

    #@a0
    const/16 v1, 0x1a

    #@a2
    const-class v2, Landroid/util/SparseArray;

    #@a4
    aput-object v2, v0, v1

    #@a6
    .line 431
    const-class v1, Landroid/util/Size;

    #@a8
    const/16 v2, 0x1b

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 435
    const-class v1, Landroid/util/SizeF;

    #@ae
    const/16 v2, 0x1c

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 402
    sput-object v0, Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;

    #@b4
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    check-cast v0, Ljava/util/Map;

    #@a
    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@c
    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    #@e
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@11
    check-cast v0, Ljava/util/Map;

    #@13
    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    #@15
    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    #@17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@1a
    check-cast v0, Ljava/util/Map;

    #@1c
    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    #@1e
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    #@20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@23
    check-cast v0, Ljava/util/Map;

    #@25
    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    #@27
    .line 55
    new-instance v0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;

    #@29
    invoke-direct {v0, p0}, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    #@2c
    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    #@2e
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "initialState"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@d
    check-cast v0, Ljava/util/Map;

    #@f
    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@11
    .line 51
    new-instance v1, Ljava/util/LinkedHashMap;

    #@13
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@16
    check-cast v1, Ljava/util/Map;

    #@18
    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    #@1a
    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    #@1c
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@1f
    check-cast v1, Ljava/util/Map;

    #@21
    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    #@23
    .line 53
    new-instance v1, Ljava/util/LinkedHashMap;

    #@25
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@28
    check-cast v1, Ljava/util/Map;

    #@2a
    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    #@2c
    .line 55
    new-instance v1, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;

    #@2e
    invoke-direct {v1, p0}, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    #@31
    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    #@33
    .line 80
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@36
    return-void
.end method

.method public static final synthetic access$getACCEPTABLE_CLASSES$cp()[Ljava/lang/Class;
    .registers 1

    #@0
    .line 49
    sget-object v0, Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public static final synthetic access$getFlows$p(Landroidx/lifecycle/SavedStateHandle;)Ljava/util/Map;
    .registers 1

    #@0
    .line 49
    iget-object p0, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getRegular$p(Landroidx/lifecycle/SavedStateHandle;)Ljava/util/Map;
    .registers 1

    #@0
    .line 49
    iget-object p0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@2
    return-object p0
.end method

.method public static final createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    sget-object v0, Landroidx/lifecycle/SavedStateHandle;->Companion:Landroidx/lifecycle/SavedStateHandle$Companion;

    #@2
    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/SavedStateHandle$Companion;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method private final getLiveDataInternal(Ljava/lang/String;ZLjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ZTT;)",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 157
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    instance-of v1, v0, Landroidx/lifecycle/MutableLiveData;

    #@8
    if-eqz v1, :cond_d

    #@a
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    if-eqz v0, :cond_11

    #@10
    return-object v0

    #@11
    .line 162
    :cond_11
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@13
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_25

    #@19
    .line 164
    new-instance p2, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;

    #@1b
    iget-object p3, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@1d
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object p3

    #@21
    invoke-direct {p2, p0, p1, p3}, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;Ljava/lang/Object;)V

    #@24
    goto :goto_37

    #@25
    :cond_25
    if-eqz p2, :cond_32

    #@27
    .line 166
    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@29
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 167
    new-instance p2, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;

    #@2e
    invoke-direct {p2, p0, p1, p3}, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;Ljava/lang/Object;)V

    #@31
    goto :goto_37

    #@32
    .line 169
    :cond_32
    new-instance p2, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;

    #@34
    invoke-direct {p2, p0, p1}, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;)V

    #@37
    .line 171
    :goto_37
    iget-object p3, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    #@39
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 172
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    #@3e
    return-object p2
.end method

.method private static final savedStateProvider$lambda-0(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;
    .registers 6

    #@0
    const-string v0, "this$0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 58
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    #@7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    .line 59
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_33

    #@19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/util/Map$Entry;

    #@1f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/String;

    #@25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    #@2b
    .line 60
    invoke-interface {v1}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    #@2e
    move-result-object v1

    #@2f
    .line 61
    invoke-virtual {p0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@32
    goto :goto_13

    #@33
    .line 64
    :cond_33
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@35
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@38
    move-result-object v0

    #@39
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    #@3b
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@3e
    move-result v2

    #@3f
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@42
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    #@44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v3

    #@48
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@4b
    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v0

    #@4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_68

    #@55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v3

    #@59
    check-cast v3, Ljava/lang/String;

    #@5b
    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    .line 69
    iget-object v4, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@60
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_4f

    #@68
    :cond_68
    const/4 p0, 0x2

    #@69
    new-array p0, p0, [Lkotlin/Pair;

    #@6b
    const-string v0, "keys"

    #@6d
    .line 71
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@70
    move-result-object v0

    #@71
    const/4 v1, 0x0

    #@72
    aput-object v0, p0, v1

    #@74
    const-string v0, "values"

    #@76
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    #@79
    move-result-object v0

    #@7a
    const/4 v1, 0x1

    #@7b
    aput-object v0, p0, v1

    #@7d
    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    #@80
    move-result-object p0

    #@81
    return-object p0
.end method


# virtual methods
.method public final clearSavedStateProvider(Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 320
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .registers 3

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 100
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 224
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public final getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;"
        }
    .end annotation

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 v0, 0x0

    #@6
    const/4 v1, 0x0

    #@7
    .line 113
    invoke-direct {p0, p1, v0, v1}, Landroidx/lifecycle/SavedStateHandle;->getLiveDataInternal(Ljava/lang/String;ZLjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public final getLiveData(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;"
        }
    .end annotation

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 v0, 0x1

    #@6
    .line 148
    invoke-direct {p0, p1, v0, p2}, Landroidx/lifecycle/SavedStateHandle;->getLiveDataInternal(Ljava/lang/String;ZLjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method public final getStateFlow(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TT;>;"
        }
    .end annotation

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 197
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    #@7
    .line 443
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_2c

    #@d
    .line 200
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@f
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1a

    #@15
    .line 201
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@17
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 203
    :cond_1a
    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@1c
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object p2

    #@20
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    #@23
    move-result-object v1

    #@24
    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    #@26
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 447
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 444
    :cond_2c
    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    #@2e
    .line 204
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    #@31
    move-result-object p1

    #@32
    return-object p1
.end method

.method public final keys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 214
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/Iterable;

    #@e
    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    #@14
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/Iterable;

    #@1a
    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 271
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 272
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    #@d
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;

    #@13
    if-eqz v1, :cond_18

    #@15
    .line 273
    invoke-virtual {v1}, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->detach()V

    #@18
    .line 274
    :cond_18
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    #@1a
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    return-object v0
.end method

.method public final savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .registers 2

    #@0
    .line 90
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    #@2
    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    #@0
    const-string v0, "key"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 240
    sget-object v0, Landroidx/lifecycle/SavedStateHandle;->Companion:Landroidx/lifecycle/SavedStateHandle$Companion;

    #@7
    invoke-virtual {v0, p2}, Landroidx/lifecycle/SavedStateHandle$Companion;->validateValue(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_35

    #@d
    .line 246
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    instance-of v1, v0, Landroidx/lifecycle/MutableLiveData;

    #@15
    if-eqz v1, :cond_1a

    #@17
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    :goto_1b
    if-eqz v0, :cond_21

    #@1d
    .line 249
    invoke-virtual {v0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    #@20
    goto :goto_26

    #@21
    .line 251
    :cond_21
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    #@23
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 253
    :goto_26
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    #@28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object p1

    #@2c
    check-cast p1, Lkotlinx/coroutines/flow/MutableStateFlow;

    #@2e
    if-nez p1, :cond_31

    #@30
    goto :goto_34

    #@31
    :cond_31
    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    #@34
    :goto_34
    return-void

    #@35
    .line 241
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@37
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    #@39
    const-string v1, "Can\'t put value with type "

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3e
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@44
    move-result-object p2

    #@45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object p2

    #@49
    const-string v0, " into saved state"

    #@4b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object p2

    #@4f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object p2

    #@53
    .line 241
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw p1
.end method

.method public final setSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
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
    .line 306
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    #@c
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    return-void
.end method

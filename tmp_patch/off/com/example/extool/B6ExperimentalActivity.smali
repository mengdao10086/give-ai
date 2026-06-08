.class public final Lcom/example/extool/B6ExperimentalActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "B6ExperimentalActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nB6ExperimentalActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 B6ExperimentalActivity.kt\ncom/example/extool/B6ExperimentalActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,69:1\n75#2,13:70\n*S KotlinDebug\n*F\n+ 1 B6ExperimentalActivity.kt\ncom/example/extool/B6ExperimentalActivity\n*L\n18#1:70,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0008\u0010\u000f\u001a\u00020\u000cH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/example/extool/B6ExperimentalActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "binding",
        "Lcom/example/extool/databinding/ActivityExperimentalB6Binding;",
        "viewModel",
        "Lcom/example/extool/WaspWingViewModel;",
        "getViewModel",
        "()Lcom/example/extool/WaspWingViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "exTool_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private binding:Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$9unseIyjPdTPVD_2QGLTDxUSjag(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/example/extool/B6ExperimentalActivity;->onCreate$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$_-ilCIxV9Q4qRVYxuwpObGgceOg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/example/extool/B6ExperimentalActivity;->onCreate$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$diGEsijTsVN5J-x4z7i5_KxWoVA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/example/extool/B6ExperimentalActivity;->onCreate$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    #@0
    const v0, 0x7f0b001c

    #@3
    .line 16
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    #@6
    .line 18
    move-object v0, p0

    #@7
    check-cast v0, Landroidx/activity/ComponentActivity;

    #@9
    .line 74
    new-instance v1, Lcom/example/extool/B6ExperimentalActivity$special$$inlined$viewModels$default$1;

    #@b
    invoke-direct {v1, v0}, Lcom/example/extool/B6ExperimentalActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    #@e
    check-cast v1, Lkotlin/jvm/functions/Function0;

    #@10
    .line 78
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    #@12
    const-class v3, Lcom/example/extool/WaspWingViewModel;

    #@14
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    #@17
    move-result-object v3

    #@18
    .line 80
    new-instance v4, Lcom/example/extool/B6ExperimentalActivity$special$$inlined$viewModels$default$2;

    #@1a
    invoke-direct {v4, v0}, Lcom/example/extool/B6ExperimentalActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    #@1d
    check-cast v4, Lkotlin/jvm/functions/Function0;

    #@1f
    .line 82
    new-instance v5, Lcom/example/extool/B6ExperimentalActivity$special$$inlined$viewModels$default$3;

    #@21
    const/4 v6, 0x0

    #@22
    invoke-direct {v5, v6, v0}, Lcom/example/extool/B6ExperimentalActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    #@25
    check-cast v5, Lkotlin/jvm/functions/Function0;

    #@27
    .line 78
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    #@2a
    check-cast v2, Lkotlin/Lazy;

    #@2c
    .line 18
    iput-object v2, p0, Lcom/example/extool/B6ExperimentalActivity;->viewModel$delegate:Lkotlin/Lazy;

    #@2e
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/example/extool/B6ExperimentalActivity;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    .registers 1

    #@0
    .line 16
    iget-object p0, p0, Lcom/example/extool/B6ExperimentalActivity;->binding:Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/example/extool/B6ExperimentalActivity;)Lcom/example/extool/WaspWingViewModel;
    .registers 1

    #@0
    .line 16
    invoke-direct {p0}, Lcom/example/extool/B6ExperimentalActivity;->getViewModel()Lcom/example/extool/WaspWingViewModel;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private final getViewModel()Lcom/example/extool/WaspWingViewModel;
    .registers 2

    #@0
    .line 18
    iget-object v0, p0, Lcom/example/extool/B6ExperimentalActivity;->viewModel$delegate:Lkotlin/Lazy;

    #@2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/example/extool/WaspWingViewModel;

    #@8
    return-object v0
.end method

.method private static final onCreate$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 24
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method

.method private static final onCreate$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 27
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method

.method private static final onCreate$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    #@0
    const-string v0, "$tmp0"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 32
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 22
    move-object p1, p0

    #@4
    check-cast p1, Landroid/app/Activity;

    #@6
    const v0, 0x7f0b001c

    #@9
    invoke-static {p1, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    #@c
    move-result-object p1

    #@d
    const-string v0, "setContentView(this, R.l\u2026activity_experimental_b6)"

    #@f
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@12
    check-cast p1, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@14
    iput-object p1, p0, Lcom/example/extool/B6ExperimentalActivity;->binding:Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@16
    if-nez p1, :cond_1e

    #@18
    const-string p1, "binding"

    #@1a
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    #@1d
    const/4 p1, 0x0

    #@1e
    :cond_1e
    invoke-direct {p0}, Lcom/example/extool/B6ExperimentalActivity;->getViewModel()Lcom/example/extool/WaspWingViewModel;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p1, v0}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->setViewModel(Lcom/example/extool/WaspWingViewModel;)V

    #@25
    .line 24
    invoke-direct {p0}, Lcom/example/extool/B6ExperimentalActivity;->getViewModel()Lcom/example/extool/WaspWingViewModel;

    #@28
    move-result-object p1

    #@29
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->getWaspWingInfo()Landroidx/lifecycle/LiveData;

    #@2c
    move-result-object p1

    #@2d
    move-object v0, p0

    #@2e
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    #@30
    new-instance v1, Lcom/example/extool/B6ExperimentalActivity$onCreate$1;

    #@32
    invoke-direct {v1, p0}, Lcom/example/extool/B6ExperimentalActivity$onCreate$1;-><init>(Lcom/example/extool/B6ExperimentalActivity;)V

    #@35
    check-cast v1, Lkotlin/jvm/functions/Function1;

    #@37
    new-instance v2, Lcom/example/extool/B6ExperimentalActivity$$ExternalSyntheticLambda0;

    #@39
    invoke-direct {v2, v1}, Lcom/example/extool/B6ExperimentalActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@3c
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    #@3f
    .line 27
    invoke-direct {p0}, Lcom/example/extool/B6ExperimentalActivity;->getViewModel()Lcom/example/extool/WaspWingViewModel;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->getConnectLiveData()Landroidx/lifecycle/LiveData;

    #@46
    move-result-object p1

    #@47
    new-instance v1, Lcom/example/extool/B6ExperimentalActivity$onCreate$2;

    #@49
    invoke-direct {v1, p0}, Lcom/example/extool/B6ExperimentalActivity$onCreate$2;-><init>(Lcom/example/extool/B6ExperimentalActivity;)V

    #@4c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    #@4e
    new-instance v2, Lcom/example/extool/B6ExperimentalActivity$$ExternalSyntheticLambda1;

    #@50
    invoke-direct {v2, v1}, Lcom/example/extool/B6ExperimentalActivity$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@53
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    #@56
    .line 32
    invoke-direct {p0}, Lcom/example/extool/B6ExperimentalActivity;->getViewModel()Lcom/example/extool/WaspWingViewModel;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p1}, Lcom/example/extool/WaspWingViewModel;->getScanFailedLiveData()Landroidx/lifecycle/LiveData;

    #@5d
    move-result-object p1

    #@5e
    new-instance v1, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;

    #@60
    invoke-direct {v1, p0}, Lcom/example/extool/B6ExperimentalActivity$onCreate$3;-><init>(Lcom/example/extool/B6ExperimentalActivity;)V

    #@63
    check-cast v1, Lkotlin/jvm/functions/Function1;

    #@65
    new-instance v2, Lcom/example/extool/B6ExperimentalActivity$$ExternalSyntheticLambda2;

    #@67
    invoke-direct {v2, v1}, Lcom/example/extool/B6ExperimentalActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    #@6a
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    #@6d
    return-void
.end method

.method protected onResume()V
    .registers 3

    #@0
    .line 64
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    #@3
    .line 65
    invoke-direct {p0}, Lcom/example/extool/B6ExperimentalActivity;->getViewModel()Lcom/example/extool/WaspWingViewModel;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/example/extool/WaspWingViewModel;->getConnectLiveData()Landroidx/lifecycle/LiveData;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_21

    #@1a
    .line 66
    invoke-direct {p0}, Lcom/example/extool/B6ExperimentalActivity;->getViewModel()Lcom/example/extool/WaspWingViewModel;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/example/extool/WaspWingViewModel;->tryConnect()V

    #@21
    :cond_21
    return-void
.end method

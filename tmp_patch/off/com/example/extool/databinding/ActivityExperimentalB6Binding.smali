.class public abstract Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityExperimentalB6Binding.java"


# instance fields
.field protected mData:Lcom/flydigi/sdk/waspwing/WaspWingInfo;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mViewModel:Lcom/example/extool/WaspWingViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final rbManual:Landroid/widget/RadioButton;

.field public final rbSmart:Landroid/widget/RadioButton;

.field public final rgRunMode:Landroid/widget/RadioGroup;

.field public final sbCold:Landroid/widget/SeekBar;

.field public final sbWind:Landroid/widget/SeekBar;

.field public final tvConnectState:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 10

    #@0
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    #@3
    .line 51
    iput-object p4, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->rbManual:Landroid/widget/RadioButton;

    #@5
    .line 52
    iput-object p5, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->rbSmart:Landroid/widget/RadioButton;

    #@7
    .line 53
    iput-object p6, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->rgRunMode:Landroid/widget/RadioGroup;

    #@9
    .line 54
    iput-object p7, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->sbCold:Landroid/widget/SeekBar;

    #@b
    .line 55
    iput-object p8, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->sbWind:Landroid/widget/SeekBar;

    #@d
    .line 56
    iput-object p9, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->tvConnectState:Landroid/widget/TextView;

    #@f
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    .registers 2

    #@0
    .line 113
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const v0, 0x7f0b001c

    #@3
    .line 125
    invoke-static {p1, p0, v0}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@6
    move-result-object p0

    #@7
    check-cast p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@9
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    .registers 2

    #@0
    .line 95
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    .registers 4

    #@0
    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, p2, v0}, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const v0, 0x7f0b001c

    #@3
    .line 90
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    #@6
    move-result-object p0

    #@7
    check-cast p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@9
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/extool/databinding/ActivityExperimentalB6Binding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const v2, 0x7f0b001c

    #@5
    .line 109
    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;

    #@b
    return-object p0
.end method


# virtual methods
.method public getData()Lcom/flydigi/sdk/waspwing/WaspWingInfo;
    .registers 2

    #@0
    .line 63
    iget-object v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->mData:Lcom/flydigi/sdk/waspwing/WaspWingInfo;

    #@2
    return-object v0
.end method

.method public getViewModel()Lcom/example/extool/WaspWingViewModel;
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Lcom/example/extool/databinding/ActivityExperimentalB6Binding;->mViewModel:Lcom/example/extool/WaspWingViewModel;

    #@2
    return-object v0
.end method

.method public abstract setData(Lcom/flydigi/sdk/waspwing/WaspWingInfo;)V
.end method

.method public abstract setViewModel(Lcom/example/extool/WaspWingViewModel;)V
.end method

.class Lcom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .registers 2

    #@0
    .line 963
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7

    #@0
    .line 966
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@2
    # getter for: Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    #@9
    .line 967
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@b
    # getter for: Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    aget v0, v0, v1

    #@12
    const/4 v2, 0x0

    #@13
    if-nez v0, :cond_17

    #@15
    move v0, v1

    #@16
    goto :goto_18

    #@17
    :cond_17
    move v0, v2

    #@18
    .line 968
    :goto_18
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@1a
    # getter for: Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;
    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    #@21
    .line 969
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@23
    if-eqz v0, :cond_2d

    #@25
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->isTopInsetScrimEnabled()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2d

    #@2b
    move v0, v1

    #@2c
    goto :goto_2e

    #@2d
    :cond_2d
    move v0, v2

    #@2e
    :goto_2e
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    #@31
    .line 973
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@33
    # getter for: Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    #@36
    move-result-object v0

    #@37
    aget v0, v0, v2

    #@39
    if-eqz v0, :cond_4f

    #@3b
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@3d
    # getter for: Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    #@40
    move-result-object v0

    #@41
    aget v0, v0, v2

    #@43
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@45
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    #@48
    move-result v3

    #@49
    add-int/2addr v0, v3

    #@4a
    if-nez v0, :cond_4d

    #@4c
    goto :goto_4f

    #@4d
    :cond_4d
    move v0, v2

    #@4e
    goto :goto_50

    #@4f
    :cond_4f
    :goto_4f
    move v0, v1

    #@50
    .line 974
    :goto_50
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@52
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawLeftInsetForeground(Z)V

    #@55
    .line 976
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@57
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    #@5a
    move-result-object v0

    #@5b
    invoke-static {v0}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    #@5e
    move-result-object v0

    #@5f
    if-eqz v0, :cond_d0

    #@61
    .line 978
    new-instance v3, Landroid/util/DisplayMetrics;

    #@63
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    #@66
    .line 979
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@69
    move-result-object v4

    #@6a
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@71
    .line 981
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    #@73
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@75
    .line 982
    invoke-virtual {v5}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    #@78
    move-result v5

    #@79
    sub-int/2addr v4, v5

    #@7a
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@7c
    # getter for: Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I
    invoke-static {v5}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    #@7f
    move-result-object v5

    #@80
    aget v5, v5, v1

    #@82
    if-ne v4, v5, :cond_86

    #@84
    move v4, v1

    #@85
    goto :goto_87

    #@86
    :cond_86
    move v4, v2

    #@87
    .line 984
    :goto_87
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    #@8e
    move-result v0

    #@8f
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_97

    #@95
    move v0, v1

    #@96
    goto :goto_98

    #@97
    :cond_97
    move v0, v2

    #@98
    .line 985
    :goto_98
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@9a
    if-eqz v4, :cond_a6

    #@9c
    if-eqz v0, :cond_a6

    #@9e
    .line 986
    invoke-virtual {v5}, Lcom/google/android/material/navigation/NavigationView;->isBottomInsetScrimEnabled()Z

    #@a1
    move-result v0

    #@a2
    if-eqz v0, :cond_a6

    #@a4
    move v0, v1

    #@a5
    goto :goto_a7

    #@a6
    :cond_a6
    move v0, v2

    #@a7
    .line 985
    :goto_a7
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    #@aa
    .line 990
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    #@ac
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@ae
    .line 991
    # getter for: Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I
    invoke-static {v4}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    #@b1
    move-result-object v4

    #@b2
    aget v4, v4, v2

    #@b4
    if-eq v0, v4, :cond_cb

    #@b6
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    #@b8
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@ba
    .line 992
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    #@bd
    move-result v3

    #@be
    sub-int/2addr v0, v3

    #@bf
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@c1
    # getter for: Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I
    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    #@c4
    move-result-object v3

    #@c5
    aget v3, v3, v2

    #@c7
    if-ne v0, v3, :cond_ca

    #@c9
    goto :goto_cb

    #@ca
    :cond_ca
    move v1, v2

    #@cb
    .line 994
    :cond_cb
    :goto_cb
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    #@cd
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->setDrawRightInsetForeground(Z)V

    #@d0
    :cond_d0
    return-void
.end method

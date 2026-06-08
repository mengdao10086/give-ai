.class Landroidx/core/view/WindowInsetsCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# static fields
.field static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;


# instance fields
.field final mHost:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 747
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    #@2
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    #@5
    .line 748
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    #@8
    move-result-object v0

    #@9
    .line 749
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;

    #@c
    move-result-object v0

    #@d
    .line 750
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;

    #@10
    move-result-object v0

    #@11
    .line 751
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    #@17
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    #@0
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 756
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    #@5
    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 784
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    #@2
    return-object v0
.end method

.method consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 774
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    #@2
    return-object v0
.end method

.method consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 769
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    #@2
    return-object v0
.end method

.method copyRootViewBounds(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    #@0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 841
    :cond_4
    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$Impl;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 842
    :cond_a
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl;

    #@c
    .line 843
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    #@f
    move-result v1

    #@10
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    #@13
    move-result v3

    #@14
    if-ne v1, v3, :cond_4b

    #@16
    .line 844
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    #@19
    move-result v1

    #@1a
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    #@1d
    move-result v3

    #@1e
    if-ne v1, v3, :cond_4b

    #@20
    .line 845
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@27
    move-result-object v3

    #@28
    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_4b

    #@2e
    .line 846
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@35
    move-result-object v3

    #@36
    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_4b

    #@3c
    .line 847
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    #@43
    move-result-object p1

    #@44
    invoke-static {v1, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@47
    move-result p1

    #@48
    if-eqz p1, :cond_4b

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    move v0, v2

    #@4c
    :goto_4c
    return v0
.end method

.method getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getInsets(I)Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 822
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@2
    return-object p1
.end method

.method getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    #@0
    and-int/lit8 p1, p1, 0x8

    #@2
    if-nez p1, :cond_7

    #@4
    .line 830
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@6
    return-object p1

    #@7
    .line 828
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v0, "Unable to query the maximum insets for IME"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 806
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getStableInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 794
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@2
    return-object v0
.end method

.method getSystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 800
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 789
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@2
    return-object v0
.end method

.method getTappableElementInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 812
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 853
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    const/4 v1, 0x2

    #@1a
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x3

    #@21
    .line 854
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x4

    #@28
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    #@2b
    move-result-object v2

    #@2c
    aput-object v2, v0, v1

    #@2e
    .line 853
    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    return v0
.end method

.method inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    #@0
    .line 817
    sget-object p1, Landroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    #@2
    return-object p1
.end method

.method isConsumed()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isRound()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isVisible(I)Z
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

.method public setOverriddenInsets([Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    #@0
    return-void
.end method

.method public setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

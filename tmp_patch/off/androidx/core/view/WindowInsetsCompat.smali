.class public Landroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;,
        Landroidx/core/view/WindowInsetsCompat$TypeImpl30;,
        Landroidx/core/view/WindowInsetsCompat$Type;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl;,
        Landroidx/core/view/WindowInsetsCompat$Builder;,
        Landroidx/core/view/WindowInsetsCompat$Impl30;,
        Landroidx/core/view/WindowInsetsCompat$Impl29;,
        Landroidx/core/view/WindowInsetsCompat$Impl28;,
        Landroidx/core/view/WindowInsetsCompat$Impl21;,
        Landroidx/core/view/WindowInsetsCompat$Impl20;,
        Landroidx/core/view/WindowInsetsCompat$Impl;
    }
.end annotation


# static fields
.field public static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;

.field private static final TAG:Ljava/lang/String; = "WindowInsetsCompat"


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 79
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    #@8
    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    #@a
    goto :goto_f

    #@b
    .line 81
    :cond_b
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    #@d
    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    #@f
    :goto_f
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .registers 4

    #@0
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v1, 0x1e

    #@7
    if-lt v0, v1, :cond_11

    #@9
    .line 90
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl30;

    #@b
    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    #@e
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@10
    goto :goto_34

    #@11
    .line 91
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@13
    const/16 v1, 0x1d

    #@15
    if-lt v0, v1, :cond_1f

    #@17
    .line 92
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl29;

    #@19
    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    #@1c
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@1e
    goto :goto_34

    #@1f
    .line 93
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@21
    const/16 v1, 0x1c

    #@23
    if-lt v0, v1, :cond_2d

    #@25
    .line 94
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl28;

    #@27
    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    #@2a
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2c
    goto :goto_34

    #@2d
    .line 96
    :cond_2d
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl21;

    #@2f
    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    #@32
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@34
    :goto_34
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 4

    #@0
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p1, :cond_6f

    #@5
    .line 112
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@7
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v1, 0x1e

    #@b
    if-lt v0, v1, :cond_1c

    #@d
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl30;

    #@f
    if-eqz v0, :cond_1c

    #@11
    .line 114
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl30;

    #@13
    move-object v1, p1

    #@14
    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl30;

    #@16
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl30;)V

    #@19
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@1b
    goto :goto_6b

    #@1c
    .line 115
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1e
    const/16 v1, 0x1d

    #@20
    if-lt v0, v1, :cond_31

    #@22
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl29;

    #@24
    if-eqz v0, :cond_31

    #@26
    .line 116
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl29;

    #@28
    move-object v1, p1

    #@29
    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl29;

    #@2b
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl29;)V

    #@2e
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@30
    goto :goto_6b

    #@31
    .line 117
    :cond_31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@33
    const/16 v1, 0x1c

    #@35
    if-lt v0, v1, :cond_46

    #@37
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    #@39
    if-eqz v0, :cond_46

    #@3b
    .line 118
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl28;

    #@3d
    move-object v1, p1

    #@3e
    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    #@40
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl28;)V

    #@43
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@45
    goto :goto_6b

    #@46
    .line 119
    :cond_46
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl21;

    #@48
    if-eqz v0, :cond_55

    #@4a
    .line 120
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl21;

    #@4c
    move-object v1, p1

    #@4d
    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl21;

    #@4f
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V

    #@52
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@54
    goto :goto_6b

    #@55
    .line 121
    :cond_55
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    #@57
    if-eqz v0, :cond_64

    #@59
    .line 122
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    #@5b
    move-object v1, p1

    #@5c
    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    #@5e
    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V

    #@61
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@63
    goto :goto_6b

    #@64
    .line 124
    :cond_64
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl;

    #@66
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@69
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@6b
    .line 126
    :goto_6b
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V

    #@6e
    goto :goto_76

    #@6f
    .line 129
    :cond_6f
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$Impl;

    #@71
    invoke-direct {p1, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@74
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@76
    :goto_76
    return-void
.end method

.method static insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;
    .registers 10

    #@0
    .line 1337
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2
    sub-int/2addr v0, p1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v0

    #@8
    .line 1338
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    #@a
    sub-int/2addr v2, p2

    #@b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v2

    #@f
    .line 1339
    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    #@11
    sub-int/2addr v3, p3

    #@12
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v3

    #@16
    .line 1340
    iget v4, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@18
    sub-int/2addr v4, p4

    #@19
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    #@1c
    move-result v1

    #@1d
    if-ne v0, p1, :cond_26

    #@1f
    if-ne v2, p2, :cond_26

    #@21
    if-ne v3, p3, :cond_26

    #@23
    if-ne v1, p4, :cond_26

    #@25
    return-object p0

    #@26
    .line 1344
    :cond_26
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@29
    move-result-object p0

    #@2a
    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 148
    invoke-static {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    #@0
    .line 168
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    #@2
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/view/WindowInsets;

    #@8
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroid/view/WindowInsets;)V

    #@b
    if-eqz p1, :cond_21

    #@d
    .line 169
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@10
    move-result p0

    #@11
    if-eqz p0, :cond_21

    #@13
    .line 171
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    #@1a
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@1d
    move-result-object p0

    #@1e
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V

    #@21
    :cond_21
    return-object v0
.end method


# virtual methods
.method public consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 506
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 477
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 318
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method copyRootViewBounds(Landroid/view/View;)V
    .registers 3

    #@0
    .line 2114
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->copyRootViewBounds(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    return p1

    #@4
    .line 721
    :cond_4
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    return p1

    #@a
    .line 724
    :cond_a
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    #@c
    .line 725
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@e
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@10
    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method public getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .registers 2

    #@0
    .line 490
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .registers 3

    #@0
    .line 668
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    #@0
    .line 696
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 566
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStableInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 441
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    #@8
    return v0
.end method

.method public getStableInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 401
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    #@8
    return v0
.end method

.method public getStableInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 421
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    #@8
    return v0
.end method

.method public getStableInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 381
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    #@8
    return v0
.end method

.method public getStableInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 549
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 606
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 239
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    #@8
    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 191
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    #@8
    return v0
.end method

.method public getSystemWindowInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 223
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    #@8
    return v0
.end method

.method public getSystemWindowInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 207
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    #@8
    return v0
.end method

.method public getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 526
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTappableElementInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 585
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getTappableElementInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasInsets()Z
    .registers 3

    #@0
    .line 267
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->all()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@a
    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2e

    #@10
    .line 268
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->all()I

    #@13
    move-result v0

    #@14
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    #@17
    move-result v1

    #@18
    xor-int/2addr v0, v1

    #@19
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    #@1c
    move-result-object v0

    #@1d
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@1f
    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2e

    #@25
    .line 269
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    #@28
    move-result-object v0

    #@29
    if-eqz v0, :cond_2c

    #@2b
    goto :goto_2e

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    #@2f
    :goto_2f
    return v0
.end method

.method public hasStableInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 461
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@8
    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    xor-int/lit8 v0, v0, 0x1

    #@e
    return v0
.end method

.method public hasSystemWindowInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 256
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@8
    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    xor-int/lit8 v0, v0, 0x1

    #@e
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 730
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0
.end method

.method public inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    #@0
    .line 651
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public inset(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    #@0
    .line 626
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    #@2
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    #@4
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    #@6
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public isConsumed()Z
    .registers 2

    #@0
    .line 286
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRound()Z
    .registers 2

    #@0
    .line 302
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVisible(I)Z
    .registers 3

    #@0
    .line 713
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isVisible(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 339
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@5
    .line 340
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@c
    move-result-object p1

    #@d
    .line 341
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    #@10
    move-result-object p1

    #@11
    return-object p1
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 360
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@5
    .line 361
    invoke-static {p1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@c
    move-result-object p1

    #@d
    .line 362
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    #@10
    move-result-object p1

    #@11
    return-object p1
.end method

.method setOverriddenInsets([Landroidx/core/graphics/Insets;)V
    .registers 3

    #@0
    .line 1706
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    #@5
    return-void
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .registers 3

    #@0
    .line 2110
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setRootViewData(Landroidx/core/graphics/Insets;)V

    #@5
    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3

    #@0
    .line 2106
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    #@5
    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 3

    #@0
    .line 1804
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setStableInsets(Landroidx/core/graphics/Insets;)V

    #@5
    return-void
.end method

.method public toWindowInsets()Landroid/view/WindowInsets;
    .registers 3

    #@0
    .line 741
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    #@2
    instance-of v1, v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    #@4
    if-eqz v1, :cond_b

    #@6
    check-cast v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    #@8
    iget-object v0, v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return-object v0
.end method

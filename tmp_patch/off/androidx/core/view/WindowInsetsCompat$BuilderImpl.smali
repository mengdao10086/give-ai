.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final mInsets:Landroidx/core/view/WindowInsetsCompat;

.field mInsetsTypeMask:[Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>()V
    .registers 4

    #@0
    .line 1623
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    #@2
    const/4 v1, 0x0

    #@3
    move-object v2, v1

    #@4
    check-cast v2, Landroidx/core/view/WindowInsetsCompat;

    #@6
    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@9
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@c
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    #@0
    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1627
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    #@5
    return-void
.end method


# virtual methods
.method protected final applyInsetTypes()V
    .registers 6

    #@0
    .line 1672
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@2
    if-eqz v0, :cond_58

    #@4
    const/4 v1, 0x1

    #@5
    .line 1673
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    #@8
    move-result v2

    #@9
    aget-object v0, v0, v2

    #@b
    .line 1674
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@d
    const/4 v3, 0x2

    #@e
    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    #@11
    move-result v4

    #@12
    aget-object v2, v2, v4

    #@14
    if-nez v2, :cond_1c

    #@16
    .line 1679
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    #@18
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@1b
    move-result-object v2

    #@1c
    :cond_1c
    if-nez v0, :cond_24

    #@1e
    .line 1682
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    #@20
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@23
    move-result-object v0

    #@24
    .line 1685
    :cond_24
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    #@2b
    .line 1687
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@2d
    const/16 v1, 0x10

    #@2f
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    #@32
    move-result v1

    #@33
    aget-object v0, v0, v1

    #@35
    if-eqz v0, :cond_3a

    #@37
    .line 1688
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Landroidx/core/graphics/Insets;)V

    #@3a
    .line 1690
    :cond_3a
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@3c
    const/16 v1, 0x20

    #@3e
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    #@41
    move-result v1

    #@42
    aget-object v0, v0, v1

    #@44
    if-eqz v0, :cond_49

    #@46
    .line 1691
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V

    #@49
    .line 1693
    :cond_49
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@4b
    const/16 v1, 0x40

    #@4d
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    #@50
    move-result v1

    #@51
    aget-object v0, v0, v1

    #@53
    if-eqz v0, :cond_58

    #@55
    .line 1694
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Landroidx/core/graphics/Insets;)V

    #@58
    :cond_58
    return-void
.end method

.method build()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 1700
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    #@3
    .line 1701
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    #@5
    return-object v0
.end method

.method setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V
    .registers 2

    #@0
    return-void
.end method

.method setInsets(ILandroidx/core/graphics/Insets;)V
    .registers 6

    #@0
    .line 1644
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@2
    if-nez v0, :cond_a

    #@4
    const/16 v0, 0x9

    #@6
    new-array v0, v0, [Landroidx/core/graphics/Insets;

    #@8
    .line 1645
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    const/16 v1, 0x100

    #@d
    if-gt v0, v1, :cond_1f

    #@f
    and-int v1, p1, v0

    #@11
    if-nez v1, :cond_14

    #@13
    goto :goto_1c

    #@14
    .line 1651
    :cond_14
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@16
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    #@19
    move-result v2

    #@1a
    aput-object p2, v1, v2

    #@1c
    :goto_1c
    shl-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_b

    #@1f
    :cond_1f
    return-void
.end method

.method setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .registers 3

    #@0
    const/16 p2, 0x8

    #@2
    if-eq p1, p2, :cond_5

    #@4
    return-void

    #@5
    .line 1659
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string p2, "Ignoring visibility inset not available for IME"

    #@9
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

.method setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

.method setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    return-void
.end method

.method setVisible(IZ)V
    .registers 3

    #@0
    return-void
.end method

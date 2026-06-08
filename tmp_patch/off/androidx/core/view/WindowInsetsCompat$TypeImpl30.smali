.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 2062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static toPlatformType(I)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    move v2, v1

    #@3
    :goto_3
    const/16 v3, 0x100

    #@5
    if-gt v2, v3, :cond_53

    #@7
    and-int v3, p0, v2

    #@9
    if-eqz v3, :cond_50

    #@b
    if-eq v2, v1, :cond_4b

    #@d
    const/4 v3, 0x2

    #@e
    if-eq v2, v3, :cond_46

    #@10
    const/4 v3, 0x4

    #@11
    if-eq v2, v3, :cond_41

    #@13
    const/16 v3, 0x8

    #@15
    if-eq v2, v3, :cond_3c

    #@17
    const/16 v3, 0x10

    #@19
    if-eq v2, v3, :cond_37

    #@1b
    const/16 v3, 0x20

    #@1d
    if-eq v2, v3, :cond_32

    #@1f
    const/16 v3, 0x40

    #@21
    if-eq v2, v3, :cond_2d

    #@23
    const/16 v3, 0x80

    #@25
    if-eq v2, v3, :cond_28

    #@27
    goto :goto_50

    #@28
    .line 2096
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    #@2b
    move-result v3

    #@2c
    goto :goto_4f

    #@2d
    .line 2093
    :cond_2d
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    #@30
    move-result v3

    #@31
    goto :goto_4f

    #@32
    .line 2090
    :cond_32
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    #@35
    move-result v3

    #@36
    goto :goto_4f

    #@37
    .line 2087
    :cond_37
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    #@3a
    move-result v3

    #@3b
    goto :goto_4f

    #@3c
    .line 2084
    :cond_3c
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    #@3f
    move-result v3

    #@40
    goto :goto_4f

    #@41
    .line 2081
    :cond_41
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    #@44
    move-result v3

    #@45
    goto :goto_4f

    #@46
    .line 2078
    :cond_46
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    #@49
    move-result v3

    #@4a
    goto :goto_4f

    #@4b
    .line 2075
    :cond_4b
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    #@4e
    move-result v3

    #@4f
    :goto_4f
    or-int/2addr v0, v3

    #@50
    :cond_50
    :goto_50
    shl-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_3

    #@53
    :cond_53
    return v0
.end method

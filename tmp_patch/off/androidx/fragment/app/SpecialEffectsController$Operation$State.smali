.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$State;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    .line 407
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@2
    const-string v1, "REMOVED"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@a
    .line 411
    new-instance v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@c
    const-string v3, "VISIBLE"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@14
    .line 415
    new-instance v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@16
    const-string v5, "GONE"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@1e
    .line 419
    new-instance v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@20
    const-string v7, "INVISIBLE"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@28
    const/4 v7, 0x4

    #@29
    new-array v7, v7, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@2b
    aput-object v0, v7, v2

    #@2d
    aput-object v1, v7, v4

    #@2f
    aput-object v3, v7, v6

    #@31
    aput-object v5, v7, v8

    #@33
    .line 403
    sput-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 4

    #@0
    if-eqz p0, :cond_24

    #@2
    const/4 v0, 0x4

    #@3
    if-eq p0, v0, :cond_21

    #@5
    const/16 v0, 0x8

    #@7
    if-ne p0, v0, :cond_c

    #@9
    .line 450
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@b
    return-object p0

    #@c
    .line 452
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    const-string v2, "Unknown visibility "

    #@12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object p0

    #@19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 448
    :cond_21
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@23
    return-object p0

    #@24
    .line 446
    :cond_24
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@26
    return-object p0
.end method

.method static from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 3

    #@0
    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    cmpl-float v0, v0, v1

    #@7
    if-nez v0, :cond_12

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_12

    #@f
    .line 431
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@11
    return-object p0

    #@12
    .line 433
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@15
    move-result p0

    #@16
    invoke-static {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@19
    move-result-object p0

    #@1a
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 2

    #@0
    .line 403
    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 1

    #@0
    .line 403
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@2
    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@8
    return-object v0
.end method


# virtual methods
.method applyState(Landroid/view/View;)V
    .registers 7

    #@0
    .line 462
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    #@2
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "FragmentManager"

    #@b
    const/4 v3, 0x2

    #@c
    if-eq v0, v1, :cond_7d

    #@e
    const-string v1, "SpecialEffectsController: Setting view "

    #@10
    if-eq v0, v3, :cond_5c

    #@12
    const/4 v4, 0x3

    #@13
    if-eq v0, v4, :cond_3a

    #@15
    const/4 v4, 0x4

    #@16
    if-eq v0, v4, :cond_1a

    #@18
    goto/16 :goto_aa

    #@1a
    .line 488
    :cond_1a
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_36

    #@20
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, " to INVISIBLE"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 493
    :cond_36
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    #@39
    goto :goto_aa

    #@3a
    .line 481
    :cond_3a
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_56

    #@40
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    const-string v1, " to GONE"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    :cond_56
    const/16 v0, 0x8

    #@58
    .line 485
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@5b
    goto :goto_aa

    #@5c
    .line 474
    :cond_5c
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_78

    #@62
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    const-string v1, " to VISIBLE"

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    :cond_78
    const/4 v0, 0x0

    #@79
    .line 478
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@7c
    goto :goto_aa

    #@7d
    .line 464
    :cond_7d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@80
    move-result-object v0

    #@81
    check-cast v0, Landroid/view/ViewGroup;

    #@83
    if-eqz v0, :cond_aa

    #@85
    .line 466
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_a7

    #@8b
    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    #@8d
    const-string v3, "SpecialEffectsController: Removing view "

    #@8f
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    const-string v3, " from container "

    #@98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    .line 470
    :cond_a7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@aa
    :cond_aa
    :goto_aa
    return-void
.end method

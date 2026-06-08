.class synthetic Landroidx/fragment/app/SpecialEffectsController$3;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact:[I

.field static final synthetic $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    .line 625
    invoke-static {}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->values()[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact:[I

    #@9
    const/4 v1, 0x1

    #@a
    :try_start_a
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@c
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ordinal()I

    #@f
    move-result v2

    #@10
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    #@12
    :catch_12
    const/4 v0, 0x2

    #@13
    :try_start_13
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact:[I

    #@15
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@17
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ordinal()I

    #@1a
    move-result v3

    #@1b
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    #@1d
    :catch_1d
    const/4 v2, 0x3

    #@1e
    :try_start_1e
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact:[I

    #@20
    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    #@22
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ordinal()I

    #@25
    move-result v4

    #@26
    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    #@28
    .line 462
    :catch_28
    invoke-static {}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->values()[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@2b
    move-result-object v3

    #@2c
    array-length v3, v3

    #@2d
    new-array v3, v3, [I

    #@2f
    sput-object v3, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    #@31
    :try_start_31
    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@33
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    #@36
    move-result v4

    #@37
    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    #@39
    :catch_39
    :try_start_39
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    #@3b
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@3d
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    #@40
    move-result v3

    #@41
    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    #@43
    :catch_43
    :try_start_43
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    #@45
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@47
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    #@4a
    move-result v1

    #@4b
    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    #@4d
    :catch_4d
    :try_start_4d
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    #@4f
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    #@51
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    #@54
    move-result v1

    #@55
    const/4 v2, 0x4

    #@56
    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_58} :catch_58

    #@58
    :catch_58
    return-void
.end method

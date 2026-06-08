.class synthetic Landroidx/lifecycle/Lifecycle$1;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    .line 224
    invoke-static {}, Landroidx/lifecycle/Lifecycle$Event;->values()[Landroidx/lifecycle/Lifecycle$Event;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@9
    const/4 v1, 0x1

    #@a
    :try_start_a
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@c
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

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
    sget-object v2, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@15
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@17
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

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
    sget-object v3, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@20
    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@22
    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    #@25
    move-result v4

    #@26
    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    #@28
    :catch_28
    const/4 v3, 0x4

    #@29
    :try_start_29
    sget-object v4, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@2b
    sget-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@2d
    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    #@30
    move-result v5

    #@31
    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    #@33
    :catch_33
    const/4 v4, 0x5

    #@34
    :try_start_34
    sget-object v5, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@36
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@38
    invoke-virtual {v6}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    #@3b
    move-result v6

    #@3c
    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    #@3e
    :catch_3e
    :try_start_3e
    sget-object v5, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@40
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@42
    invoke-virtual {v6}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    #@45
    move-result v6

    #@46
    const/4 v7, 0x6

    #@47
    aput v7, v5, v6
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    #@49
    :catch_49
    :try_start_49
    sget-object v5, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    #@4b
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    #@4d
    invoke-virtual {v6}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    #@50
    move-result v6

    #@51
    const/4 v7, 0x7

    #@52
    aput v7, v5, v6
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    #@54
    .line 135
    :catch_54
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    #@57
    move-result-object v5

    #@58
    array-length v5, v5

    #@59
    new-array v5, v5, [I

    #@5b
    sput-object v5, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@5d
    :try_start_5d
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    #@5f
    invoke-virtual {v6}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@62
    move-result v6

    #@63
    aput v1, v5, v6
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    #@65
    :catch_65
    :try_start_65
    sget-object v1, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@67
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    #@69
    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@6c
    move-result v5

    #@6d
    aput v0, v1, v5
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    #@6f
    :catch_6f
    :try_start_6f
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@71
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    #@73
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@76
    move-result v1

    #@77
    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    #@79
    :catch_79
    :try_start_79
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@7b
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    #@7d
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@80
    move-result v1

    #@81
    aput v3, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    #@83
    :catch_83
    :try_start_83
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    #@85
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    #@87
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    #@8a
    move-result v1

    #@8b
    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    #@8d
    :catch_8d
    return-void
.end method

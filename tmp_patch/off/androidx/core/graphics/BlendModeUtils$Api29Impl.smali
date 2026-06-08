.class Landroidx/core/graphics/BlendModeUtils$Api29Impl;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BlendModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 45
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@2
    invoke-virtual {p0}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@5
    move-result p0

    #@6
    aget p0, v0, p0

    #@8
    packed-switch p0, :pswitch_data_64

    #@b
    const/4 p0, 0x0

    #@c
    return-object p0

    #@d
    .line 103
    :pswitch_d
    sget-object p0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    #@f
    return-object p0

    #@10
    .line 101
    :pswitch_10
    sget-object p0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    #@12
    return-object p0

    #@13
    .line 99
    :pswitch_13
    sget-object p0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    #@15
    return-object p0

    #@16
    .line 97
    :pswitch_16
    sget-object p0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    #@18
    return-object p0

    #@19
    .line 95
    :pswitch_19
    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    #@1b
    return-object p0

    #@1c
    .line 93
    :pswitch_1c
    sget-object p0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    #@1e
    return-object p0

    #@1f
    .line 91
    :pswitch_1f
    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    #@21
    return-object p0

    #@22
    .line 89
    :pswitch_22
    sget-object p0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    #@24
    return-object p0

    #@25
    .line 87
    :pswitch_25
    sget-object p0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    #@27
    return-object p0

    #@28
    .line 85
    :pswitch_28
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    #@2a
    return-object p0

    #@2b
    .line 83
    :pswitch_2b
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    #@2d
    return-object p0

    #@2e
    .line 81
    :pswitch_2e
    sget-object p0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    #@30
    return-object p0

    #@31
    .line 79
    :pswitch_31
    sget-object p0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    #@33
    return-object p0

    #@34
    .line 77
    :pswitch_34
    sget-object p0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    #@36
    return-object p0

    #@37
    .line 75
    :pswitch_37
    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    #@39
    return-object p0

    #@3a
    .line 73
    :pswitch_3a
    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    #@3c
    return-object p0

    #@3d
    .line 71
    :pswitch_3d
    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    #@3f
    return-object p0

    #@40
    .line 69
    :pswitch_40
    sget-object p0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    #@42
    return-object p0

    #@43
    .line 67
    :pswitch_43
    sget-object p0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    #@45
    return-object p0

    #@46
    .line 65
    :pswitch_46
    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    #@48
    return-object p0

    #@49
    .line 63
    :pswitch_49
    sget-object p0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    #@4b
    return-object p0

    #@4c
    .line 61
    :pswitch_4c
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    #@4e
    return-object p0

    #@4f
    .line 59
    :pswitch_4f
    sget-object p0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    #@51
    return-object p0

    #@52
    .line 57
    :pswitch_52
    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    #@54
    return-object p0

    #@55
    .line 55
    :pswitch_55
    sget-object p0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    #@57
    return-object p0

    #@58
    .line 53
    :pswitch_58
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    #@5a
    return-object p0

    #@5b
    .line 51
    :pswitch_5b
    sget-object p0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    #@5d
    return-object p0

    #@5e
    .line 49
    :pswitch_5e
    sget-object p0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    #@60
    return-object p0

    #@61
    .line 47
    :pswitch_61
    sget-object p0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    #@63
    return-object p0

    #@64
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

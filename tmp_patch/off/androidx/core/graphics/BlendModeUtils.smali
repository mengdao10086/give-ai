.class Landroidx/core/graphics/BlendModeUtils;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BlendModeUtils$Api29Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 116
    :cond_4
    sget-object v1, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@6
    invoke-virtual {p0}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@9
    move-result p0

    #@a
    aget p0, v1, p0

    #@c
    packed-switch p0, :pswitch_data_46

    #@f
    return-object v0

    #@10
    .line 153
    :pswitch_10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    #@12
    return-object p0

    #@13
    .line 151
    :pswitch_13
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    #@15
    return-object p0

    #@16
    .line 149
    :pswitch_16
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    #@18
    return-object p0

    #@19
    .line 147
    :pswitch_19
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@1b
    return-object p0

    #@1c
    .line 145
    :pswitch_1c
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@1e
    return-object p0

    #@1f
    .line 142
    :pswitch_1f
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@21
    return-object p0

    #@22
    .line 140
    :pswitch_22
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    #@24
    return-object p0

    #@25
    .line 138
    :pswitch_25
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@27
    return-object p0

    #@28
    .line 136
    :pswitch_28
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@2a
    return-object p0

    #@2b
    .line 134
    :pswitch_2b
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@2d
    return-object p0

    #@2e
    .line 132
    :pswitch_2e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    #@30
    return-object p0

    #@31
    .line 130
    :pswitch_31
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    #@33
    return-object p0

    #@34
    .line 128
    :pswitch_34
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@36
    return-object p0

    #@37
    .line 126
    :pswitch_37
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    #@39
    return-object p0

    #@3a
    .line 124
    :pswitch_3a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@3c
    return-object p0

    #@3d
    .line 122
    :pswitch_3d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    #@3f
    return-object p0

    #@40
    .line 120
    :pswitch_40
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@42
    return-object p0

    #@43
    .line 118
    :pswitch_43
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@45
    return-object p0

    #@46
    :pswitch_data_46
    .packed-switch 0x1
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
    .end packed-switch
.end method

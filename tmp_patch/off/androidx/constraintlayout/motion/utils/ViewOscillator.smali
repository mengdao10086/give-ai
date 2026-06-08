.class public abstract Landroidx/constraintlayout/motion/utils/ViewOscillator;
.super Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewOscillator"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 36
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;-><init>()V

    #@3
    return-void
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    #@0
    const-string v0, "CUSTOM"

    #@2
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 43
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    #@a
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;-><init>()V

    #@d
    return-object p0

    #@e
    .line 45
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@14
    move-result v0

    #@15
    const/4 v1, -0x1

    #@16
    sparse-switch v0, :sswitch_data_120

    #@19
    goto/16 :goto_c6

    #@1b
    :sswitch_1b
    const-string v0, "waveOffset"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p0

    #@21
    if-nez p0, :cond_25

    #@23
    goto/16 :goto_c6

    #@25
    :cond_25
    const/16 v1, 0xd

    #@27
    goto/16 :goto_c6

    #@29
    :sswitch_29
    const-string v0, "alpha"

    #@2b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result p0

    #@2f
    if-nez p0, :cond_33

    #@31
    goto/16 :goto_c6

    #@33
    :cond_33
    const/16 v1, 0xc

    #@35
    goto/16 :goto_c6

    #@37
    :sswitch_37
    const-string v0, "transitionPathRotate"

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result p0

    #@3d
    if-nez p0, :cond_41

    #@3f
    goto/16 :goto_c6

    #@41
    :cond_41
    const/16 v1, 0xb

    #@43
    goto/16 :goto_c6

    #@45
    :sswitch_45
    const-string v0, "elevation"

    #@47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p0

    #@4b
    if-nez p0, :cond_4f

    #@4d
    goto/16 :goto_c6

    #@4f
    :cond_4f
    const/16 v1, 0xa

    #@51
    goto/16 :goto_c6

    #@53
    :sswitch_53
    const-string v0, "rotation"

    #@55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result p0

    #@59
    if-nez p0, :cond_5d

    #@5b
    goto/16 :goto_c6

    #@5d
    :cond_5d
    const/16 v1, 0x9

    #@5f
    goto/16 :goto_c6

    #@61
    :sswitch_61
    const-string v0, "waveVariesBy"

    #@63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result p0

    #@67
    if-nez p0, :cond_6b

    #@69
    goto/16 :goto_c6

    #@6b
    :cond_6b
    const/16 v1, 0x8

    #@6d
    goto/16 :goto_c6

    #@6f
    :sswitch_6f
    const-string v0, "scaleY"

    #@71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result p0

    #@75
    if-nez p0, :cond_78

    #@77
    goto :goto_c6

    #@78
    :cond_78
    const/4 v1, 0x7

    #@79
    goto :goto_c6

    #@7a
    :sswitch_7a
    const-string v0, "scaleX"

    #@7c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result p0

    #@80
    if-nez p0, :cond_83

    #@82
    goto :goto_c6

    #@83
    :cond_83
    const/4 v1, 0x6

    #@84
    goto :goto_c6

    #@85
    :sswitch_85
    const-string v0, "progress"

    #@87
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result p0

    #@8b
    if-nez p0, :cond_8e

    #@8d
    goto :goto_c6

    #@8e
    :cond_8e
    const/4 v1, 0x5

    #@8f
    goto :goto_c6

    #@90
    :sswitch_90
    const-string v0, "translationZ"

    #@92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result p0

    #@96
    if-nez p0, :cond_99

    #@98
    goto :goto_c6

    #@99
    :cond_99
    const/4 v1, 0x4

    #@9a
    goto :goto_c6

    #@9b
    :sswitch_9b
    const-string v0, "translationY"

    #@9d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result p0

    #@a1
    if-nez p0, :cond_a4

    #@a3
    goto :goto_c6

    #@a4
    :cond_a4
    const/4 v1, 0x3

    #@a5
    goto :goto_c6

    #@a6
    :sswitch_a6
    const-string v0, "translationX"

    #@a8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result p0

    #@ac
    if-nez p0, :cond_af

    #@ae
    goto :goto_c6

    #@af
    :cond_af
    const/4 v1, 0x2

    #@b0
    goto :goto_c6

    #@b1
    :sswitch_b1
    const-string v0, "rotationY"

    #@b3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result p0

    #@b7
    if-nez p0, :cond_ba

    #@b9
    goto :goto_c6

    #@ba
    :cond_ba
    const/4 v1, 0x1

    #@bb
    goto :goto_c6

    #@bc
    :sswitch_bc
    const-string v0, "rotationX"

    #@be
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result p0

    #@c2
    if-nez p0, :cond_c5

    #@c4
    goto :goto_c6

    #@c5
    :cond_c5
    const/4 v1, 0x0

    #@c6
    :goto_c6
    packed-switch v1, :pswitch_data_15a

    #@c9
    const/4 p0, 0x0

    #@ca
    return-object p0

    #@cb
    .line 63
    :pswitch_cb
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    #@cd
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    #@d0
    return-object p0

    #@d1
    .line 47
    :pswitch_d1
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    #@d3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    #@d6
    return-object p0

    #@d7
    .line 57
    :pswitch_d7
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    #@d9
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;-><init>()V

    #@dc
    return-object p0

    #@dd
    .line 49
    :pswitch_dd
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;

    #@df
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;-><init>()V

    #@e2
    return-object p0

    #@e3
    .line 51
    :pswitch_e3
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;

    #@e5
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;-><init>()V

    #@e8
    return-object p0

    #@e9
    .line 65
    :pswitch_e9
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    #@eb
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    #@ee
    return-object p0

    #@ef
    .line 61
    :pswitch_ef
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;

    #@f1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;-><init>()V

    #@f4
    return-object p0

    #@f5
    .line 59
    :pswitch_f5
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;

    #@f7
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;-><init>()V

    #@fa
    return-object p0

    #@fb
    .line 73
    :pswitch_fb
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

    #@fd
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;-><init>()V

    #@100
    return-object p0

    #@101
    .line 71
    :pswitch_101
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;

    #@103
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;-><init>()V

    #@106
    return-object p0

    #@107
    .line 69
    :pswitch_107
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;

    #@109
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;-><init>()V

    #@10c
    return-object p0

    #@10d
    .line 67
    :pswitch_10d
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;

    #@10f
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;-><init>()V

    #@112
    return-object p0

    #@113
    .line 55
    :pswitch_113
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;

    #@115
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;-><init>()V

    #@118
    return-object p0

    #@119
    .line 53
    :pswitch_119
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;

    #@11b
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;-><init>()V

    #@11e
    return-object p0

    #@11f
    nop

    #@120
    :sswitch_data_120
    .sparse-switch
        -0x4a771f66 -> :sswitch_bc
        -0x4a771f65 -> :sswitch_b1
        -0x490b9c39 -> :sswitch_a6
        -0x490b9c38 -> :sswitch_9b
        -0x490b9c37 -> :sswitch_90
        -0x3bab3dd3 -> :sswitch_85
        -0x3621dfb2 -> :sswitch_7a
        -0x3621dfb1 -> :sswitch_6f
        -0x2f893320 -> :sswitch_61
        -0x266f082 -> :sswitch_53
        -0x42d1a3 -> :sswitch_45
        0x2382115 -> :sswitch_37
        0x589b15e -> :sswitch_29
        0x94e04ec -> :sswitch_1b
    .end sparse-switch

    #@15a
    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_119
        :pswitch_113
        :pswitch_10d
        :pswitch_107
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
    .end packed-switch
.end method


# virtual methods
.method public abstract setProperty(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation
.end method

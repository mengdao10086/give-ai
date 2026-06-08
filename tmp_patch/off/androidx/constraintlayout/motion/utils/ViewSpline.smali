.class public abstract Landroidx/constraintlayout/motion/utils/ViewSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewSpline"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    #@3
    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;"
        }
    .end annotation

    #@0
    .line 36
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@5
    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;
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
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_13a

    #@b
    goto/16 :goto_d4

    #@d
    :sswitch_d
    const-string v0, "waveOffset"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result p0

    #@13
    if-nez p0, :cond_17

    #@15
    goto/16 :goto_d4

    #@17
    :cond_17
    const/16 v1, 0xf

    #@19
    goto/16 :goto_d4

    #@1b
    :sswitch_1b
    const-string v0, "alpha"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p0

    #@21
    if-nez p0, :cond_25

    #@23
    goto/16 :goto_d4

    #@25
    :cond_25
    const/16 v1, 0xe

    #@27
    goto/16 :goto_d4

    #@29
    :sswitch_29
    const-string v0, "transitionPathRotate"

    #@2b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result p0

    #@2f
    if-nez p0, :cond_33

    #@31
    goto/16 :goto_d4

    #@33
    :cond_33
    const/16 v1, 0xd

    #@35
    goto/16 :goto_d4

    #@37
    :sswitch_37
    const-string v0, "elevation"

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result p0

    #@3d
    if-nez p0, :cond_41

    #@3f
    goto/16 :goto_d4

    #@41
    :cond_41
    const/16 v1, 0xc

    #@43
    goto/16 :goto_d4

    #@45
    :sswitch_45
    const-string v0, "rotation"

    #@47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p0

    #@4b
    if-nez p0, :cond_4f

    #@4d
    goto/16 :goto_d4

    #@4f
    :cond_4f
    const/16 v1, 0xb

    #@51
    goto/16 :goto_d4

    #@53
    :sswitch_53
    const-string v0, "transformPivotY"

    #@55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result p0

    #@59
    if-nez p0, :cond_5d

    #@5b
    goto/16 :goto_d4

    #@5d
    :cond_5d
    const/16 v1, 0xa

    #@5f
    goto/16 :goto_d4

    #@61
    :sswitch_61
    const-string v0, "transformPivotX"

    #@63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result p0

    #@67
    if-nez p0, :cond_6b

    #@69
    goto/16 :goto_d4

    #@6b
    :cond_6b
    const/16 v1, 0x9

    #@6d
    goto/16 :goto_d4

    #@6f
    :sswitch_6f
    const-string v0, "waveVariesBy"

    #@71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result p0

    #@75
    if-nez p0, :cond_79

    #@77
    goto/16 :goto_d4

    #@79
    :cond_79
    const/16 v1, 0x8

    #@7b
    goto/16 :goto_d4

    #@7d
    :sswitch_7d
    const-string v0, "scaleY"

    #@7f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result p0

    #@83
    if-nez p0, :cond_86

    #@85
    goto :goto_d4

    #@86
    :cond_86
    const/4 v1, 0x7

    #@87
    goto :goto_d4

    #@88
    :sswitch_88
    const-string v0, "scaleX"

    #@8a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result p0

    #@8e
    if-nez p0, :cond_91

    #@90
    goto :goto_d4

    #@91
    :cond_91
    const/4 v1, 0x6

    #@92
    goto :goto_d4

    #@93
    :sswitch_93
    const-string v0, "progress"

    #@95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result p0

    #@99
    if-nez p0, :cond_9c

    #@9b
    goto :goto_d4

    #@9c
    :cond_9c
    const/4 v1, 0x5

    #@9d
    goto :goto_d4

    #@9e
    :sswitch_9e
    const-string v0, "translationZ"

    #@a0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result p0

    #@a4
    if-nez p0, :cond_a7

    #@a6
    goto :goto_d4

    #@a7
    :cond_a7
    const/4 v1, 0x4

    #@a8
    goto :goto_d4

    #@a9
    :sswitch_a9
    const-string v0, "translationY"

    #@ab
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result p0

    #@af
    if-nez p0, :cond_b2

    #@b1
    goto :goto_d4

    #@b2
    :cond_b2
    const/4 v1, 0x3

    #@b3
    goto :goto_d4

    #@b4
    :sswitch_b4
    const-string v0, "translationX"

    #@b6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result p0

    #@ba
    if-nez p0, :cond_bd

    #@bc
    goto :goto_d4

    #@bd
    :cond_bd
    const/4 v1, 0x2

    #@be
    goto :goto_d4

    #@bf
    :sswitch_bf
    const-string v0, "rotationY"

    #@c1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result p0

    #@c5
    if-nez p0, :cond_c8

    #@c7
    goto :goto_d4

    #@c8
    :cond_c8
    const/4 v1, 0x1

    #@c9
    goto :goto_d4

    #@ca
    :sswitch_ca
    const-string v0, "rotationX"

    #@cc
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result p0

    #@d0
    if-nez p0, :cond_d3

    #@d2
    goto :goto_d4

    #@d3
    :cond_d3
    const/4 v1, 0x0

    #@d4
    :goto_d4
    packed-switch v1, :pswitch_data_17c

    #@d7
    const/4 p0, 0x0

    #@d8
    return-object p0

    #@d9
    .line 62
    :pswitch_d9
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    #@db
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    #@de
    return-object p0

    #@df
    .line 42
    :pswitch_df
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    #@e1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    #@e4
    return-object p0

    #@e5
    .line 56
    :pswitch_e5
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    #@e7
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    #@ea
    return-object p0

    #@eb
    .line 44
    :pswitch_eb
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    #@ed
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    #@f0
    return-object p0

    #@f1
    .line 46
    :pswitch_f1
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    #@f3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    #@f6
    return-object p0

    #@f7
    .line 54
    :pswitch_f7
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

    #@f9
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    #@fc
    return-object p0

    #@fd
    .line 52
    :pswitch_fd
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    #@ff
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    #@102
    return-object p0

    #@103
    .line 64
    :pswitch_103
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    #@105
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    #@108
    return-object p0

    #@109
    .line 60
    :pswitch_109
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    #@10b
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    #@10e
    return-object p0

    #@10f
    .line 58
    :pswitch_10f
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    #@111
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    #@114
    return-object p0

    #@115
    .line 72
    :pswitch_115
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    #@117
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    #@11a
    return-object p0

    #@11b
    .line 70
    :pswitch_11b
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    #@11d
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    #@120
    return-object p0

    #@121
    .line 68
    :pswitch_121
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    #@123
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    #@126
    return-object p0

    #@127
    .line 66
    :pswitch_127
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    #@129
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    #@12c
    return-object p0

    #@12d
    .line 50
    :pswitch_12d
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    #@12f
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    #@132
    return-object p0

    #@133
    .line 48
    :pswitch_133
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    #@135
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    #@138
    return-object p0

    #@139
    nop

    #@13a
    :sswitch_data_13a
    .sparse-switch
        -0x4a771f66 -> :sswitch_ca
        -0x4a771f65 -> :sswitch_bf
        -0x490b9c39 -> :sswitch_b4
        -0x490b9c38 -> :sswitch_a9
        -0x490b9c37 -> :sswitch_9e
        -0x3bab3dd3 -> :sswitch_93
        -0x3621dfb2 -> :sswitch_88
        -0x3621dfb1 -> :sswitch_7d
        -0x2f893320 -> :sswitch_6f
        -0x2d5a2d1e -> :sswitch_61
        -0x2d5a2d1d -> :sswitch_53
        -0x266f082 -> :sswitch_45
        -0x42d1a3 -> :sswitch_37
        0x2382115 -> :sswitch_29
        0x589b15e -> :sswitch_1b
        0x94e04ec -> :sswitch_d
    .end sparse-switch

    #@17c
    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_133
        :pswitch_12d
        :pswitch_127
        :pswitch_121
        :pswitch_11b
        :pswitch_115
        :pswitch_10f
        :pswitch_109
        :pswitch_103
        :pswitch_fd
        :pswitch_f7
        :pswitch_f1
        :pswitch_eb
        :pswitch_e5
        :pswitch_df
        :pswitch_d9
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

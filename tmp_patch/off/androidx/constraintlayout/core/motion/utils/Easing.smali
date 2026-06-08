.class public Landroidx/constraintlayout/core/motion/utils/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;
    }
.end annotation


# static fields
.field private static final ACCELERATE:Ljava/lang/String; = "cubic(0.4, 0.05, 0.8, 0.7)"

.field private static final ACCELERATE_NAME:Ljava/lang/String; = "accelerate"

.field private static final ANTICIPATE:Ljava/lang/String; = "cubic(0.36, 0, 0.66, -0.56)"

.field private static final ANTICIPATE_NAME:Ljava/lang/String; = "anticipate"

.field private static final DECELERATE:Ljava/lang/String; = "cubic(0.0, 0.0, 0.2, 0.95)"

.field private static final DECELERATE_NAME:Ljava/lang/String; = "decelerate"

.field private static final LINEAR:Ljava/lang/String; = "cubic(1, 1, 0, 0)"

.field private static final LINEAR_NAME:Ljava/lang/String; = "linear"

.field public static NAMED_EASING:[Ljava/lang/String; = null

.field private static final OVERSHOOT:Ljava/lang/String; = "cubic(0.34, 1.56, 0.64, 1)"

.field private static final OVERSHOOT_NAME:Ljava/lang/String; = "overshoot"

.field private static final STANDARD:Ljava/lang/String; = "cubic(0.4, 0.0, 0.2, 1)"

.field private static final STANDARD_NAME:Ljava/lang/String; = "standard"

.field static sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;


# instance fields
.field str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@7
    const-string v0, "decelerate"

    #@9
    const-string v1, "linear"

    #@b
    const-string v2, "standard"

    #@d
    const-string v3, "accelerate"

    #@f
    .line 43
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    #@15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "identity"

    #@5
    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->str:Ljava/lang/String;

    #@7
    return-void
.end method

.method public static getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const-string v0, "cubic"

    #@6
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_12

    #@c
    .line 50
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    #@e
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    #@11
    return-object v0

    #@12
    :cond_12
    const-string v0, "spline"

    #@14
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_20

    #@1a
    .line 52
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StepCurve;

    #@1c
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/StepCurve;-><init>(Ljava/lang/String;)V

    #@1f
    return-object v0

    #@20
    :cond_20
    const-string v0, "Schlick"

    #@22
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2e

    #@28
    .line 54
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Schlick;

    #@2a
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Schlick;-><init>(Ljava/lang/String;)V

    #@2d
    return-object v0

    #@2e
    .line 56
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@31
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@34
    move-result v0

    #@35
    const/4 v1, -0x1

    #@36
    sparse-switch v0, :sswitch_data_cc

    #@39
    goto :goto_7b

    #@3a
    :sswitch_3a
    const-string v0, "standard"

    #@3c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result p0

    #@40
    if-nez p0, :cond_43

    #@42
    goto :goto_7b

    #@43
    :cond_43
    const/4 v1, 0x5

    #@44
    goto :goto_7b

    #@45
    :sswitch_45
    const-string v0, "overshoot"

    #@47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p0

    #@4b
    if-nez p0, :cond_4e

    #@4d
    goto :goto_7b

    #@4e
    :cond_4e
    const/4 v1, 0x4

    #@4f
    goto :goto_7b

    #@50
    :sswitch_50
    const-string v0, "linear"

    #@52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result p0

    #@56
    if-nez p0, :cond_59

    #@58
    goto :goto_7b

    #@59
    :cond_59
    const/4 v1, 0x3

    #@5a
    goto :goto_7b

    #@5b
    :sswitch_5b
    const-string v0, "anticipate"

    #@5d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result p0

    #@61
    if-nez p0, :cond_64

    #@63
    goto :goto_7b

    #@64
    :cond_64
    const/4 v1, 0x2

    #@65
    goto :goto_7b

    #@66
    :sswitch_66
    const-string v0, "decelerate"

    #@68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result p0

    #@6c
    if-nez p0, :cond_6f

    #@6e
    goto :goto_7b

    #@6f
    :cond_6f
    const/4 v1, 0x1

    #@70
    goto :goto_7b

    #@71
    :sswitch_71
    const-string v0, "accelerate"

    #@73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result p0

    #@77
    if-nez p0, :cond_7a

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    const/4 v1, 0x0

    #@7b
    :goto_7b
    packed-switch v1, :pswitch_data_e6

    #@7e
    .line 70
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@80
    new-instance v0, Ljava/lang/StringBuilder;

    #@82
    const-string v1, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

    #@84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@87
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    #@89
    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@98
    .line 76
    sget-object p0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@9a
    return-object p0

    #@9b
    .line 58
    :pswitch_9b
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    #@9d
    const-string v0, "cubic(0.4, 0.0, 0.2, 1)"

    #@9f
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    #@a2
    return-object p0

    #@a3
    .line 68
    :pswitch_a3
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    #@a5
    const-string v0, "cubic(0.34, 1.56, 0.64, 1)"

    #@a7
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    #@aa
    return-object p0

    #@ab
    .line 64
    :pswitch_ab
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    #@ad
    const-string v0, "cubic(1, 1, 0, 0)"

    #@af
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    #@b2
    return-object p0

    #@b3
    .line 66
    :pswitch_b3
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    #@b5
    const-string v0, "cubic(0.36, 0, 0.66, -0.56)"

    #@b7
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    #@ba
    return-object p0

    #@bb
    .line 62
    :pswitch_bb
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    #@bd
    const-string v0, "cubic(0.0, 0.0, 0.2, 0.95)"

    #@bf
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    #@c2
    return-object p0

    #@c3
    .line 60
    :pswitch_c3
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    #@c5
    const-string v0, "cubic(0.4, 0.05, 0.8, 0.7)"

    #@c7
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    #@ca
    return-object p0

    #@cb
    nop

    #@cc
    :sswitch_data_cc
    .sparse-switch
        -0x50bb8523 -> :sswitch_71
        -0x4b5653c4 -> :sswitch_66
        -0x47620096 -> :sswitch_5b
        -0x41b970db -> :sswitch_50
        -0x2ca5d435 -> :sswitch_45
        0x4e3d1ebd -> :sswitch_3a
    .end sparse-switch

    #@e6
    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_bb
        :pswitch_b3
        :pswitch_ab
        :pswitch_a3
        :pswitch_9b
    .end packed-switch
.end method


# virtual methods
.method public get(D)D
    .registers 3

    #@0
    return-wide p1
.end method

.method public getDiff(D)D
    .registers 3

    #@0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    #@2
    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->str:Ljava/lang/String;

    #@2
    return-object v0
.end method

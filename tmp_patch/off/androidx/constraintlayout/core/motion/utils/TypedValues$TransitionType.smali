.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Transitions"

.field public static final S_AUTO_TRANSITION:Ljava/lang/String; = "autoTransition"

.field public static final S_DURATION:Ljava/lang/String; = "duration"

.field public static final S_FROM:Ljava/lang/String; = "from"

.field public static final S_INTERPOLATOR:Ljava/lang/String; = "motionInterpolator"

.field public static final S_PATH_MOTION_ARC:Ljava/lang/String; = "pathMotionArc"

.field public static final S_STAGGERED:Ljava/lang/String; = "staggered"

.field public static final S_TO:Ljava/lang/String; = "to"

.field public static final S_TRANSITION_FLAGS:Ljava/lang/String; = "transitionFlags"

.field public static final TYPE_AUTO_TRANSITION:I = 0x2c0

.field public static final TYPE_DURATION:I = 0x2bc

.field public static final TYPE_FROM:I = 0x2bd

.field public static final TYPE_INTERPOLATOR:I = 0x2c1

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_STAGGERED:I = 0x2c2

.field public static final TYPE_TO:I = 0x2be

.field public static final TYPE_TRANSITION_FLAGS:I = 0x2c3


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    const-string v0, "duration"

    #@2
    const-string v1, "from"

    #@4
    const-string v2, "to"

    #@6
    const-string v3, "pathMotionArc"

    #@8
    const-string v4, "autoTransition"

    #@a
    const-string v5, "motionInterpolator"

    #@c
    const-string v6, "staggered"

    #@e
    const-string v7, "from"

    #@10
    const-string v8, "transitionFlags"

    #@12
    .line 733
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;->KEY_WORDS:[Ljava/lang/String;

    #@18
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 770
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_82

    #@b
    :goto_b
    move p0, v1

    #@c
    goto/16 :goto_65

    #@e
    :sswitch_e
    const-string v0, "staggered"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p0

    #@14
    if-nez p0, :cond_17

    #@16
    goto :goto_b

    #@17
    :cond_17
    const/4 p0, 0x7

    #@18
    goto :goto_65

    #@19
    :sswitch_19
    const-string v0, "pathMotionArc"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result p0

    #@1f
    if-nez p0, :cond_22

    #@21
    goto :goto_b

    #@22
    :cond_22
    const/4 p0, 0x6

    #@23
    goto :goto_65

    #@24
    :sswitch_24
    const-string v0, "from"

    #@26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result p0

    #@2a
    if-nez p0, :cond_2d

    #@2c
    goto :goto_b

    #@2d
    :cond_2d
    const/4 p0, 0x5

    #@2e
    goto :goto_65

    #@2f
    :sswitch_2f
    const-string v0, "to"

    #@31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result p0

    #@35
    if-nez p0, :cond_38

    #@37
    goto :goto_b

    #@38
    :cond_38
    const/4 p0, 0x4

    #@39
    goto :goto_65

    #@3a
    :sswitch_3a
    const-string v0, "autoTransition"

    #@3c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result p0

    #@40
    if-nez p0, :cond_43

    #@42
    goto :goto_b

    #@43
    :cond_43
    const/4 p0, 0x3

    #@44
    goto :goto_65

    #@45
    :sswitch_45
    const-string v0, "motionInterpolator"

    #@47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p0

    #@4b
    if-nez p0, :cond_4e

    #@4d
    goto :goto_b

    #@4e
    :cond_4e
    const/4 p0, 0x2

    #@4f
    goto :goto_65

    #@50
    :sswitch_50
    const-string v0, "duration"

    #@52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result p0

    #@56
    if-nez p0, :cond_59

    #@58
    goto :goto_b

    #@59
    :cond_59
    const/4 p0, 0x1

    #@5a
    goto :goto_65

    #@5b
    :sswitch_5b
    const-string v0, "transitionFlags"

    #@5d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result p0

    #@61
    if-nez p0, :cond_64

    #@63
    goto :goto_b

    #@64
    :cond_64
    const/4 p0, 0x0

    #@65
    :goto_65
    packed-switch p0, :pswitch_data_a4

    #@68
    return v1

    #@69
    :pswitch_69
    const/16 p0, 0x2c2

    #@6b
    return p0

    #@6c
    :pswitch_6c
    const/16 p0, 0x1fd

    #@6e
    return p0

    #@6f
    :pswitch_6f
    const/16 p0, 0x2bd

    #@71
    return p0

    #@72
    :pswitch_72
    const/16 p0, 0x2be

    #@74
    return p0

    #@75
    :pswitch_75
    const/16 p0, 0x2c0

    #@77
    return p0

    #@78
    :pswitch_78
    const/16 p0, 0x2c1

    #@7a
    return p0

    #@7b
    :pswitch_7b
    const/16 p0, 0x2bc

    #@7d
    return p0

    #@7e
    :pswitch_7e
    const/16 p0, 0x2c3

    #@80
    return p0

    #@81
    nop

    #@82
    :sswitch_data_82
    .sparse-switch
        -0x770661ce -> :sswitch_5b
        -0x76bbb26c -> :sswitch_50
        -0x50ef8463 -> :sswitch_45
        -0x4d5ee79c -> :sswitch_3a
        0xe7b -> :sswitch_2f
        0x3017aa -> :sswitch_24
        0x4e203417 -> :sswitch_19
        0x6da0e50c -> :sswitch_e
    .end sparse-switch

    #@a4
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    #@0
    const/16 v0, 0x1fd

    #@2
    if-eq p0, v0, :cond_11

    #@4
    packed-switch p0, :pswitch_data_14

    #@7
    packed-switch p0, :pswitch_data_1e

    #@a
    const/4 p0, -0x1

    #@b
    return p0

    #@c
    :pswitch_c
    const/4 p0, 0x4

    #@d
    return p0

    #@e
    :pswitch_e
    const/16 p0, 0x8

    #@10
    return p0

    #@11
    :cond_11
    :pswitch_11
    const/4 p0, 0x2

    #@12
    return p0

    #@13
    nop

    #@14
    :pswitch_data_14
    .packed-switch 0x2bc
        :pswitch_11
        :pswitch_e
        :pswitch_e
    .end packed-switch

    #@1e
    :pswitch_data_1e
    .packed-switch 0x2c1
        :pswitch_e
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

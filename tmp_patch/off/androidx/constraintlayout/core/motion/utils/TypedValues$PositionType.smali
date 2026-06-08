.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final S_DRAWPATH:Ljava/lang/String; = "drawPath"

.field public static final S_PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final S_PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final S_PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final S_PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final S_SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field public static final S_TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CURVE_FIT:I = 0x1fc

.field public static final TYPE_DRAWPATH:I = 0x1f6

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_PERCENT_HEIGHT:I = 0x1f8

.field public static final TYPE_PERCENT_WIDTH:I = 0x1f7

.field public static final TYPE_PERCENT_X:I = 0x1fa

.field public static final TYPE_PERCENT_Y:I = 0x1fb

.field public static final TYPE_POSITION_TYPE:I = 0x1fe

.field public static final TYPE_SIZE_PERCENT:I = 0x1f9

.field public static final TYPE_TRANSITION_EASING:I = 0x1f5


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const-string v0, "transitionEasing"

    #@2
    const-string v1, "drawPath"

    #@4
    const-string v2, "percentWidth"

    #@6
    const-string v3, "percentHeight"

    #@8
    const-string v4, "sizePercent"

    #@a
    const-string v5, "percentX"

    #@c
    const-string v6, "percentY"

    #@e
    .line 474
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->KEY_WORDS:[Ljava/lang/String;

    #@14
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_72

    #@b
    :goto_b
    move p0, v1

    #@c
    goto :goto_59

    #@d
    :sswitch_d
    const-string v0, "percentY"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result p0

    #@13
    if-nez p0, :cond_16

    #@15
    goto :goto_b

    #@16
    :cond_16
    const/4 p0, 0x6

    #@17
    goto :goto_59

    #@18
    :sswitch_18
    const-string v0, "percentX"

    #@1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result p0

    #@1e
    if-nez p0, :cond_21

    #@20
    goto :goto_b

    #@21
    :cond_21
    const/4 p0, 0x5

    #@22
    goto :goto_59

    #@23
    :sswitch_23
    const-string v0, "sizePercent"

    #@25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result p0

    #@29
    if-nez p0, :cond_2c

    #@2b
    goto :goto_b

    #@2c
    :cond_2c
    const/4 p0, 0x4

    #@2d
    goto :goto_59

    #@2e
    :sswitch_2e
    const-string v0, "drawPath"

    #@30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result p0

    #@34
    if-nez p0, :cond_37

    #@36
    goto :goto_b

    #@37
    :cond_37
    const/4 p0, 0x3

    #@38
    goto :goto_59

    #@39
    :sswitch_39
    const-string v0, "percentHeight"

    #@3b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result p0

    #@3f
    if-nez p0, :cond_42

    #@41
    goto :goto_b

    #@42
    :cond_42
    const/4 p0, 0x2

    #@43
    goto :goto_59

    #@44
    :sswitch_44
    const-string v0, "percentWidth"

    #@46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result p0

    #@4a
    if-nez p0, :cond_4d

    #@4c
    goto :goto_b

    #@4d
    :cond_4d
    const/4 p0, 0x1

    #@4e
    goto :goto_59

    #@4f
    :sswitch_4f
    const-string v0, "transitionEasing"

    #@51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result p0

    #@55
    if-nez p0, :cond_58

    #@57
    goto :goto_b

    #@58
    :cond_58
    const/4 p0, 0x0

    #@59
    :goto_59
    packed-switch p0, :pswitch_data_90

    #@5c
    return v1

    #@5d
    :pswitch_5d
    const/16 p0, 0x1fb

    #@5f
    return p0

    #@60
    :pswitch_60
    const/16 p0, 0x1fa

    #@62
    return p0

    #@63
    :pswitch_63
    const/16 p0, 0x1f9

    #@65
    return p0

    #@66
    :pswitch_66
    const/16 p0, 0x1f6

    #@68
    return p0

    #@69
    :pswitch_69
    const/16 p0, 0x1f8

    #@6b
    return p0

    #@6c
    :pswitch_6c
    const/16 p0, 0x1f7

    #@6e
    return p0

    #@6f
    :pswitch_6f
    const/16 p0, 0x1f5

    #@71
    return p0

    #@72
    :sswitch_data_72
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_4f
        -0x4330437f -> :sswitch_44
        -0x3ca72634 -> :sswitch_39
        -0x314b3c77 -> :sswitch_2e
        -0xbefb6fc -> :sswitch_23
        0x198424b3 -> :sswitch_18
        0x198424b4 -> :sswitch_d
    .end sparse-switch

    #@90
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p0, v0, :cond_12

    #@4
    const/16 v0, 0x65

    #@6
    if-eq p0, v0, :cond_f

    #@8
    packed-switch p0, :pswitch_data_14

    #@b
    const/4 p0, -0x1

    #@c
    return p0

    #@d
    :pswitch_d
    const/4 p0, 0x4

    #@e
    return p0

    #@f
    :cond_f
    :pswitch_f
    const/16 p0, 0x8

    #@11
    return p0

    #@12
    :cond_12
    :pswitch_12
    const/4 p0, 0x2

    #@13
    return p0

    #@14
    :pswitch_data_14
    .packed-switch 0x1f5
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

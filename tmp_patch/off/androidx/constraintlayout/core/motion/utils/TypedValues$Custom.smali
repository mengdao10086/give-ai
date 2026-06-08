.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Custom"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Custom"

.field public static final S_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final S_COLOR:Ljava/lang/String; = "color"

.field public static final S_DIMENSION:Ljava/lang/String; = "dimension"

.field public static final S_FLOAT:Ljava/lang/String; = "float"

.field public static final S_INT:Ljava/lang/String; = "integer"

.field public static final S_REFERENCE:Ljava/lang/String; = "refrence"

.field public static final S_STRING:Ljava/lang/String; = "string"

.field public static final TYPE_BOOLEAN:I = 0x388

.field public static final TYPE_COLOR:I = 0x386

.field public static final TYPE_DIMENSION:I = 0x389

.field public static final TYPE_FLOAT:I = 0x385

.field public static final TYPE_INT:I = 0x384

.field public static final TYPE_REFERENCE:I = 0x38a

.field public static final TYPE_STRING:I = 0x387


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const-string v0, "float"

    #@2
    const-string v1, "color"

    #@4
    const-string v2, "string"

    #@6
    const-string v3, "boolean"

    #@8
    const-string v4, "dimension"

    #@a
    const-string v5, "refrence"

    #@c
    .line 628
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->KEY_WORDS:[Ljava/lang/String;

    #@12
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 652
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
    const-string v0, "integer"

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
    const-string v0, "float"

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
    const-string v0, "color"

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
    const-string v0, "boolean"

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
    const-string v0, "refrence"

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
    const-string v0, "string"

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
    const-string v0, "dimension"

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
    const/16 p0, 0x384

    #@5f
    return p0

    #@60
    :pswitch_60
    const/16 p0, 0x385

    #@62
    return p0

    #@63
    :pswitch_63
    const/16 p0, 0x386

    #@65
    return p0

    #@66
    :pswitch_66
    const/16 p0, 0x388

    #@68
    return p0

    #@69
    :pswitch_69
    const/16 p0, 0x38a

    #@6b
    return p0

    #@6c
    :pswitch_6c
    const/16 p0, 0x387

    #@6e
    return p0

    #@6f
    :pswitch_6f
    const/16 p0, 0x389

    #@71
    return p0

    #@72
    :sswitch_data_72
    .sparse-switch
        -0x4144929a -> :sswitch_4f
        -0x352a9fef -> :sswitch_44
        -0x2a604a76 -> :sswitch_39
        0x3db6c28 -> :sswitch_2e
        0x5a72f63 -> :sswitch_23
        0x5d0225c -> :sswitch_18
        0x74b5813e -> :sswitch_d
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

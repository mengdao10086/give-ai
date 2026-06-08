.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TriggerType"
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyTrigger"

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# direct methods
.method static constructor <clinit>()V
    .registers 12

    #@0
    const-string v0, "viewTransitionOnCross"

    #@2
    const-string v1, "viewTransitionOnPositiveCross"

    #@4
    const-string v2, "viewTransitionOnNegativeCross"

    #@6
    const-string v3, "postLayout"

    #@8
    const-string v4, "triggerSlack"

    #@a
    const-string v5, "triggerCollisionView"

    #@c
    const-string v6, "triggerCollisionId"

    #@e
    const-string v7, "triggerID"

    #@10
    const-string v8, "positiveCross"

    #@12
    const-string v9, "negativeCross"

    #@14
    const-string v10, "triggerReceiver"

    #@16
    const-string v11, "CROSS"

    #@18
    .line 389
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;->KEY_WORDS:[Ljava/lang/String;

    #@1e
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_c4

    #@b
    :goto_b
    move p0, v1

    #@c
    goto/16 :goto_9b

    #@e
    :sswitch_e
    const-string v0, "triggerReceiver"

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
    const/16 p0, 0xb

    #@19
    goto/16 :goto_9b

    #@1b
    :sswitch_1b
    const-string v0, "postLayout"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p0

    #@21
    if-nez p0, :cond_24

    #@23
    goto :goto_b

    #@24
    :cond_24
    const/16 p0, 0xa

    #@26
    goto/16 :goto_9b

    #@28
    :sswitch_28
    const-string v0, "viewTransitionOnCross"

    #@2a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result p0

    #@2e
    if-nez p0, :cond_31

    #@30
    goto :goto_b

    #@31
    :cond_31
    const/16 p0, 0x9

    #@33
    goto/16 :goto_9b

    #@35
    :sswitch_35
    const-string v0, "triggerSlack"

    #@37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result p0

    #@3b
    if-nez p0, :cond_3e

    #@3d
    goto :goto_b

    #@3e
    :cond_3e
    const/16 p0, 0x8

    #@40
    goto/16 :goto_9b

    #@42
    :sswitch_42
    const-string v0, "CROSS"

    #@44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result p0

    #@48
    if-nez p0, :cond_4b

    #@4a
    goto :goto_b

    #@4b
    :cond_4b
    const/4 p0, 0x7

    #@4c
    goto :goto_9b

    #@4d
    :sswitch_4d
    const-string v0, "viewTransitionOnNegativeCross"

    #@4f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result p0

    #@53
    if-nez p0, :cond_56

    #@55
    goto :goto_b

    #@56
    :cond_56
    const/4 p0, 0x6

    #@57
    goto :goto_9b

    #@58
    :sswitch_58
    const-string v0, "triggerCollisionView"

    #@5a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result p0

    #@5e
    if-nez p0, :cond_61

    #@60
    goto :goto_b

    #@61
    :cond_61
    const/4 p0, 0x5

    #@62
    goto :goto_9b

    #@63
    :sswitch_63
    const-string v0, "negativeCross"

    #@65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result p0

    #@69
    if-nez p0, :cond_6c

    #@6b
    goto :goto_b

    #@6c
    :cond_6c
    const/4 p0, 0x4

    #@6d
    goto :goto_9b

    #@6e
    :sswitch_6e
    const-string v0, "triggerID"

    #@70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result p0

    #@74
    if-nez p0, :cond_77

    #@76
    goto :goto_b

    #@77
    :cond_77
    const/4 p0, 0x3

    #@78
    goto :goto_9b

    #@79
    :sswitch_79
    const-string v0, "triggerCollisionId"

    #@7b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result p0

    #@7f
    if-nez p0, :cond_82

    #@81
    goto :goto_b

    #@82
    :cond_82
    const/4 p0, 0x2

    #@83
    goto :goto_9b

    #@84
    :sswitch_84
    const-string v0, "viewTransitionOnPositiveCross"

    #@86
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result p0

    #@8a
    if-nez p0, :cond_8e

    #@8c
    goto/16 :goto_b

    #@8e
    :cond_8e
    const/4 p0, 0x1

    #@8f
    goto :goto_9b

    #@90
    :sswitch_90
    const-string v0, "positiveCross"

    #@92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result p0

    #@96
    if-nez p0, :cond_9a

    #@98
    goto/16 :goto_b

    #@9a
    :cond_9a
    const/4 p0, 0x0

    #@9b
    :goto_9b
    packed-switch p0, :pswitch_data_f6

    #@9e
    return v1

    #@9f
    :pswitch_9f
    const/16 p0, 0x137

    #@a1
    return p0

    #@a2
    :pswitch_a2
    const/16 p0, 0x130

    #@a4
    return p0

    #@a5
    :pswitch_a5
    const/16 p0, 0x12d

    #@a7
    return p0

    #@a8
    :pswitch_a8
    const/16 p0, 0x131

    #@aa
    return p0

    #@ab
    :pswitch_ab
    const/16 p0, 0x138

    #@ad
    return p0

    #@ae
    :pswitch_ae
    const/16 p0, 0x12f

    #@b0
    return p0

    #@b1
    :pswitch_b1
    const/16 p0, 0x132

    #@b3
    return p0

    #@b4
    :pswitch_b4
    const/16 p0, 0x136

    #@b6
    return p0

    #@b7
    :pswitch_b7
    const/16 p0, 0x134

    #@b9
    return p0

    #@ba
    :pswitch_ba
    const/16 p0, 0x133

    #@bc
    return p0

    #@bd
    :pswitch_bd
    const/16 p0, 0x12e

    #@bf
    return p0

    #@c0
    :pswitch_c0
    const/16 p0, 0x135

    #@c2
    return p0

    #@c3
    nop

    #@c4
    :sswitch_data_c4
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_90
        -0x399a6b12 -> :sswitch_84
        -0x2ee3a4eb -> :sswitch_79
        -0x26ab2f2d -> :sswitch_6e
        -0x26090af5 -> :sswitch_63
        -0x4880de1 -> :sswitch_58
        -0x94d7ce -> :sswitch_4d
        0x3d6a020 -> :sswitch_42
        0x15b9acb8 -> :sswitch_35
        0x4d99e267 -> :sswitch_28
        0x538787ea -> :sswitch_1b
        0x5b846bc7 -> :sswitch_e
    .end sparse-switch

    #@f6
    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
    .end packed-switch
.end method

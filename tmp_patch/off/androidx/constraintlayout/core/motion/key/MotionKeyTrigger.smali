.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyTrigger.java"


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_TYPE:I = 0x5

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"

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


# instance fields
.field mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mTriggerCollisionId:I

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F

.field mViewTransitionOnCross:I

.field mViewTransitionOnNegativeCross:I

.field mViewTransitionOnPositiveCross:I


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 27
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 43
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    #@9
    .line 44
    sget v1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    #@b
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    #@d
    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@f
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@11
    .line 47
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    #@13
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    #@15
    .line 48
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    #@17
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    #@19
    const v0, 0x3dcccccd    # 0.1f

    #@1c
    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 51
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    #@21
    .line 52
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    #@23
    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    #@25
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@27
    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    #@29
    const/4 v0, 0x0

    #@2a
    .line 56
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    #@2c
    .line 57
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    #@2e
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    #@30
    .line 58
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    #@32
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

    #@34
    .line 59
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->UNSET:I

    #@36
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

    #@38
    .line 74
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@3a
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    #@3d
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@3f
    .line 75
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@41
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    #@44
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@46
    const/4 v0, 0x5

    #@47
    .line 79
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mType:I

    #@49
    .line 80
    new-instance v0, Ljava/util/HashMap;

    #@4b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@4e
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    #@50
    return-void
.end method

.method private fireCustom(Ljava/lang/String;Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    #@0
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_9

    #@7
    move v0, v1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-nez v0, :cond_16

    #@c
    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@12
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    .line 153
    :cond_16
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    #@18
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_48

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Ljava/lang/String;

    #@2c
    .line 154
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    if-nez v0, :cond_3a

    #@34
    .line 155
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_20

    #@3a
    .line 156
    :cond_3a
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCustom:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@42
    if-eqz v2, :cond_20

    #@44
    .line 158
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@47
    goto :goto_20

    #@48
    :cond_48
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    #@0
    .line 146
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 27
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 3

    #@0
    return-void
.end method

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    #@0
    .line 27
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
    .registers 3

    #@0
    .line 123
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    .line 124
    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    #@5
    .line 125
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    #@7
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    #@9
    .line 126
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    #@d
    .line 127
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    #@f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    #@11
    .line 128
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@15
    .line 129
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@17
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@19
    .line 130
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    #@1b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    #@1d
    .line 131
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    #@1f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    #@21
    .line 133
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    #@23
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    #@25
    .line 134
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    #@27
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    #@29
    .line 135
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    #@2b
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    #@2d
    .line 136
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    #@2f
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    #@31
    .line 137
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    #@33
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    #@35
    .line 138
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    #@37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    #@39
    .line 139
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    #@3b
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    #@3d
    .line 140
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@3f
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@41
    .line 141
    iget-object p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@43
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    #@45
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_b2

    #@b
    :goto_b
    move p1, v1

    #@c
    goto/16 :goto_8c

    #@e
    :sswitch_e
    const-string v0, "triggerReceiver"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    if-nez p1, :cond_17

    #@16
    goto :goto_b

    #@17
    :cond_17
    const/16 p1, 0xa

    #@19
    goto/16 :goto_8c

    #@1b
    :sswitch_1b
    const-string v0, "postLayout"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_24

    #@23
    goto :goto_b

    #@24
    :cond_24
    const/16 p1, 0x9

    #@26
    goto/16 :goto_8c

    #@28
    :sswitch_28
    const-string v0, "viewTransitionOnCross"

    #@2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result p1

    #@2e
    if-nez p1, :cond_31

    #@30
    goto :goto_b

    #@31
    :cond_31
    const/16 p1, 0x8

    #@33
    goto/16 :goto_8c

    #@35
    :sswitch_35
    const-string v0, "triggerSlack"

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result p1

    #@3b
    if-nez p1, :cond_3e

    #@3d
    goto :goto_b

    #@3e
    :cond_3e
    const/4 p1, 0x7

    #@3f
    goto :goto_8c

    #@40
    :sswitch_40
    const-string v0, "viewTransitionOnNegativeCross"

    #@42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result p1

    #@46
    if-nez p1, :cond_49

    #@48
    goto :goto_b

    #@49
    :cond_49
    const/4 p1, 0x6

    #@4a
    goto :goto_8c

    #@4b
    :sswitch_4b
    const-string v0, "triggerCollisionView"

    #@4d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result p1

    #@51
    if-nez p1, :cond_54

    #@53
    goto :goto_b

    #@54
    :cond_54
    const/4 p1, 0x5

    #@55
    goto :goto_8c

    #@56
    :sswitch_56
    const-string v0, "negativeCross"

    #@58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result p1

    #@5c
    if-nez p1, :cond_5f

    #@5e
    goto :goto_b

    #@5f
    :cond_5f
    const/4 p1, 0x4

    #@60
    goto :goto_8c

    #@61
    :sswitch_61
    const-string v0, "triggerID"

    #@63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result p1

    #@67
    if-nez p1, :cond_6a

    #@69
    goto :goto_b

    #@6a
    :cond_6a
    const/4 p1, 0x3

    #@6b
    goto :goto_8c

    #@6c
    :sswitch_6c
    const-string v0, "triggerCollisionId"

    #@6e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result p1

    #@72
    if-nez p1, :cond_75

    #@74
    goto :goto_b

    #@75
    :cond_75
    const/4 p1, 0x2

    #@76
    goto :goto_8c

    #@77
    :sswitch_77
    const-string v0, "viewTransitionOnPositiveCross"

    #@79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result p1

    #@7d
    if-nez p1, :cond_80

    #@7f
    goto :goto_b

    #@80
    :cond_80
    const/4 p1, 0x1

    #@81
    goto :goto_8c

    #@82
    :sswitch_82
    const-string v0, "positiveCross"

    #@84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result p1

    #@88
    if-nez p1, :cond_8b

    #@8a
    goto :goto_b

    #@8b
    :cond_8b
    const/4 p1, 0x0

    #@8c
    :goto_8c
    packed-switch p1, :pswitch_data_e0

    #@8f
    return v1

    #@90
    :pswitch_90
    const/16 p1, 0x137

    #@92
    return p1

    #@93
    :pswitch_93
    const/16 p1, 0x130

    #@95
    return p1

    #@96
    :pswitch_96
    const/16 p1, 0x12d

    #@98
    return p1

    #@99
    :pswitch_99
    const/16 p1, 0x131

    #@9b
    return p1

    #@9c
    :pswitch_9c
    const/16 p1, 0x12f

    #@9e
    return p1

    #@9f
    :pswitch_9f
    const/16 p1, 0x132

    #@a1
    return p1

    #@a2
    :pswitch_a2
    const/16 p1, 0x136

    #@a4
    return p1

    #@a5
    :pswitch_a5
    const/16 p1, 0x134

    #@a7
    return p1

    #@a8
    :pswitch_a8
    const/16 p1, 0x133

    #@aa
    return p1

    #@ab
    :pswitch_ab
    const/16 p1, 0x12e

    #@ad
    return p1

    #@ae
    :pswitch_ae
    const/16 p1, 0x135

    #@b0
    return p1

    #@b1
    nop

    #@b2
    :sswitch_data_b2
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_82
        -0x399a6b12 -> :sswitch_77
        -0x2ee3a4eb -> :sswitch_6c
        -0x26ab2f2d -> :sswitch_61
        -0x26090af5 -> :sswitch_56
        -0x4880de1 -> :sswitch_4b
        -0x94d7ce -> :sswitch_40
        0x15b9acb8 -> :sswitch_35
        0x4d99e267 -> :sswitch_28
        0x538787ea -> :sswitch_1b
        0x5b846bc7 -> :sswitch_e
    .end sparse-switch

    #@e0
    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
    .end packed-switch
.end method

.method public setValue(IF)Z
    .registers 4

    #@0
    const/16 v0, 0x131

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 199
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 196
    :cond_9
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    #@b
    const/4 p1, 0x1

    #@c
    return p1
.end method

.method public setValue(II)Z
    .registers 4

    #@0
    const/16 v0, 0x133

    #@2
    if-eq p1, v0, :cond_2b

    #@4
    const/16 v0, 0x134

    #@6
    if-eq p1, v0, :cond_20

    #@8
    const/16 v0, 0x137

    #@a
    if-eq p1, v0, :cond_1d

    #@c
    packed-switch p1, :pswitch_data_30

    #@f
    .line 188
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    #@12
    move-result p1

    #@13
    return p1

    #@14
    .line 178
    :pswitch_14
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    #@16
    goto :goto_2d

    #@17
    .line 181
    :pswitch_17
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

    #@19
    goto :goto_2d

    #@1a
    .line 185
    :pswitch_1a
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

    #@1c
    goto :goto_2d

    #@1d
    .line 169
    :cond_1d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    #@1f
    goto :goto_2d

    #@20
    .line 172
    :cond_20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->toInt(Ljava/lang/Object;)I

    #@27
    move-result p1

    #@28
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    #@2a
    goto :goto_2d

    #@2b
    .line 175
    :cond_2b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    #@2d
    :goto_2d
    const/4 p1, 0x1

    #@2e
    return p1

    #@2f
    nop

    #@30
    :pswitch_data_30
    .packed-switch 0x12d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    #@0
    const/16 v0, 0x135

    #@2
    if-eq p1, v0, :cond_17

    #@4
    const/16 v0, 0x136

    #@6
    if-eq p1, v0, :cond_14

    #@8
    const/16 v0, 0x138

    #@a
    if-eq p1, v0, :cond_11

    #@c
    .line 222
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    #@f
    move-result p1

    #@10
    return p1

    #@11
    .line 207
    :cond_11
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    #@13
    goto :goto_19

    #@14
    .line 210
    :cond_14
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@16
    goto :goto_19

    #@17
    .line 213
    :cond_17
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@19
    :goto_19
    const/4 p1, 0x1

    #@1a
    return p1
.end method

.method public setValue(IZ)Z
    .registers 4

    #@0
    const/16 v0, 0x130

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 233
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 230
    :cond_9
    iput-boolean p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    #@b
    const/4 p1, 0x1

    #@c
    return p1
.end method

.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 2

    #@0
    .line 78
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 60
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@6
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    #@9
    .line 61
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@b
    const/4 p1, 0x0

    #@c
    .line 63
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    #@e
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    #@0
    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 60
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@6
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    #@9
    .line 61
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@b
    const/4 p1, 0x0

    #@c
    .line 63
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    #@e
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    #@0
    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 60
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@6
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    #@9
    .line 61
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@b
    const/4 p1, 0x0

    #@c
    .line 63
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    #@e
    .line 107
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    #@10
    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    #@13
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@15
    return-void
.end method

.method private sanityCheck()V
    .registers 5

    #@0
    .line 197
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@2
    if-eqz v0, :cond_28

    #@4
    .line 201
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    #@7
    move-result v0

    #@8
    float-to-double v0, v0

    #@9
    .line 202
    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    #@b
    float-to-double v2, v2

    #@c
    cmpl-double v2, v0, v2

    #@e
    if-gtz v2, :cond_20

    #@10
    .line 205
    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    #@12
    float-to-double v2, v2

    #@13
    cmpg-double v0, v0, v2

    #@15
    if-ltz v0, :cond_18

    #@17
    return-void

    #@18
    .line 206
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1a
    const-string v1, "Final position of the spring cannot be less than the min value."

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 203
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@22
    const-string v1, "Final position of the spring cannot be greater than the max value."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 198
    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2a
    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .registers 3

    #@0
    .line 152
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 153
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@8
    goto :goto_1c

    #@9
    .line 155
    :cond_9
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@b
    if-nez v0, :cond_14

    #@d
    .line 156
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    #@f
    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    #@12
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@14
    .line 158
    :cond_14
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@16
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    #@19
    .line 159
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    #@1c
    :goto_1c
    return-void
.end method

.method public canSkipToEnd()Z
    .registers 5

    #@0
    .line 191
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@2
    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmpl-double v0, v0, v2

    #@8
    if-lez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method getAcceleration(FF)F
    .registers 4

    #@0
    .line 257
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->getAcceleration(FF)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .registers 2

    #@0
    .line 116
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@2
    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4

    #@0
    .line 262
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 2

    #@0
    .line 128
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@2
    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 2

    #@0
    return-void
.end method

.method public skipToEnd()V
    .registers 3

    #@0
    .line 173
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_20

    #@6
    .line 177
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@d
    move-result-object v1

    #@e
    if-ne v0, v1, :cond_18

    #@10
    .line 180
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    #@12
    if-eqz v0, :cond_17

    #@14
    const/4 v0, 0x1

    #@15
    .line 181
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    #@17
    :cond_17
    return-void

    #@18
    .line 178
    :cond_18
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@1a
    const-string v1, "Animations may only be started on the main thread"

    #@1c
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 174
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@22
    const-string v1, "Spring animations can only come to an end when there is damping"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

.method public start()V
    .registers 4

    #@0
    .line 134
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    #@3
    .line 135
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@5
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getValueThreshold()F

    #@8
    move-result v1

    #@9
    float-to-double v1, v1

    #@a
    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    #@d
    .line 136
    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    #@10
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    .line 215
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    #@a
    if-eqz v1, :cond_26

    #@c
    .line 216
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@e
    cmpl-float v6, v1, v5

    #@10
    if-eqz v6, :cond_19

    #@12
    .line 217
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@14
    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    #@17
    .line 218
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@19
    .line 220
    :cond_19
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@1b
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    #@1e
    move-result v1

    #@1f
    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@21
    .line 221
    iput v4, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    #@23
    .line 222
    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    #@25
    return v2

    #@26
    .line 226
    :cond_26
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@28
    cmpl-float v1, v1, v5

    #@2a
    if-eqz v1, :cond_63

    #@2c
    .line 227
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@2e
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    #@31
    .line 230
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@33
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@35
    float-to-double v7, v1

    #@36
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    #@38
    float-to-double v9, v1

    #@39
    const-wide/16 v11, 0x2

    #@3b
    div-long v18, p1, v11

    #@3d
    move-wide/from16 v11, v18

    #@3f
    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@42
    move-result-object v1

    #@43
    .line 231
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@45
    iget v7, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@47
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    #@4a
    .line 232
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    #@4c
    .line 234
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@4e
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    #@50
    float-to-double v14, v5

    #@51
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@53
    float-to-double v5, v1

    #@54
    move-wide/from16 v16, v5

    #@56
    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@59
    move-result-object v1

    #@5a
    .line 235
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    #@5c
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@5e
    .line 236
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@60
    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    #@62
    goto :goto_7b

    #@63
    .line 239
    :cond_63
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@65
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@67
    float-to-double v14, v1

    #@68
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    #@6a
    float-to-double v5, v1

    #@6b
    move-wide/from16 v16, v5

    #@6d
    move-wide/from16 v18, p1

    #@6f
    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@72
    move-result-object v1

    #@73
    .line 240
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    #@75
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@77
    .line 241
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@79
    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    #@7b
    .line 244
    :goto_7b
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@7d
    iget v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    #@7f
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    #@82
    move-result v1

    #@83
    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@85
    .line 245
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@87
    iget v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    #@89
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    #@8c
    move-result v1

    #@8d
    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@8f
    .line 247
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@91
    iget v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    #@93
    invoke-virtual {v0, v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_a4

    #@99
    .line 248
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    #@9b
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    #@9e
    move-result v1

    #@9f
    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    #@a1
    .line 249
    iput v4, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    #@a3
    return v2

    #@a4
    :cond_a4
    return v3
.end method

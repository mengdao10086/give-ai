.class public Lcom/google/android/material/animation/MotionTiming;
.super Ljava/lang/Object;
.source "MotionTiming.java"


# instance fields
.field private delay:J

.field private duration:J

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private repeatCount:I

.field private repeatMode:I


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 33
    iput-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    #@6
    const/4 v0, 0x0

    #@7
    .line 35
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    #@9
    const/4 v0, 0x1

    #@a
    .line 37
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    #@c
    .line 40
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    #@e
    .line 41
    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    #@10
    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .registers 7

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 35
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    #@6
    const/4 v0, 0x1

    #@7
    .line 37
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    #@9
    .line 45
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    #@b
    .line 46
    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    #@d
    .line 47
    iput-object p5, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    #@f
    return-void
.end method

.method static createFromAnimator(Landroid/animation/ValueAnimator;)Lcom/google/android/material/animation/MotionTiming;
    .registers 8

    #@0
    .line 83
    new-instance v6, Lcom/google/android/material/animation/MotionTiming;

    #@2
    .line 85
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    #@5
    move-result-wide v1

    #@6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    #@9
    move-result-wide v3

    #@a
    invoke-static {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;

    #@d
    move-result-object v5

    #@e
    move-object v0, v6

    #@f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJLandroid/animation/TimeInterpolator;)V

    #@12
    .line 86
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    #@15
    move-result v0

    #@16
    iput v0, v6, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    #@18
    .line 87
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    #@1b
    move-result p0

    #@1c
    iput p0, v6, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    #@1e
    return-object v6
.end method

.method private static getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;
    .registers 2

    #@0
    .line 102
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@3
    move-result-object p0

    #@4
    .line 103
    instance-of v0, p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@6
    if-nez v0, :cond_19

    #@8
    if-nez p0, :cond_b

    #@a
    goto :goto_19

    #@b
    .line 105
    :cond_b
    instance-of v0, p0, Landroid/view/animation/AccelerateInterpolator;

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 106
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@11
    return-object p0

    #@12
    .line 107
    :cond_12
    instance-of v0, p0, Landroid/view/animation/DecelerateInterpolator;

    #@14
    if-eqz v0, :cond_18

    #@16
    .line 108
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@18
    :cond_18
    return-object p0

    #@19
    .line 104
    :cond_19
    :goto_19
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1b
    return-object p0
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    #@7
    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@a
    move-result-wide v0

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@e
    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@15
    .line 54
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    #@17
    if-eqz v0, :cond_29

    #@19
    .line 55
    check-cast p1, Landroid/animation/ValueAnimator;

    #@1b
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    #@22
    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    #@29
    :cond_29
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    return p1

    #@4
    .line 119
    :cond_4
    instance-of v0, p1, Lcom/google/android/material/animation/MotionTiming;

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 123
    :cond_a
    check-cast p1, Lcom/google/android/material/animation/MotionTiming;

    #@c
    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@13
    move-result-wide v4

    #@14
    cmp-long v0, v2, v4

    #@16
    if-eqz v0, :cond_19

    #@18
    return v1

    #@19
    .line 128
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@20
    move-result-wide v4

    #@21
    cmp-long v0, v2, v4

    #@23
    if-eqz v0, :cond_26

    #@25
    return v1

    #@26
    .line 131
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    #@29
    move-result v0

    #@2a
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    #@2d
    move-result v2

    #@2e
    if-eq v0, v2, :cond_31

    #@30
    return v1

    #@31
    .line 134
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    #@34
    move-result v0

    #@35
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    #@38
    move-result v2

    #@39
    if-eq v0, v2, :cond_3c

    #@3b
    return v1

    #@3c
    .line 137
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@47
    move-result-object p1

    #@48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4b
    move-result-object p1

    #@4c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result p1

    #@50
    return p1
.end method

.method public getDelay()J
    .registers 3

    #@0
    .line 61
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    #@2
    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    #@0
    .line 65
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    #@2
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    #@0
    .line 70
    iget-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_7

    #@5
    :cond_5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@7
    :goto_7
    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    #@0
    .line 74
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    #@2
    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    #@0
    .line 78
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 8

    #@0
    .line 142
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@7
    move-result-wide v2

    #@8
    const/16 v4, 0x20

    #@a
    ushr-long/2addr v2, v4

    #@b
    xor-long/2addr v0, v2

    #@c
    long-to-int v0, v0

    #@d
    mul-int/lit8 v0, v0, 0x1f

    #@f
    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@12
    move-result-wide v1

    #@13
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@16
    move-result-wide v5

    #@17
    ushr-long v3, v5, v4

    #@19
    xor-long/2addr v1, v3

    #@1a
    long-to-int v1, v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    mul-int/lit8 v0, v0, 0x1f

    #@1e
    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@29
    move-result v1

    #@2a
    add-int/2addr v0, v1

    #@2b
    mul-int/lit8 v0, v0, 0x1f

    #@2d
    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    #@30
    move-result v1

    #@31
    add-int/2addr v0, v1

    #@32
    mul-int/lit8 v0, v0, 0x1f

    #@34
    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    #@37
    move-result v1

    #@38
    add-int/2addr v0, v1

    #@39
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "\n"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    const/16 v1, 0x7b

    #@14
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 157
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    const-string v1, " delay: "

    #@24
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@2a
    move-result-wide v1

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2e
    const-string v1, " duration: "

    #@30
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@36
    move-result-wide v1

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    const-string v1, " interpolator: "

    #@3c
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    const-string v1, " repeatCount: "

    #@4c
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    #@52
    move-result v1

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    const-string v1, " repeatMode: "

    #@58
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    #@5e
    move-result v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    const-string v1, "}\n"

    #@64
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    return-object v0
.end method

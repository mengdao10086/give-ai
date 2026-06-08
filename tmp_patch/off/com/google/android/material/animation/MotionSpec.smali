.class public Lcom/google/android/material/animation/MotionSpec;
.super Ljava/lang/Object;
.source "MotionSpec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionSpec"


# instance fields
.field private final propertyValues:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final timings:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/animation/MotionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@5
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@a
    .line 71
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@c
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->propertyValues:Landroidx/collection/SimpleArrayMap;

    #@11
    return-void
.end method

.method private static addInfoFromAnimator(Lcom/google/android/material/animation/MotionSpec;Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 215
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    #@2
    if-eqz v0, :cond_1d

    #@4
    .line 216
    check-cast p1, Landroid/animation/ObjectAnimator;

    #@6
    .line 217
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    #@11
    .line 218
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {p1}, Lcom/google/android/material/animation/MotionTiming;->createFromAnimator(Landroid/animation/ValueAnimator;)Lcom/google/android/material/animation/MotionTiming;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/animation/MotionSpec;->setTiming(Ljava/lang/String;Lcom/google/android/material/animation/MotionTiming;)V

    #@1c
    return-void

    #@1d
    .line 220
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    const-string v1, "Animator must be an ObjectAnimator: "

    #@23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw p0
.end method

.method private clonePropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)[Landroid/animation/PropertyValuesHolder;
    .registers 5

    #@0
    .line 128
    array-length v0, p1

    #@1
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    #@3
    const/4 v1, 0x0

    #@4
    .line 129
    :goto_4
    array-length v2, p1

    #@5
    if-ge v1, v2, :cond_12

    #@7
    .line 130
    aget-object v2, p1, v1

    #@9
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v0, v1

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_4

    #@12
    :cond_12
    return-object v0
.end method

.method public static createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;
    .registers 4

    #@0
    .line 175
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    const/4 v0, 0x0

    #@7
    .line 176
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_12

    #@d
    .line 178
    invoke-static {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    return-object p0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 188
    :try_start_1
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@4
    move-result-object p0

    #@5
    .line 189
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    #@7
    if-eqz v1, :cond_14

    #@9
    .line 190
    check-cast p0, Landroid/animation/AnimatorSet;

    #@b
    .line 191
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    #@e
    move-result-object p0

    #@f
    invoke-static {p0}, Lcom/google/android/material/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Lcom/google/android/material/animation/MotionSpec;

    #@12
    move-result-object p0

    #@13
    return-object p0

    #@14
    :cond_14
    if-eqz p0, :cond_23

    #@16
    .line 193
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 194
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 195
    invoke-static {v1}, Lcom/google/android/material/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Lcom/google/android/material/animation/MotionSpec;

    #@21
    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    #@22
    return-object p0

    #@23
    :cond_23
    return-object v0

    #@24
    :catch_24
    move-exception p0

    #@25
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    const-string v2, "Can\'t load animation resource ID #0x"

    #@29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p1

    #@34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    const-string v1, "MotionSpec"

    #@3a
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    return-object v0
.end method

.method private static createSpecFromAnimators(Ljava/util/List;)Lcom/google/android/material/animation/MotionSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)",
            "Lcom/google/android/material/animation/MotionSpec;"
        }
    .end annotation

    #@0
    .line 207
    new-instance v0, Lcom/google/android/material/animation/MotionSpec;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/animation/MotionSpec;-><init>()V

    #@5
    .line 208
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v1, :cond_18

    #@c
    .line 209
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/animation/Animator;

    #@12
    invoke-static {v0, v3}, Lcom/google/android/material/animation/MotionSpec;->addInfoFromAnimator(Lcom/google/android/material/animation/MotionSpec;Landroid/animation/Animator;)V

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_a

    #@18
    :cond_18
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    return p1

    #@4
    .line 229
    :cond_4
    instance-of v0, p1, Lcom/google/android/material/animation/MotionSpec;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    return p1

    #@a
    .line 233
    :cond_a
    check-cast p1, Lcom/google/android/material/animation/MotionSpec;

    #@c
    .line 235
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@e
    iget-object p1, p1, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@10
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method public getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/util/Property<",
            "TT;*>;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    #@0
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@7
    move-result-object p2

    #@8
    .line 150
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    #@b
    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    #@e
    move-result-object p1

    #@f
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    #@12
    return-object p2
.end method

.method public getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;
    .registers 3

    #@0
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 113
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->propertyValues:Landroidx/collection/SimpleArrayMap;

    #@8
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, [Landroid/animation/PropertyValuesHolder;

    #@e
    invoke-direct {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->clonePropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)[Landroid/animation/PropertyValuesHolder;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 111
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@15
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@18
    throw p1
.end method

.method public getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;
    .registers 3

    #@0
    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->hasTiming(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 87
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@8
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Lcom/google/android/material/animation/MotionTiming;

    #@e
    return-object p1

    #@f
    .line 85
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw p1
.end method

.method public getTotalDuration()J
    .registers 10

    #@0
    .line 161
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    #@5
    move-result v0

    #@6
    const-wide/16 v1, 0x0

    #@8
    const/4 v3, 0x0

    #@9
    :goto_9
    if-ge v3, v0, :cond_23

    #@b
    .line 162
    iget-object v4, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@d
    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/google/android/material/animation/MotionTiming;

    #@13
    .line 163
    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    #@16
    move-result-wide v5

    #@17
    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    #@1a
    move-result-wide v7

    #@1b
    add-long/2addr v5, v7

    #@1c
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    #@1f
    move-result-wide v1

    #@20
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_9

    #@23
    :cond_23
    return-wide v1
.end method

.method public hasPropertyValues(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 99
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->propertyValues:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    return p1
.end method

.method public hasTiming(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 76
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    return p1
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 240
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V
    .registers 4

    #@0
    .line 123
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->propertyValues:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public setTiming(Ljava/lang/String;Lcom/google/android/material/animation/MotionTiming;)V
    .registers 4

    #@0
    .line 92
    iget-object v0, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "\n"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 248
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
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 250
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
    const-string v1, " timings: "

    #@24
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 252
    iget-object v1, p0, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    const-string v1, "}\n"

    #@2e
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

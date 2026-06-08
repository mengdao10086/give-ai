.class final Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DragForce"
.end annotation


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private mFriction:F

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, -0x3f79999a    # -4.2f

    #@6
    .line 202
    iput v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    #@8
    .line 206
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@a
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    #@d
    iput-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@f
    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 3

    #@0
    .line 228
    iget p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    #@2
    mul-float/2addr p2, p1

    #@3
    return p2
.end method

.method getFrictionScalar()F
    .registers 3

    #@0
    .line 213
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    #@2
    const v1, -0x3f79999a    # -4.2f

    #@5
    div-float/2addr v0, v1

    #@6
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 3

    #@0
    .line 233
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result p1

    #@4
    iget p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    #@6
    cmpg-float p1, p1, p2

    #@8
    if-gez p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method setFrictionScalar(F)V
    .registers 3

    #@0
    const v0, -0x3f79999a    # -4.2f

    #@3
    mul-float/2addr p1, v0

    #@4
    .line 209
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    #@6
    return-void
.end method

.method setValueThreshold(F)V
    .registers 3

    #@0
    const/high16 v0, 0x427a0000    # 62.5f

    #@2
    mul-float/2addr p1, v0

    #@3
    .line 237
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    #@5
    return-void
.end method

.method updateValueAndVelocity(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 10

    #@0
    .line 217
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@2
    float-to-double v1, p2

    #@3
    long-to-float p3, p3

    #@4
    const/high16 p4, 0x447a0000    # 1000.0f

    #@6
    div-float v3, p3, p4

    #@8
    iget v4, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    #@a
    mul-float/2addr v3, v4

    #@b
    float-to-double v3, v3

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    #@f
    move-result-wide v3

    #@10
    mul-double/2addr v1, v3

    #@11
    double-to-float v1, v1

    #@12
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@14
    .line 218
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@16
    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    #@18
    div-float v2, p2, v1

    #@1a
    sub-float/2addr p1, v2

    #@1b
    float-to-double v2, p1

    #@1c
    div-float/2addr p2, v1

    #@1d
    float-to-double p1, p2

    #@1e
    mul-float/2addr v1, p3

    #@1f
    div-float/2addr v1, p4

    #@20
    float-to-double p3, v1

    #@21
    .line 219
    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    #@24
    move-result-wide p3

    #@25
    mul-double/2addr p1, p3

    #@26
    add-double/2addr v2, p1

    #@27
    double-to-float p1, v2

    #@28
    iput p1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    #@2a
    .line 220
    iget-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@2c
    iget p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    #@2e
    iget-object p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@30
    iget p2, p2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@32
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    #@35
    move-result p1

    #@36
    if-eqz p1, :cond_3d

    #@38
    .line 221
    iget-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@3a
    const/4 p2, 0x0

    #@3b
    iput p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@3d
    .line 223
    :cond_3d
    iget-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@3f
    return-object p1
.end method

.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 3

    #@0
    .line 58
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    #@3
    .line 43
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@5
    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@a
    .line 59
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    #@d
    move-result v0

    #@e
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    #@11
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
    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    #@3
    .line 43
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@5
    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@a
    .line 71
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    #@d
    move-result p2

    #@e
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    #@11
    return-void
.end method


# virtual methods
.method getAcceleration(FF)F
    .registers 4

    #@0
    .line 179
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getFriction()F
    .registers 2

    #@0
    .line 98
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@2
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4

    #@0
    .line 184
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-gez v0, :cond_17

    #@6
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    #@8
    cmpg-float v0, p1, v0

    #@a
    if-lez v0, :cond_17

    #@c
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@e
    .line 186
    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    const/4 p1, 0x1

    #@18
    :goto_18
    return p1
.end method

.method public setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-lez v0, :cond_b

    #@5
    .line 87
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@7
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    #@a
    return-object p0

    #@b
    .line 85
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v0, "Friction must be positive"

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1
.end method

.method public bridge synthetic setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    #@0
    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 2

    #@0
    .line 123
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    #@3
    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    #@0
    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 2

    #@0
    .line 110
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    #@3
    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    #@0
    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 2

    #@0
    .line 150
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    #@3
    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 3

    #@0
    .line 191
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@2
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    #@5
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 6

    #@0
    .line 157
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    #@2
    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    #@4
    iget v2, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    #@6
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    #@9
    move-result-object p1

    #@a
    .line 158
    iget p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    #@c
    iput p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    #@e
    .line 159
    iget p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    #@10
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    #@12
    .line 162
    iget p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    #@14
    iget p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    #@16
    cmpg-float p1, p1, p2

    #@18
    const/4 p2, 0x1

    #@19
    if-gez p1, :cond_20

    #@1b
    .line 163
    iget p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    #@1d
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    #@1f
    return p2

    #@20
    .line 166
    :cond_20
    iget p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    #@22
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    #@24
    cmpl-float p1, p1, v0

    #@26
    if-lez p1, :cond_2d

    #@28
    .line 167
    iget p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    #@2a
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    #@2c
    return p2

    #@2d
    .line 171
    :cond_2d
    iget p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    #@2f
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    #@31
    invoke-virtual {p0, p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    #@34
    move-result p1

    #@35
    if-eqz p1, :cond_38

    #@37
    return p2

    #@38
    :cond_38
    const/4 p1, 0x0

    #@39
    return p1
.end method

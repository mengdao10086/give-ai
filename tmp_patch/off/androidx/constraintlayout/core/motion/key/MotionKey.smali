.class public abstract Landroidx/constraintlayout/core/motion/key/MotionKey;
.super Ljava/lang/Object;
.source "MotionKey.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final ELEVATION:Ljava/lang/String; = "elevation"

.field public static final ROTATION:Ljava/lang/String; = "rotationZ"

.field public static final ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final TRANSITION_PATH_ROTATE:Ljava/lang/String; = "transitionPathRotate"

.field public static final TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static UNSET:I = -0x1

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"


# instance fields
.field public mCustom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field public mFramePosition:I

.field mTargetId:I

.field mTargetString:Ljava/lang/String;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    #@5
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@7
    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    #@9
    const/4 v0, 0x0

    #@a
    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    #@c
    return-void
.end method


# virtual methods
.method public abstract addValues(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 32
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 3

    #@0
    .line 116
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@2
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@4
    .line 117
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    #@6
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    #@8
    .line 118
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    #@a
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    #@c
    .line 119
    iget p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    #@e
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    #@10
    return-object p0
.end method

.method public abstract getAttributeNames(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public getFramePosition()I
    .registers 2

    #@0
    .line 145
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@2
    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_c

    #@4
    if-nez p1, :cond_7

    #@6
    goto :goto_c

    #@7
    .line 61
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@a
    move-result p1

    #@b
    return p1

    #@c
    :cond_c
    :goto_c
    const/4 p1, 0x0

    #@d
    return p1
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .registers 6

    #@0
    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@2
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .registers 6

    #@0
    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@2
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    #@0
    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@2
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .registers 6

    #@0
    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    #@2
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IZ)V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public setFramePosition(I)V
    .registers 2

    #@0
    .line 136
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@2
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public setValue(IF)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setValue(II)Z
    .registers 4

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p1, v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    .line 152
    :cond_6
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    #@8
    const/4 p1, 0x1

    #@9
    return p1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    #@0
    const/16 v0, 0x65

    #@2
    if-eq p1, v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    .line 165
    :cond_6
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    #@8
    const/4 p1, 0x1

    #@9
    return p1
.end method

.method public setValue(IZ)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setViewId(I)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    #@0
    .line 126
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    #@2
    return-object p0
.end method

.method toBoolean(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 103
    instance-of v0, p1, Ljava/lang/Boolean;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p1, Ljava/lang/Boolean;

    #@6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@9
    move-result p1

    #@a
    goto :goto_13

    #@b
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@12
    move-result p1

    #@13
    :goto_13
    return p1
.end method

.method toFloat(Ljava/lang/Object;)F
    .registers 3

    #@0
    .line 81
    instance-of v0, p1, Ljava/lang/Float;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p1, Ljava/lang/Float;

    #@6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p1

    #@a
    goto :goto_13

    #@b
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@12
    move-result p1

    #@13
    :goto_13
    return p1
.end method

.method toInt(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 92
    instance-of v0, p1, Ljava/lang/Integer;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p1, Ljava/lang/Integer;

    #@6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result p1

    #@a
    goto :goto_13

    #@b
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    :goto_13
    return p1
.end method

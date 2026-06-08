.class public abstract Landroidx/constraintlayout/motion/widget/Key;
.super Ljava/lang/Object;
.source "Key.java"


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final CURVEFIT:Ljava/lang/String; = "curveFit"

.field public static final CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final ELEVATION:Ljava/lang/String; = "elevation"

.field public static final MOTIONPROGRESS:Ljava/lang/String; = "motionProgress"

.field public static final PIVOT_X:Ljava/lang/String; = "transformPivotX"

.field public static final PIVOT_Y:Ljava/lang/String; = "transformPivotY"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final TRANSITIONEASING:Ljava/lang/String; = "transitionEasing"

.field public static final TRANSITION_PATH_ROTATE:Ljava/lang/String; = "transitionPathRotate"

.field public static final TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static UNSET:I = -0x1

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

.field public static final WAVE_PHASE:Ljava/lang/String; = "wavePhase"

.field public static final WAVE_VARIES_BY:Ljava/lang/String; = "waveVariesBy"


# instance fields
.field mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mFramePosition:I

.field mTargetId:I

.field mTargetString:Ljava/lang/String;

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    #@5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@7
    .line 38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    #@9
    const/4 v0, 0x0

    #@a
    .line 39
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    #@c
    return-void
.end method


# virtual methods
.method public abstract addValues(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clone()Landroidx/constraintlayout/motion/widget/Key;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 35
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/Key;->clone()Landroidx/constraintlayout/motion/widget/Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    #@0
    .line 138
    iget v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@4
    .line 139
    iget v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    #@6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    #@8
    .line 140
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    #@a
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    #@c
    .line 141
    iget v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    #@e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    #@10
    .line 142
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@12
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@14
    return-object p0
.end method

.method abstract getAttributeNames(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

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
    .line 168
    iget v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@2
    return v0
.end method

.method abstract load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintTag"
        }
    .end annotation

    #@0
    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_c

    #@4
    if-nez p1, :cond_7

    #@6
    goto :goto_c

    #@7
    .line 74
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

.method public setFramePosition(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    #@0
    .line 159
    iput p1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@2
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolation"
        }
    .end annotation

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

.method public abstract setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation
.end method

.method public setViewId(I)Landroidx/constraintlayout/motion/widget/Key;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 149
    iput p1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    #@2
    return-object p0
.end method

.method toBoolean(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 125
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 103
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 114
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

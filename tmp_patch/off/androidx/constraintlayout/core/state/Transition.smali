.class public Landroidx/constraintlayout/core/state/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/Transition$KeyPosition;,
        Landroidx/constraintlayout/core/state/Transition$WidgetState;
    }
.end annotation


# static fields
.field static final ANTICIPATE:I = 0x6

.field static final BOUNCE:I = 0x4

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field public static final END:I = 0x1

.field public static final INTERPOLATED:I = 0x2

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field static final LINEAR:I = 0x3

.field static final OVERSHOOT:I = 0x5

.field private static final SPLINE_STRING:I = -0x1

.field public static final START:I


# instance fields
.field keyPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/state/Transition$KeyPosition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAutoTransition:I

.field mBundle:Landroidx/constraintlayout/core/motion/utils/TypedBundle;

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDuration:I

.field private mEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field private mStagger:F

.field private state:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/state/Transition$WidgetState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@a
    .line 48
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@11
    .line 49
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@13
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->mBundle:Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@18
    const/4 v0, 0x0

    #@19
    .line 51
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition;->mDefaultInterpolator:I

    #@1b
    const/4 v1, 0x0

    #@1c
    .line 52
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    #@1e
    .line 53
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Transition;->mEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@20
    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition;->mAutoTransition:I

    #@22
    const/16 v0, 0x190

    #@24
    .line 55
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition;->mDuration:I

    #@26
    const/4 v0, 0x0

    #@27
    .line 56
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition;->mStagger:F

    #@29
    return-void
.end method

.method public static getInterpolator(ILjava/lang/String;)Landroidx/constraintlayout/core/state/Interpolator;
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_36

    #@3
    const/4 p0, 0x0

    #@4
    return-object p0

    #@5
    .line 71
    :pswitch_5
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda5;

    #@7
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda5;-><init>()V

    #@a
    return-object p0

    #@b
    .line 73
    :pswitch_b
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda6;

    #@d
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda6;-><init>()V

    #@10
    return-object p0

    #@11
    .line 75
    :pswitch_11
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda7;

    #@13
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda7;-><init>()V

    #@16
    return-object p0

    #@17
    .line 69
    :pswitch_17
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda4;

    #@19
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda4;-><init>()V

    #@1c
    return-object p0

    #@1d
    .line 67
    :pswitch_1d
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda3;

    #@1f
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda3;-><init>()V

    #@22
    return-object p0

    #@23
    .line 65
    :pswitch_23
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda2;

    #@25
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda2;-><init>()V

    #@28
    return-object p0

    #@29
    .line 63
    :pswitch_29
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda1;

    #@2b
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda1;-><init>()V

    #@2e
    return-object p0

    #@2f
    .line 61
    :pswitch_2f
    new-instance p0, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda0;

    #@31
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/Transition$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    #@34
    return-object p0

    #@35
    nop

    #@36
    :pswitch_data_36
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method private getWidgetState(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Transition$WidgetState;
    .registers 3

    #@0
    .line 298
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@8
    return-object p1
.end method

.method private getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;
    .registers 7

    #@0
    .line 302
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@8
    if-nez v0, :cond_20

    #@a
    .line 304
    new-instance v0, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@c
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Transition$WidgetState;-><init>()V

    #@f
    .line 305
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition;->mBundle:Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@11
    iget-object v2, v0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    #@13
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    #@16
    .line 307
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@18
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    if-eqz p2, :cond_20

    #@1d
    .line 309
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    #@20
    :cond_20
    return-object v0
.end method

.method static synthetic lambda$getInterpolator$0(Ljava/lang/String;F)F
    .registers 4

    #@0
    .line 61
    invoke-static {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@3
    move-result-object p0

    #@4
    float-to-double v0, p1

    #@5
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@8
    move-result-wide p0

    #@9
    double-to-float p0, p0

    #@a
    return p0
.end method

.method static synthetic lambda$getInterpolator$1(F)F
    .registers 4

    #@0
    const-string v0, "standard"

    #@2
    .line 63
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@5
    move-result-object v0

    #@6
    float-to-double v1, p0

    #@7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-float p0, v0

    #@c
    return p0
.end method

.method static synthetic lambda$getInterpolator$2(F)F
    .registers 4

    #@0
    const-string v0, "accelerate"

    #@2
    .line 65
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@5
    move-result-object v0

    #@6
    float-to-double v1, p0

    #@7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-float p0, v0

    #@c
    return p0
.end method

.method static synthetic lambda$getInterpolator$3(F)F
    .registers 4

    #@0
    const-string v0, "decelerate"

    #@2
    .line 67
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@5
    move-result-object v0

    #@6
    float-to-double v1, p0

    #@7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-float p0, v0

    #@c
    return p0
.end method

.method static synthetic lambda$getInterpolator$4(F)F
    .registers 4

    #@0
    const-string v0, "linear"

    #@2
    .line 69
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@5
    move-result-object v0

    #@6
    float-to-double v1, p0

    #@7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-float p0, v0

    #@c
    return p0
.end method

.method static synthetic lambda$getInterpolator$5(F)F
    .registers 4

    #@0
    const-string v0, "anticipate"

    #@2
    .line 71
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@5
    move-result-object v0

    #@6
    float-to-double v1, p0

    #@7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-float p0, v0

    #@c
    return p0
.end method

.method static synthetic lambda$getInterpolator$6(F)F
    .registers 4

    #@0
    const-string v0, "overshoot"

    #@2
    .line 73
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@5
    move-result-object v0

    #@6
    float-to-double v1, p0

    #@7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-float p0, v0

    #@c
    return p0
.end method

.method static synthetic lambda$getInterpolator$7(F)F
    .registers 4

    #@0
    const-string v0, "spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)"

    #@2
    .line 75
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@5
    move-result-object v0

    #@6
    float-to-double v1, p0

    #@7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-float p0, v0

    #@c
    return p0
.end method


# virtual methods
.method public addCustomColor(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 234
    invoke-direct {p0, p2, v0, p1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@4
    move-result-object p2

    #@5
    .line 235
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->getFrame(I)Landroidx/constraintlayout/core/state/WidgetFrame;

    #@8
    move-result-object p1

    #@9
    .line 236
    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/core/state/WidgetFrame;->addCustomColor(Ljava/lang/String;I)V

    #@c
    return-void
.end method

.method public addCustomFloat(ILjava/lang/String;Ljava/lang/String;F)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 228
    invoke-direct {p0, p2, v0, p1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@4
    move-result-object p2

    #@5
    .line 229
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->getFrame(I)Landroidx/constraintlayout/core/state/WidgetFrame;

    #@8
    move-result-object p1

    #@9
    .line 230
    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/core/state/WidgetFrame;->addCustomFloat(Ljava/lang/String;F)V

    #@c
    return-void
.end method

.method public addKeyAttribute(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 203
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->setKeyAttribute(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    #@9
    return-void
.end method

.method public addKeyCycle(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 207
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->setKeyCycle(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    #@9
    return-void
.end method

.method public addKeyPosition(Ljava/lang/String;IIFF)V
    .registers 14

    #@0
    .line 211
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    #@5
    const/16 v1, 0x1fe

    #@7
    const/4 v2, 0x2

    #@8
    .line 212
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    #@b
    const/16 v1, 0x64

    #@d
    .line 213
    invoke-virtual {v0, v1, p2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    #@10
    const/16 v1, 0x1fa

    #@12
    .line 214
    invoke-virtual {v0, v1, p4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    #@15
    const/16 v1, 0x1fb

    #@17
    .line 215
    invoke-virtual {v0, v1, p5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    #@1a
    const/4 v1, 0x0

    #@1b
    const/4 v2, 0x0

    #@1c
    .line 216
    invoke-direct {p0, p1, v1, v2}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->setKeyPosition(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    #@23
    .line 218
    new-instance v0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;

    #@25
    move-object v2, v0

    #@26
    move-object v3, p1

    #@27
    move v4, p2

    #@28
    move v5, p3

    #@29
    move v6, p4

    #@2a
    move v7, p5

    #@2b
    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/core/state/Transition$KeyPosition;-><init>(Ljava/lang/String;IIFF)V

    #@2e
    .line 219
    iget-object p3, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object p4

    #@34
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object p3

    #@38
    check-cast p3, Ljava/util/HashMap;

    #@3a
    if-nez p3, :cond_4a

    #@3c
    .line 221
    new-instance p3, Ljava/util/HashMap;

    #@3e
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    #@41
    .line 222
    iget-object p4, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object p2

    #@47
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 224
    :cond_4a
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    return-void
.end method

.method public addKeyPosition(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 199
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->setKeyPosition(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    #@9
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public fillKeyPositions(Landroidx/constraintlayout/core/state/WidgetFrame;[F[F[F)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    const/16 v2, 0x64

    #@4
    if-gt v0, v2, :cond_32

    #@6
    .line 132
    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/util/HashMap;

    #@12
    if-eqz v2, :cond_2f

    #@14
    .line 134
    iget-object v3, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroidx/constraintlayout/core/state/Transition$KeyPosition;

    #@1e
    if-eqz v2, :cond_2f

    #@20
    .line 136
    iget v3, v2, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->x:F

    #@22
    aput v3, p2, v1

    #@24
    .line 137
    iget v3, v2, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->y:F

    #@26
    aput v3, p3, v1

    #@28
    .line 138
    iget v2, v2, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->frame:I

    #@2a
    int-to-float v2, v2

    #@2b
    aput v2, p4, v1

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_2

    #@32
    :cond_32
    return-void
.end method

.method public findNextPosition(Ljava/lang/String;I)Landroidx/constraintlayout/core/state/Transition$KeyPosition;
    .registers 5

    #@0
    :goto_0
    const/16 v0, 0x64

    #@2
    if-gt p2, v0, :cond_1e

    #@4
    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/HashMap;

    #@10
    if-eqz v0, :cond_1b

    #@12
    .line 98
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;

    #@18
    if-eqz v0, :cond_1b

    #@1a
    return-object v0

    #@1b
    :cond_1b
    add-int/lit8 p2, p2, 0x1

    #@1d
    goto :goto_0

    #@1e
    :cond_1e
    const/4 p1, 0x0

    #@1f
    return-object p1
.end method

.method public findPreviousPosition(Ljava/lang/String;I)Landroidx/constraintlayout/core/state/Transition$KeyPosition;
    .registers 5

    #@0
    :goto_0
    if-ltz p2, :cond_1c

    #@2
    .line 82
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/HashMap;

    #@e
    if-eqz v0, :cond_19

    #@10
    .line 84
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;

    #@16
    if-eqz v0, :cond_19

    #@18
    return-object v0

    #@19
    :cond_19
    add-int/lit8 p2, p2, -0x1

    #@1b
    goto :goto_0

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    return-object p1
.end method

.method public getAutoTransition()I
    .registers 2

    #@0
    .line 350
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition;->mAutoTransition:I

    #@2
    return v0
.end method

.method public getEnd(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 4

    #@0
    .line 332
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@7
    move-result-object p1

    #@8
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@a
    return-object p1
.end method

.method public getEnd(Ljava/lang/String;)Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 3

    #@0
    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return-object p1

    #@c
    .line 272
    :cond_c
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@e
    return-object p1
.end method

.method public getId(Ljava/lang/String;)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public getInterpolated(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 4

    #@0
    .line 342
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x2

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@7
    move-result-object p1

    #@8
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@a
    return-object p1
.end method

.method public getInterpolated(Ljava/lang/String;)Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 3

    #@0
    .line 276
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return-object p1

    #@c
    .line 280
    :cond_c
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@e
    return-object p1
.end method

.method public getInterpolator()Landroidx/constraintlayout/core/state/Interpolator;
    .registers 3

    #@0
    .line 346
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition;->mDefaultInterpolator:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getInterpolator(ILjava/lang/String;)Landroidx/constraintlayout/core/state/Interpolator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getKeyFrames(Ljava/lang/String;[F[I[I)I
    .registers 6

    #@0
    .line 293
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@8
    .line 294
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    #@a
    invoke-virtual {p1, p2, p3, p4}, Landroidx/constraintlayout/core/motion/Motion;->buildKeyFrames([F[I[I)I

    #@d
    move-result p1

    #@e
    return p1
.end method

.method public getMotion(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/Motion;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 125
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@5
    move-result-object p1

    #@6
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    #@8
    return-object p1
.end method

.method public getNumberKeyPositions(Landroidx/constraintlayout/core/state/WidgetFrame;)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    const/16 v2, 0x64

    #@4
    if-gt v0, v2, :cond_25

    #@6
    .line 112
    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/util/HashMap;

    #@12
    if-eqz v2, :cond_22

    #@14
    .line 114
    iget-object v3, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroidx/constraintlayout/core/state/Transition$KeyPosition;

    #@1e
    if-eqz v2, :cond_22

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    :cond_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_2

    #@25
    :cond_25
    return v1
.end method

.method public getPath(Ljava/lang/String;)[F
    .registers 4

    #@0
    .line 284
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@8
    const/16 v0, 0x7c

    #@a
    new-array v0, v0, [F

    #@c
    .line 288
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    #@e
    const/16 v1, 0x3e

    #@10
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->buildPath([FI)V

    #@13
    return-object v0
.end method

.method public getStart(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 4

    #@0
    .line 322
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@7
    move-result-object p1

    #@8
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@a
    return-object p1
.end method

.method public getStart(Ljava/lang/String;)Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 3

    #@0
    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return-object p1

    #@c
    .line 264
    :cond_c
    iget-object p1, p1, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@e
    return-object p1
.end method

.method public hasPositionKeyframes()Z
    .registers 2

    #@0
    .line 147
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->keyPositions:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public interpolate(IIF)V
    .registers 7

    #@0
    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->mEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@2
    if-eqz v0, :cond_a

    #@4
    float-to-double v1, p3

    #@5
    .line 251
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    #@8
    move-result-wide v0

    #@9
    double-to-float p3, v0

    #@a
    .line 253
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2c

    #@1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    .line 254
    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@28
    .line 255
    invoke-virtual {v1, p1, p2, p3, p0}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolate(IIFLandroidx/constraintlayout/core/state/Transition;)V

    #@2b
    goto :goto_14

    #@2c
    :cond_2c
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 187
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->state:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setTransitionProperties(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .registers 3

    #@0
    .line 151
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition;->mBundle:Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    #@5
    .line 152
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    #@8
    return-void
.end method

.method public setValue(IF)Z
    .registers 4

    #@0
    const/16 v0, 0x2c2

    #@2
    if-ne p1, v0, :cond_6

    #@4
    .line 163
    iput p2, p0, Landroidx/constraintlayout/core/state/Transition;->mStagger:F

    #@6
    :cond_6
    const/4 p1, 0x0

    #@7
    return p1
.end method

.method public setValue(II)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    #@0
    const/16 v0, 0x2c1

    #@2
    if-ne p1, v0, :cond_c

    #@4
    .line 171
    iput-object p2, p0, Landroidx/constraintlayout/core/state/Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    #@6
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@9
    move-result-object p1

    #@a
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Transition;->mEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    return p1
.end method

.method public setValue(IZ)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public updateFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)V
    .registers 8

    #@0
    .line 240
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@3
    move-result-object p1

    #@4
    .line 241
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_9
    if-ge v1, v0, :cond_1e

    #@b
    .line 243
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@11
    .line 244
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {p0, v3, v4, p2}, Landroidx/constraintlayout/core/state/Transition;->getWidgetState(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Landroidx/constraintlayout/core/state/Transition$WidgetState;

    #@17
    move-result-object v3

    #@18
    .line 245
    invoke-virtual {v3, v2, p2}, Landroidx/constraintlayout/core/state/Transition$WidgetState;->update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_9

    #@1e
    :cond_1e
    return-void
.end method

.class public Landroidx/constraintlayout/motion/widget/KeyTrigger;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;
    }
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_TYPE:I = 0x5

.field static final NAME:Ljava/lang/String; = "KeyTrigger"

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# instance fields
.field mCollisionRect:Landroid/graphics/RectF;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field mMethodHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroid/graphics/RectF;

.field private mTriggerCollisionId:I

.field private mTriggerCollisionView:Landroid/view/View;

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
    .line 46
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 63
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    #@9
    .line 64
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@d
    .line 65
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@f
    .line 66
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@11
    .line 67
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@13
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    #@15
    .line 68
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@19
    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    #@1b
    const v0, 0x3dcccccd    # 0.1f

    #@1e
    .line 70
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@20
    const/4 v0, 0x1

    #@21
    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@23
    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@25
    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@27
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@29
    .line 74
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@2b
    const/4 v0, 0x0

    #@2c
    .line 76
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@2e
    .line 77
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@30
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    #@32
    .line 78
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@34
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    #@36
    .line 79
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    #@3a
    .line 81
    new-instance v0, Landroid/graphics/RectF;

    #@3c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@3f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    #@41
    .line 82
    new-instance v0, Landroid/graphics/RectF;

    #@43
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@46
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    #@48
    .line 83
    new-instance v0, Ljava/util/HashMap;

    #@4a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@4d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    #@4f
    const/4 v0, 0x5

    #@50
    .line 87
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mType:I

    #@52
    .line 88
    new-instance v0, Ljava/util/HashMap;

    #@54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@57
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    #@59
    return-void
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyTrigger;F)F
    .registers 2

    #@0
    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@2
    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 1

    #@0
    .line 46
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    #@2
    return p0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2

    #@0
    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    #@2
    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 1

    #@0
    .line 46
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@2
    return p0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2

    #@0
    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@2
    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyTrigger;)Z
    .registers 1

    #@0
    .line 46
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@2
    return p0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyTrigger;Z)Z
    .registers 2

    #@0
    .line 46
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@2
    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 1

    #@0
    .line 46
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@2
    return p0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2

    #@0
    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@2
    return p1
.end method

.method private fire(Ljava/lang/String;Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "call"
        }
    .end annotation

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const-string v0, "."

    #@5
    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_f

    #@b
    .line 287
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fireCustom(Ljava/lang/String;Landroid/view/View;)V

    #@e
    return-void

    #@f
    .line 291
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    const/4 v1, 0x0

    #@16
    if-eqz v0, :cond_23

    #@18
    .line 292
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/reflect/Method;

    #@20
    if-nez v0, :cond_24

    #@22
    return-void

    #@23
    :cond_23
    move-object v0, v1

    #@24
    :cond_24
    const-string v2, " "

    #@26
    const-string v3, "\"on class "

    #@28
    const-string v4, "KeyTrigger"

    #@2a
    const/4 v5, 0x0

    #@2b
    if-nez v0, :cond_71

    #@2d
    .line 299
    :try_start_2d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@30
    move-result-object v0

    #@31
    new-array v6, v5, [Ljava/lang/Class;

    #@33
    invoke-virtual {v0, p1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@36
    move-result-object v0

    #@37
    .line 300
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    #@39
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_3c} :catch_3d

    #@3c
    goto :goto_71

    #@3d
    .line 302
    :catch_3d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    const-string v1, "Could not find method \""

    #@46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object p1

    #@4d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object p1

    #@51
    .line 304
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object p1

    #@5d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object p1

    #@61
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@64
    move-result-object p2

    #@65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object p1

    #@69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object p1

    #@6d
    .line 303
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    return-void

    #@71
    :cond_71
    :goto_71
    :try_start_71
    new-array p1, v5, [Ljava/lang/Object;

    #@73
    .line 309
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_77

    #@76
    goto :goto_a7

    #@77
    .line 311
    :catch_77
    new-instance p1, Ljava/lang/StringBuilder;

    #@79
    const-string v0, "Exception in call \""

    #@7b
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    #@80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object p1

    #@84
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object p1

    #@88
    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object p1

    #@94
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object p1

    #@98
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@9b
    move-result-object p2

    #@9c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object p1

    #@a0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object p1

    #@a4
    .line 311
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    :goto_a7
    return-void
.end method

.method private fireCustom(Ljava/lang/String;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "view"
        }
    .end annotation

    #@0
    .line 317
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
    .line 319
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
    .line 321
    :cond_16
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

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
    .line 322
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    if-nez v0, :cond_3a

    #@34
    .line 323
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_20

    #@3a
    .line 324
    :cond_3a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@42
    if-eqz v2, :cond_20

    #@44
    .line 326
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->applyCustom(Landroid/view/View;)V

    #@47
    goto :goto_20

    #@48
    :cond_48
    return-void
.end method

.method private setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "child",
            "postLayout"
        }
    .end annotation

    #@0
    .line 158
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    iput v0, p1, Landroid/graphics/RectF;->top:F

    #@7
    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@a
    move-result v0

    #@b
    int-to-float v0, v0

    #@c
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    #@e
    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@11
    move-result v0

    #@12
    int-to-float v0, v0

    #@13
    iput v0, p1, Landroid/graphics/RectF;->left:F

    #@15
    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@18
    move-result v0

    #@19
    int-to-float v0, v0

    #@1a
    iput v0, p1, Landroid/graphics/RectF;->right:F

    #@1c
    if-eqz p3, :cond_25

    #@1e
    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@21
    move-result-object p2

    #@22
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@25
    :cond_25
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
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

    #@0
    return-void
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    #@0
    .line 454
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

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
    .line 46
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->clone()Landroidx/constraintlayout/motion/widget/Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public conditionallyFire(FLandroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "child"
        }
    .end annotation

    #@0
    .line 172
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@2
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    if-eq v0, v1, :cond_62

    #@8
    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    #@a
    if-nez v0, :cond_1a

    #@c
    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/view/ViewGroup;

    #@12
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    #@1a
    .line 177
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    #@1c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    #@1e
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@20
    invoke-direct {p0, v0, v1, v4}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    #@23
    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    #@25
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@27
    invoke-direct {p0, v0, p2, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    #@2a
    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    #@2c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    #@2e
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_4c

    #@34
    .line 182
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@36
    if-eqz v0, :cond_3c

    #@38
    .line 184
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@3a
    move v0, v2

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move v0, v3

    #@3d
    .line 186
    :goto_3d
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@3f
    if-eqz v1, :cond_45

    #@41
    .line 188
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@43
    move v1, v2

    #@44
    goto :goto_46

    #@45
    :cond_45
    move v1, v3

    #@46
    .line 190
    :goto_46
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@48
    move v4, v1

    #@49
    move v1, v3

    #@4a
    goto/16 :goto_e0

    #@4c
    .line 192
    :cond_4c
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@4e
    if-nez v0, :cond_54

    #@50
    .line 194
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@52
    move v0, v2

    #@53
    goto :goto_55

    #@54
    :cond_54
    move v0, v3

    #@55
    .line 196
    :goto_55
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@57
    if-eqz v1, :cond_5d

    #@59
    .line 198
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@5b
    move v1, v2

    #@5c
    goto :goto_5e

    #@5d
    :cond_5d
    move v1, v3

    #@5e
    .line 200
    :goto_5e
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@60
    goto/16 :goto_df

    #@62
    .line 206
    :cond_62
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@64
    const/4 v1, 0x0

    #@65
    if-eqz v0, :cond_77

    #@67
    .line 208
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@69
    sub-float v4, p1, v0

    #@6b
    .line 209
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    #@6d
    sub-float/2addr v5, v0

    #@6e
    mul-float/2addr v4, v5

    #@6f
    cmpg-float v0, v4, v1

    #@71
    if-gez v0, :cond_87

    #@73
    .line 213
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@75
    move v0, v2

    #@76
    goto :goto_88

    #@77
    .line 216
    :cond_77
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@79
    sub-float v0, p1, v0

    #@7b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@7e
    move-result v0

    #@7f
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@81
    cmpl-float v0, v0, v4

    #@83
    if-lez v0, :cond_87

    #@85
    .line 217
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@87
    :cond_87
    move v0, v3

    #@88
    .line 222
    :goto_88
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@8a
    if-eqz v4, :cond_a0

    #@8c
    .line 223
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@8e
    sub-float v5, p1, v4

    #@90
    .line 224
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    #@92
    sub-float/2addr v6, v4

    #@93
    mul-float/2addr v6, v5

    #@94
    cmpg-float v4, v6, v1

    #@96
    if-gez v4, :cond_b0

    #@98
    cmpg-float v4, v5, v1

    #@9a
    if-gez v4, :cond_b0

    #@9c
    .line 227
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@9e
    move v4, v2

    #@9f
    goto :goto_b1

    #@a0
    .line 230
    :cond_a0
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@a2
    sub-float v4, p1, v4

    #@a4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@a7
    move-result v4

    #@a8
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@aa
    cmpl-float v4, v4, v5

    #@ac
    if-lez v4, :cond_b0

    #@ae
    .line 231
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@b0
    :cond_b0
    move v4, v3

    #@b1
    .line 235
    :goto_b1
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@b3
    if-eqz v5, :cond_ce

    #@b5
    .line 236
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@b7
    sub-float v6, p1, v5

    #@b9
    .line 237
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    #@bb
    sub-float/2addr v7, v5

    #@bc
    mul-float/2addr v7, v6

    #@bd
    cmpg-float v5, v7, v1

    #@bf
    if-gez v5, :cond_c9

    #@c1
    cmpl-float v1, v6, v1

    #@c3
    if-lez v1, :cond_c9

    #@c5
    .line 240
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@c7
    move v1, v2

    #@c8
    goto :goto_ca

    #@c9
    :cond_c9
    move v1, v3

    #@ca
    :goto_ca
    move v8, v4

    #@cb
    move v4, v1

    #@cc
    move v1, v8

    #@cd
    goto :goto_e0

    #@ce
    .line 243
    :cond_ce
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@d0
    sub-float v1, p1, v1

    #@d2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@d5
    move-result v1

    #@d6
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@d8
    cmpl-float v1, v1, v5

    #@da
    if-lez v1, :cond_de

    #@dc
    .line 244
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@de
    :cond_de
    move v1, v4

    #@df
    :goto_df
    move v4, v3

    #@e0
    .line 248
    :goto_e0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    #@e2
    if-nez v1, :cond_e8

    #@e4
    if-nez v0, :cond_e8

    #@e6
    if-eqz v4, :cond_f3

    #@e8
    .line 251
    :cond_e8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@eb
    move-result-object v5

    #@ec
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@ee
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    #@f0
    invoke-virtual {v5, v6, v4, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTrigger(IZF)V

    #@f3
    .line 253
    :cond_f3
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@f5
    sget v5, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@f7
    if-ne p1, v5, :cond_fb

    #@f9
    move-object p1, p2

    #@fa
    goto :goto_107

    #@fb
    :cond_fb
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@fe
    move-result-object p1

    #@ff
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@101
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@103
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@106
    move-result-object p1

    #@107
    :goto_107
    if-eqz v1, :cond_125

    #@109
    .line 256
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@10b
    if-eqz v1, :cond_110

    #@10d
    .line 257
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    #@110
    .line 259
    :cond_110
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    #@112
    sget v5, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@114
    if-eq v1, v5, :cond_125

    #@116
    .line 260
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@119
    move-result-object v1

    #@11a
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@11c
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    #@11e
    new-array v6, v2, [Landroid/view/View;

    #@120
    aput-object p1, v6, v3

    #@122
    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    #@125
    :cond_125
    if-eqz v4, :cond_143

    #@127
    .line 264
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@129
    if-eqz v1, :cond_12e

    #@12b
    .line 265
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    #@12e
    .line 267
    :cond_12e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    #@130
    sget v4, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@132
    if-eq v1, v4, :cond_143

    #@134
    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@137
    move-result-object v1

    #@138
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@13a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    #@13c
    new-array v5, v2, [Landroid/view/View;

    #@13e
    aput-object p1, v5, v3

    #@140
    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    #@143
    :cond_143
    if-eqz v0, :cond_161

    #@145
    .line 272
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    #@147
    if-eqz v0, :cond_14c

    #@149
    .line 273
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    #@14c
    .line 275
    :cond_14c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    #@14e
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    #@150
    if-eq v0, v1, :cond_161

    #@152
    .line 276
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@155
    move-result-object p2

    #@156
    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@158
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    #@15a
    new-array v1, v2, [Landroid/view/View;

    #@15c
    aput-object p1, v1, v3

    #@15e
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    #@161
    :cond_161
    return-void
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
    .line 430
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    #@3
    .line 431
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@5
    .line 432
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    #@7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    #@9
    .line 433
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    #@d
    .line 434
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@11
    .line 435
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@15
    .line 436
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@17
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@19
    .line 437
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    #@1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    #@1d
    .line 438
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@21
    .line 439
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    #@23
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    #@25
    .line 440
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@29
    .line 441
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@2b
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    #@2d
    .line 442
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@2f
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    #@31
    .line 443
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@33
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    #@35
    .line 444
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    #@39
    .line 445
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    #@3b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    #@3d
    .line 446
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@3f
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@41
    .line 447
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    #@43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    #@45
    .line 448
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    #@47
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    #@49
    .line 449
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    #@4b
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    #@4d
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
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

    #@0
    return-void
.end method

.method getCurveFit()I
    .registers 2

    #@0
    .line 103
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    #@2
    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
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

    #@0
    .line 93
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p2

    #@6
    .line 94
    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    #@9
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
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

    #@0
    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_f2

    #@b
    goto/16 :goto_9c

    #@d
    :sswitch_d
    const-string v0, "triggerReceiver"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result p1

    #@13
    if-nez p1, :cond_17

    #@15
    goto/16 :goto_9c

    #@17
    :cond_17
    const/16 v1, 0xb

    #@19
    goto/16 :goto_9c

    #@1b
    :sswitch_1b
    const-string v0, "postLayout"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_25

    #@23
    goto/16 :goto_9c

    #@25
    :cond_25
    const/16 v1, 0xa

    #@27
    goto/16 :goto_9c

    #@29
    :sswitch_29
    const-string v0, "viewTransitionOnCross"

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result p1

    #@2f
    if-nez p1, :cond_33

    #@31
    goto/16 :goto_9c

    #@33
    :cond_33
    const/16 v1, 0x9

    #@35
    goto/16 :goto_9c

    #@37
    :sswitch_37
    const-string v0, "triggerSlack"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result p1

    #@3d
    if-nez p1, :cond_41

    #@3f
    goto/16 :goto_9c

    #@41
    :cond_41
    const/16 v1, 0x8

    #@43
    goto/16 :goto_9c

    #@45
    :sswitch_45
    const-string v0, "CROSS"

    #@47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p1

    #@4b
    if-nez p1, :cond_4e

    #@4d
    goto :goto_9c

    #@4e
    :cond_4e
    const/4 v1, 0x7

    #@4f
    goto :goto_9c

    #@50
    :sswitch_50
    const-string v0, "viewTransitionOnNegativeCross"

    #@52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result p1

    #@56
    if-nez p1, :cond_59

    #@58
    goto :goto_9c

    #@59
    :cond_59
    const/4 v1, 0x6

    #@5a
    goto :goto_9c

    #@5b
    :sswitch_5b
    const-string v0, "triggerCollisionView"

    #@5d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result p1

    #@61
    if-nez p1, :cond_64

    #@63
    goto :goto_9c

    #@64
    :cond_64
    const/4 v1, 0x5

    #@65
    goto :goto_9c

    #@66
    :sswitch_66
    const-string v0, "negativeCross"

    #@68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result p1

    #@6c
    if-nez p1, :cond_6f

    #@6e
    goto :goto_9c

    #@6f
    :cond_6f
    const/4 v1, 0x4

    #@70
    goto :goto_9c

    #@71
    :sswitch_71
    const-string v0, "triggerID"

    #@73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result p1

    #@77
    if-nez p1, :cond_7a

    #@79
    goto :goto_9c

    #@7a
    :cond_7a
    const/4 v1, 0x3

    #@7b
    goto :goto_9c

    #@7c
    :sswitch_7c
    const-string v0, "triggerCollisionId"

    #@7e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result p1

    #@82
    if-nez p1, :cond_85

    #@84
    goto :goto_9c

    #@85
    :cond_85
    const/4 v1, 0x2

    #@86
    goto :goto_9c

    #@87
    :sswitch_87
    const-string v0, "viewTransitionOnPositiveCross"

    #@89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result p1

    #@8d
    if-nez p1, :cond_90

    #@8f
    goto :goto_9c

    #@90
    :cond_90
    const/4 v1, 0x1

    #@91
    goto :goto_9c

    #@92
    :sswitch_92
    const-string v0, "positiveCross"

    #@94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result p1

    #@98
    if-nez p1, :cond_9b

    #@9a
    goto :goto_9c

    #@9b
    :cond_9b
    const/4 v1, 0x0

    #@9c
    :goto_9c
    packed-switch v1, :pswitch_data_124

    #@9f
    goto :goto_f1

    #@a0
    .line 121
    :pswitch_a0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    #@a3
    move-result p1

    #@a4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    #@a6
    goto :goto_f1

    #@a7
    .line 142
    :pswitch_a7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toBoolean(Ljava/lang/Object;)Z

    #@aa
    move-result p1

    #@ab
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    #@ad
    goto :goto_f1

    #@ae
    .line 151
    :pswitch_ae
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    #@b1
    move-result p1

    #@b2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    #@b4
    goto :goto_f1

    #@b5
    .line 139
    :pswitch_b5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toFloat(Ljava/lang/Object;)F

    #@b8
    move-result p1

    #@b9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@bb
    goto :goto_f1

    #@bc
    .line 118
    :pswitch_bc
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@bf
    move-result-object p1

    #@c0
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    #@c2
    goto :goto_f1

    #@c3
    .line 145
    :pswitch_c3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    #@c6
    move-result p1

    #@c7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    #@c9
    goto :goto_f1

    #@ca
    .line 136
    :pswitch_ca
    check-cast p2, Landroid/view/View;

    #@cc
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    #@ce
    goto :goto_f1

    #@cf
    .line 124
    :pswitch_cf
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d2
    move-result-object p1

    #@d3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    #@d5
    goto :goto_f1

    #@d6
    .line 130
    :pswitch_d6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    #@d9
    move-result p1

    #@da
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    #@dc
    goto :goto_f1

    #@dd
    .line 133
    :pswitch_dd
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    #@e0
    move-result p1

    #@e1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    #@e3
    goto :goto_f1

    #@e4
    .line 148
    :pswitch_e4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    #@e7
    move-result p1

    #@e8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    #@ea
    goto :goto_f1

    #@eb
    .line 127
    :pswitch_eb
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@ee
    move-result-object p1

    #@ef
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    #@f1
    :goto_f1
    return-void

    #@f2
    :sswitch_data_f2
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_92
        -0x399a6b12 -> :sswitch_87
        -0x2ee3a4eb -> :sswitch_7c
        -0x26ab2f2d -> :sswitch_71
        -0x26090af5 -> :sswitch_66
        -0x4880de1 -> :sswitch_5b
        -0x94d7ce -> :sswitch_50
        0x3d6a020 -> :sswitch_45
        0x15b9acb8 -> :sswitch_37
        0x4d99e267 -> :sswitch_29
        0x538787ea -> :sswitch_1b
        0x5b846bc7 -> :sswitch_d
    .end sparse-switch

    #@124
    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_e4
        :pswitch_dd
        :pswitch_d6
        :pswitch_cf
        :pswitch_ca
        :pswitch_c3
        :pswitch_bc
        :pswitch_b5
        :pswitch_ae
        :pswitch_a7
        :pswitch_a0
    .end packed-switch
.end method

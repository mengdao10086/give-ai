.class public final Lcom/google/android/material/transition/platform/MaterialSharedAxis;
.super Lcom/google/android/material/transition/platform/MaterialVisibility;
.source "MaterialSharedAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/MaterialVisibility<",
        "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THEMED_DURATION_ATTR:I

.field private static final DEFAULT_THEMED_EASING_ATTR:I

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field private final axis:I

.field private final forward:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 91
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    #@2
    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    #@4
    .line 94
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@6
    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    #@8
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5

    #@0
    .line 97
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/MaterialVisibility;-><init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    #@b
    .line 98
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    #@d
    .line 99
    iput-boolean p2, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    #@f
    return-void
.end method

.method private static createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 4

    #@0
    if-eqz p0, :cond_30

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_23

    #@5
    const/4 v0, 0x2

    #@6
    if-ne p0, v0, :cond_e

    #@8
    .line 119
    new-instance p0, Lcom/google/android/material/transition/platform/ScaleProvider;

    #@a
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    #@d
    return-object p0

    #@e
    .line 121
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    const-string v1, "Invalid axis: "

    #@14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw p1

    #@23
    .line 117
    :cond_23
    new-instance p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    #@25
    if-eqz p1, :cond_2a

    #@27
    const/16 p1, 0x50

    #@29
    goto :goto_2c

    #@2a
    :cond_2a
    const/16 p1, 0x30

    #@2c
    :goto_2c
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    #@2f
    return-object p0

    #@30
    .line 115
    :cond_30
    new-instance p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    #@32
    if-eqz p1, :cond_38

    #@34
    const p1, 0x800005

    #@37
    goto :goto_3b

    #@38
    :cond_38
    const p1, 0x800003

    #@3b
    :goto_3b
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    #@3e
    return-object p0
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 1

    #@0
    .line 126
    new-instance v0, Lcom/google/android/material/transition/platform/FadeThroughProvider;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeThroughProvider;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .registers 2

    #@0
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    #@3
    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .registers 1

    #@0
    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    #@3
    return-void
.end method

.method public getAxis()I
    .registers 2

    #@0
    .line 104
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    #@2
    return v0
.end method

.method getDurationThemeAttrResId(Z)I
    .registers 2

    #@0
    .line 132
    sget p1, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    #@2
    return p1
.end method

.method getEasingThemeAttrResId(Z)I
    .registers 2

    #@0
    .line 138
    sget p1, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    #@2
    return p1
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 2

    #@0
    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isForward()Z
    .registers 2

    #@0
    .line 108
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    #@2
    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .registers 2

    #@0
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .registers 2

    #@0
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    #@3
    return-void
.end method

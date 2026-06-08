.class Landroidx/transition/Styleable;
.super Ljava/lang/Object;
.source "Styleable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Styleable$PatternPathMotion;,
        Landroidx/transition/Styleable$ArcMotion;,
        Landroidx/transition/Styleable$TransitionSet;,
        Landroidx/transition/Styleable$Slide;,
        Landroidx/transition/Styleable$ChangeTransform;,
        Landroidx/transition/Styleable$Fade;,
        Landroidx/transition/Styleable$VisibilityTransition;,
        Landroidx/transition/Styleable$ChangeBounds;,
        Landroidx/transition/Styleable$Transition;,
        Landroidx/transition/Styleable$TransitionManager;,
        Landroidx/transition/Styleable$TransitionTarget;
    }
.end annotation


# static fields
.field static final ARC_MOTION:[I

.field static final CHANGE_BOUNDS:[I

.field static final CHANGE_TRANSFORM:[I

.field static final FADE:[I

.field static final PATTERN_PATH_MOTION:[I

.field static final SLIDE:[I

.field static final TRANSITION:[I

.field static final TRANSITION_MANAGER:[I

.field static final TRANSITION_SET:[I

.field static final TRANSITION_TARGET:[I

.field static final VISIBILITY_TRANSITION:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [I

    #@3
    .line 30
    fill-array-data v0, :array_60

    #@6
    sput-object v0, Landroidx/transition/Styleable;->TRANSITION_TARGET:[I

    #@8
    const/4 v0, 0x3

    #@9
    new-array v1, v0, [I

    #@b
    .line 55
    fill-array-data v1, :array_70

    #@e
    sput-object v1, Landroidx/transition/Styleable;->TRANSITION_MANAGER:[I

    #@10
    const/4 v1, 0x4

    #@11
    new-array v1, v1, [I

    #@13
    .line 71
    fill-array-data v1, :array_7a

    #@16
    sput-object v1, Landroidx/transition/Styleable;->TRANSITION:[I

    #@18
    const/4 v1, 0x1

    #@19
    new-array v2, v1, [I

    #@1b
    const v3, 0x10104cf

    #@1e
    const/4 v4, 0x0

    #@1f
    aput v3, v2, v4

    #@21
    .line 90
    sput-object v2, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    #@23
    new-array v2, v1, [I

    #@25
    const v3, 0x101047c

    #@28
    aput v3, v2, v4

    #@2a
    .line 100
    sput-object v2, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    #@2c
    new-array v2, v1, [I

    #@2e
    const v3, 0x10103e1

    #@31
    aput v3, v2, v4

    #@33
    .line 110
    sput-object v2, Landroidx/transition/Styleable;->FADE:[I

    #@35
    const/4 v2, 0x2

    #@36
    new-array v2, v2, [I

    #@38
    .line 120
    fill-array-data v2, :array_86

    #@3b
    sput-object v2, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    #@3d
    new-array v2, v1, [I

    #@3f
    const v3, 0x1010430

    #@42
    aput v3, v2, v4

    #@44
    .line 133
    sput-object v2, Landroidx/transition/Styleable;->SLIDE:[I

    #@46
    new-array v2, v1, [I

    #@48
    const v3, 0x10103e0

    #@4b
    aput v3, v2, v4

    #@4d
    .line 143
    sput-object v2, Landroidx/transition/Styleable;->TRANSITION_SET:[I

    #@4f
    new-array v0, v0, [I

    #@51
    .line 153
    fill-array-data v0, :array_8e

    #@54
    sput-object v0, Landroidx/transition/Styleable;->ARC_MOTION:[I

    #@56
    new-array v0, v1, [I

    #@58
    const v1, 0x10104ca

    #@5b
    aput v1, v0, v4

    #@5d
    .line 169
    sput-object v0, Landroidx/transition/Styleable;->PATTERN_PATH_MOTION:[I

    #@5f
    return-void

    #@60
    :array_60
    .array-data 4
        0x101002f
        0x10103dc
        0x1010441
        0x1010442
        0x101044d
        0x101044e
    .end array-data

    #@70
    :array_70
    .array-data 4
        0x10103dd
        0x10103de
        0x10103df
    .end array-data

    #@7a
    :array_7a
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data

    #@86
    :array_86
    .array-data 4
        0x10104bc
        0x10104bd
    .end array-data

    #@8e
    :array_8e
    .array-data 4
        0x101047d
        0x101047e
        0x101047f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

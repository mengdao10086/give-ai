.class public Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;,
        Landroidx/constraintlayout/widget/ConstraintSet$WriteXmlEngine;,
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint;,
        Landroidx/constraintlayout/widget/ConstraintSet$Motion;,
        Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;,
        Landroidx/constraintlayout/widget/ConstraintSet$Transform;,
        Landroidx/constraintlayout/widget/ConstraintSet$Layout;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field private static final ANIMATE_CIRCLE_ANGLE_TO:I = 0x52

.field private static final ANIMATE_RELATIVE_TO:I = 0x40

.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4b

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_MARGIN:I = 0x49

.field private static final BARRIER_TYPE:I = 0x1

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_MARGIN:I = 0x5d

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field private static final BASELINE_TO_BOTTOM:I = 0x5c

.field private static final BASELINE_TO_TOP:I = 0x5b

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field public static final CIRCLE_REFERENCE:I = 0x8

.field private static final CONSTRAINED_HEIGHT:I = 0x51

.field private static final CONSTRAINED_WIDTH:I = 0x50

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x4a

.field private static final CONSTRAINT_TAG:I = 0x4d

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final DRAW_PATH:I = 0x42

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "XML parser error must be within a Constraint "

.field public static final GONE:I = 0x8

.field private static final GONE_BASELINE_MARGIN:I = 0x5e

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDELINE_USE_RTL:I = 0x63

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field private static final HEIGHT_PERCENT:I = 0x46

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field private static final INTERNAL_MATCH_CONSTRAINT:I = -0x3

.field private static final INTERNAL_MATCH_PARENT:I = -0x1

.field private static final INTERNAL_WRAP_CONTENT:I = -0x2

.field private static final INTERNAL_WRAP_CONTENT_CONSTRAINED:I = -0x4

.field public static final INVISIBLE:I = 0x4

.field private static final KEY_PERCENT_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_RATIO:Ljava/lang/String; = "ratio"

.field private static final KEY_WEIGHT:Ljava/lang/String; = "weight"

.field private static final LAYOUT_CONSTRAINT_HEIGHT:I = 0x60

.field private static final LAYOUT_CONSTRAINT_WIDTH:I = 0x5f

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field private static final LAYOUT_WRAP_BEHAVIOR:I = 0x61

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final MOTION_STAGGER:I = 0x4f

.field private static final MOTION_TARGET:I = 0x62

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field private static final PATH_MOTION_ARC:I = 0x4c

.field private static final PROGRESS:I = 0x44

.field private static final QUANTIZE_MOTION_INTERPOLATOR:I = 0x56

.field private static final QUANTIZE_MOTION_INTERPOLATOR_ID:I = 0x59

.field private static final QUANTIZE_MOTION_INTERPOLATOR_STR:I = 0x5a

.field private static final QUANTIZE_MOTION_INTERPOLATOR_TYPE:I = 0x58

.field private static final QUANTIZE_MOTION_PHASE:I = 0x55

.field private static final QUANTIZE_MOTION_STEPS:I = 0x54

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3

.field private static final ROTATION:I = 0x3c

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_TARGET:I = 0x53

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSITION_EASING:I = 0x41

.field private static final TRANSITION_PATH_ROTATE:I = 0x43

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x57

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field private static final VISIBILITY_MODE:I = 0x4e

.field public static final VISIBILITY_MODE_IGNORE:I = 0x1

.field public static final VISIBILITY_MODE_NORMAL:I = 0x0

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field private static final WIDTH_PERCENT:I = 0x45

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;

.field private static overrideMapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public derivedState:Ljava/lang/String;

.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private mForceId:Z

.field public mIdString:Ljava/lang/String;

.field public mRotate:I

.field private mSavedAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mValidate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    const/4 v0, 0x3

    #@1
    new-array v1, v0, [I

    #@3
    .line 241
    fill-array-data v1, :array_60a

    #@6
    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    #@8
    .line 246
    new-instance v1, Landroid/util/SparseIntArray;

    #@a
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@d
    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@f
    .line 247
    new-instance v1, Landroid/util/SparseIntArray;

    #@11
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@14
    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@16
    .line 354
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@18
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_toLeftOf:I

    #@1a
    const/16 v3, 0x19

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@1f
    .line 355
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@21
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_toRightOf:I

    #@23
    const/16 v3, 0x1a

    #@25
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@28
    .line 356
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2a
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_toLeftOf:I

    #@2c
    const/16 v3, 0x1d

    #@2e
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@31
    .line 357
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@33
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_toRightOf:I

    #@35
    const/16 v3, 0x1e

    #@37
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@3a
    .line 358
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@3c
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_toTopOf:I

    #@3e
    const/16 v3, 0x24

    #@40
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@43
    .line 359
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@45
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_toBottomOf:I

    #@47
    const/16 v3, 0x23

    #@49
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@4c
    .line 360
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@4e
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_toTopOf:I

    #@50
    const/4 v3, 0x4

    #@51
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@54
    .line 361
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@56
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_toBottomOf:I

    #@58
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    #@5b
    .line 362
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@5d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_toBaselineOf:I

    #@5f
    const/4 v2, 0x1

    #@60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@63
    .line 363
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@65
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_toTopOf:I

    #@67
    const/16 v2, 0x5b

    #@69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@6c
    .line 364
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@6e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_toBottomOf:I

    #@70
    const/16 v2, 0x5c

    #@72
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@75
    .line 366
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@77
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_editor_absoluteX:I

    #@79
    const/4 v2, 0x6

    #@7a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@7d
    .line 367
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@7f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_editor_absoluteY:I

    #@81
    const/4 v3, 0x7

    #@82
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@85
    .line 368
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@87
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_begin:I

    #@89
    const/16 v4, 0x11

    #@8b
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@8e
    .line 369
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@90
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_end:I

    #@92
    const/16 v4, 0x12

    #@94
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@97
    .line 370
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@99
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_percent:I

    #@9b
    const/16 v4, 0x13

    #@9d
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@a0
    .line 371
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@a2
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_guidelineUseRtl:I

    #@a4
    const/16 v4, 0x63

    #@a6
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@a9
    .line 373
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@ab
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_orientation:I

    #@ad
    const/16 v4, 0x1b

    #@af
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@b2
    .line 374
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@b4
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintStart_toEndOf:I

    #@b6
    const/16 v5, 0x20

    #@b8
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    #@bb
    .line 375
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@bd
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintStart_toStartOf:I

    #@bf
    const/16 v5, 0x21

    #@c1
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    #@c4
    .line 376
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@c6
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintEnd_toStartOf:I

    #@c8
    const/16 v5, 0xa

    #@ca
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    #@cd
    .line 377
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@cf
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintEnd_toEndOf:I

    #@d1
    const/16 v5, 0x9

    #@d3
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    #@d6
    .line 378
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@d8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginLeft:I

    #@da
    const/16 v5, 0xd

    #@dc
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    #@df
    .line 379
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@e1
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginTop:I

    #@e3
    const/16 v6, 0x10

    #@e5
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    #@e8
    .line 380
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@ea
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginRight:I

    #@ec
    const/16 v7, 0xe

    #@ee
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    #@f1
    .line 381
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@f3
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginBottom:I

    #@f5
    const/16 v8, 0xb

    #@f7
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    #@fa
    .line 382
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@fc
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginStart:I

    #@fe
    const/16 v9, 0xf

    #@100
    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    #@103
    .line 383
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@105
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginEnd:I

    #@107
    const/16 v10, 0xc

    #@109
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    #@10c
    .line 384
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@10e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_weight:I

    #@110
    const/16 v11, 0x28

    #@112
    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    #@115
    .line 385
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@117
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_weight:I

    #@119
    const/16 v12, 0x27

    #@11b
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    #@11e
    .line 386
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@120
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_chainStyle:I

    #@122
    const/16 v13, 0x29

    #@124
    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    #@127
    .line 387
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@129
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_chainStyle:I

    #@12b
    const/16 v14, 0x2a

    #@12d
    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    #@130
    .line 389
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@132
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_bias:I

    #@134
    const/16 v15, 0x14

    #@136
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@139
    .line 390
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@13b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_bias:I

    #@13d
    const/16 v15, 0x25

    #@13f
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@142
    .line 391
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@144
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintDimensionRatio:I

    #@146
    const/4 v15, 0x5

    #@147
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@14a
    .line 392
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@14c
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_creator:I

    #@14e
    const/16 v15, 0x57

    #@150
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@153
    .line 393
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@155
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_creator:I

    #@157
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@15a
    .line 394
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@15c
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_creator:I

    #@15e
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@161
    .line 395
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@163
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_creator:I

    #@165
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@168
    .line 396
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@16a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_creator:I

    #@16c
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@16f
    .line 397
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@171
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginLeft:I

    #@173
    const/16 v15, 0x18

    #@175
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@178
    .line 398
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@17a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginRight:I

    #@17c
    const/16 v15, 0x1c

    #@17e
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@181
    .line 399
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@183
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginStart:I

    #@185
    const/16 v15, 0x1f

    #@187
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@18a
    .line 400
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@18c
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginEnd:I

    #@18e
    const/16 v15, 0x8

    #@190
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@193
    .line 401
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@195
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginTop:I

    #@197
    const/16 v15, 0x22

    #@199
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@19c
    .line 402
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@19e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginBottom:I

    #@1a0
    const/4 v15, 0x2

    #@1a1
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1a4
    .line 403
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1a6
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_width:I

    #@1a8
    const/16 v15, 0x17

    #@1aa
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1ad
    .line 404
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1af
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_height:I

    #@1b1
    const/16 v15, 0x15

    #@1b3
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1b6
    .line 405
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1b8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth:I

    #@1ba
    const/16 v15, 0x5f

    #@1bc
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1bf
    .line 406
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1c1
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight:I

    #@1c3
    const/16 v15, 0x60

    #@1c5
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1c8
    .line 407
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1ca
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_visibility:I

    #@1cc
    const/16 v15, 0x16

    #@1ce
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1d1
    .line 408
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1d3
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_alpha:I

    #@1d5
    const/16 v15, 0x2b

    #@1d7
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1da
    .line 409
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1dc
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_elevation:I

    #@1de
    const/16 v15, 0x2c

    #@1e0
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1e3
    .line 410
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1e5
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotationX:I

    #@1e7
    const/16 v15, 0x2d

    #@1e9
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1ec
    .line 411
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1ee
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotationY:I

    #@1f0
    const/16 v15, 0x2e

    #@1f2
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1f5
    .line 412
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@1f7
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotation:I

    #@1f9
    const/16 v15, 0x3c

    #@1fb
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@1fe
    .line 413
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@200
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_scaleX:I

    #@202
    const/16 v15, 0x2f

    #@204
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@207
    .line 414
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@209
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_scaleY:I

    #@20b
    const/16 v15, 0x30

    #@20d
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@210
    .line 415
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@212
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_transformPivotX:I

    #@214
    const/16 v15, 0x31

    #@216
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@219
    .line 416
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@21b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_transformPivotY:I

    #@21d
    const/16 v15, 0x32

    #@21f
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@222
    .line 417
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@224
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationX:I

    #@226
    const/16 v15, 0x33

    #@228
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@22b
    .line 418
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@22d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationY:I

    #@22f
    const/16 v15, 0x34

    #@231
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@234
    .line 419
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@236
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationZ:I

    #@238
    const/16 v15, 0x35

    #@23a
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@23d
    .line 420
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@23f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_default:I

    #@241
    const/16 v15, 0x36

    #@243
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@246
    .line 421
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@248
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_default:I

    #@24a
    const/16 v15, 0x37

    #@24c
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@24f
    .line 422
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@251
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_max:I

    #@253
    const/16 v15, 0x38

    #@255
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@258
    .line 423
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@25a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_max:I

    #@25c
    const/16 v15, 0x39

    #@25e
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@261
    .line 424
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@263
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_min:I

    #@265
    const/16 v15, 0x3a

    #@267
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@26a
    .line 425
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@26c
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_min:I

    #@26e
    const/16 v15, 0x3b

    #@270
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@273
    .line 426
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@275
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircle:I

    #@277
    const/16 v15, 0x3d

    #@279
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@27c
    .line 427
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@27e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircleRadius:I

    #@280
    const/16 v15, 0x3e

    #@282
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@285
    .line 428
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@287
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircleAngle:I

    #@289
    const/16 v15, 0x3f

    #@28b
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@28e
    .line 429
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@290
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_animateRelativeTo:I

    #@292
    const/16 v15, 0x40

    #@294
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@297
    .line 430
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@299
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transitionEasing:I

    #@29b
    const/16 v15, 0x41

    #@29d
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2a0
    .line 431
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2a2
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_drawPath:I

    #@2a4
    const/16 v15, 0x42

    #@2a6
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2a9
    .line 432
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2ab
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transitionPathRotate:I

    #@2ad
    const/16 v15, 0x43

    #@2af
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2b2
    .line 433
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2b4
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_motionStagger:I

    #@2b6
    const/16 v15, 0x4f

    #@2b8
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2bb
    .line 434
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2bd
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_id:I

    #@2bf
    const/16 v15, 0x26

    #@2c1
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2c4
    .line 435
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2c6
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_motionProgress:I

    #@2c8
    const/16 v15, 0x44

    #@2ca
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2cd
    .line 436
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2cf
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_percent:I

    #@2d1
    const/16 v15, 0x45

    #@2d3
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2d6
    .line 437
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2d8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_percent:I

    #@2da
    const/16 v15, 0x46

    #@2dc
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2df
    .line 438
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2e1
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_wrapBehaviorInParent:I

    #@2e3
    const/16 v15, 0x61

    #@2e5
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2e8
    .line 440
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2ea
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_chainUseRtl:I

    #@2ec
    const/16 v15, 0x47

    #@2ee
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2f1
    .line 441
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2f3
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierDirection:I

    #@2f5
    const/16 v15, 0x48

    #@2f7
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@2fa
    .line 442
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@2fc
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierMargin:I

    #@2fe
    const/16 v15, 0x49

    #@300
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@303
    .line 443
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@305
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_constraint_referenced_ids:I

    #@307
    const/16 v15, 0x4a

    #@309
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@30c
    .line 444
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@30e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierAllowsGoneWidgets:I

    #@310
    const/16 v15, 0x4b

    #@312
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@315
    .line 445
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@317
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_pathMotionArc:I

    #@319
    const/16 v15, 0x4c

    #@31b
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@31e
    .line 446
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@320
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTag:I

    #@322
    const/16 v15, 0x4d

    #@324
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@327
    .line 447
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@329
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_visibilityMode:I

    #@32b
    const/16 v15, 0x4e

    #@32d
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@330
    .line 448
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@332
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constrainedWidth:I

    #@334
    const/16 v15, 0x50

    #@336
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@339
    .line 449
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@33b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constrainedHeight:I

    #@33d
    const/16 v15, 0x51

    #@33f
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@342
    .line 450
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@344
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_polarRelativeTo:I

    #@346
    const/16 v15, 0x52

    #@348
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@34b
    .line 451
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@34d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transformPivotTarget:I

    #@34f
    const/16 v15, 0x53

    #@351
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@354
    .line 452
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@356
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_quantizeMotionSteps:I

    #@358
    const/16 v15, 0x54

    #@35a
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@35d
    .line 453
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@35f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_quantizeMotionPhase:I

    #@361
    const/16 v15, 0x55

    #@363
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@366
    .line 454
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@368
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_quantizeMotionInterpolator:I

    #@36a
    const/16 v15, 0x56

    #@36c
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    #@36f
    .line 477
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@371
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_editor_absoluteY:I

    #@373
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@376
    .line 478
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@378
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_editor_absoluteY:I

    #@37a
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    #@37d
    .line 479
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@37f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_orientation:I

    #@381
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@384
    .line 480
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@386
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginLeft:I

    #@388
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    #@38b
    .line 481
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@38d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginTop:I

    #@38f
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    #@392
    .line 482
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@394
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginRight:I

    #@396
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    #@399
    .line 483
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@39b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginBottom:I

    #@39d
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    #@3a0
    .line 484
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3a2
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginStart:I

    #@3a4
    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    #@3a7
    .line 485
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3a9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginEnd:I

    #@3ab
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    #@3ae
    .line 486
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3b0
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintVertical_weight:I

    #@3b2
    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    #@3b5
    .line 487
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3b7
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHorizontal_weight:I

    #@3b9
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    #@3bc
    .line 488
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3be
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHorizontal_chainStyle:I

    #@3c0
    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    #@3c3
    .line 489
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3c5
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintVertical_chainStyle:I

    #@3c7
    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    #@3ca
    .line 491
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3cc
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHorizontal_bias:I

    #@3ce
    const/16 v2, 0x14

    #@3d0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3d3
    .line 492
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3d5
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintVertical_bias:I

    #@3d7
    const/16 v2, 0x25

    #@3d9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3dc
    .line 493
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3de
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintDimensionRatio:I

    #@3e0
    const/4 v2, 0x5

    #@3e1
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3e4
    .line 494
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3e6
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintLeft_creator:I

    #@3e8
    const/16 v2, 0x57

    #@3ea
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3ed
    .line 495
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3ef
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintTop_creator:I

    #@3f1
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3f4
    .line 496
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3f6
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintRight_creator:I

    #@3f8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3fb
    .line 497
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@3fd
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintBottom_creator:I

    #@3ff
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@402
    .line 498
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@404
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintBaseline_creator:I

    #@406
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@409
    .line 499
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@40b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginLeft:I

    #@40d
    const/16 v2, 0x18

    #@40f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@412
    .line 500
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@414
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginRight:I

    #@416
    const/16 v2, 0x1c

    #@418
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@41b
    .line 501
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@41d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginStart:I

    #@41f
    const/16 v2, 0x1f

    #@421
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@424
    .line 502
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@426
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginEnd:I

    #@428
    const/16 v2, 0x8

    #@42a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@42d
    .line 503
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@42f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginTop:I

    #@431
    const/16 v2, 0x22

    #@433
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@436
    .line 504
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@438
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginBottom:I

    #@43a
    const/4 v2, 0x2

    #@43b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@43e
    .line 505
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@440
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_width:I

    #@442
    const/16 v2, 0x17

    #@444
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@447
    .line 506
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@449
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_height:I

    #@44b
    const/16 v2, 0x15

    #@44d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@450
    .line 507
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@452
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth:I

    #@454
    const/16 v2, 0x5f

    #@456
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@459
    .line 508
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@45b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight:I

    #@45d
    const/16 v2, 0x60

    #@45f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@462
    .line 509
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@464
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_visibility:I

    #@466
    const/16 v2, 0x16

    #@468
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@46b
    .line 510
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@46d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_alpha:I

    #@46f
    const/16 v2, 0x2b

    #@471
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@474
    .line 511
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@476
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_elevation:I

    #@478
    const/16 v2, 0x2c

    #@47a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@47d
    .line 512
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@47f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_rotationX:I

    #@481
    const/16 v2, 0x2d

    #@483
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@486
    .line 513
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@488
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_rotationY:I

    #@48a
    const/16 v2, 0x2e

    #@48c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@48f
    .line 514
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@491
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_rotation:I

    #@493
    const/16 v2, 0x3c

    #@495
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@498
    .line 515
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@49a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_scaleX:I

    #@49c
    const/16 v2, 0x2f

    #@49e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4a1
    .line 516
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4a3
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_scaleY:I

    #@4a5
    const/16 v2, 0x30

    #@4a7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4aa
    .line 517
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4ac
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_transformPivotX:I

    #@4ae
    const/16 v2, 0x31

    #@4b0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4b3
    .line 518
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4b5
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_transformPivotY:I

    #@4b7
    const/16 v2, 0x32

    #@4b9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4bc
    .line 519
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4be
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_translationX:I

    #@4c0
    const/16 v2, 0x33

    #@4c2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4c5
    .line 520
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4c7
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_translationY:I

    #@4c9
    const/16 v2, 0x34

    #@4cb
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4ce
    .line 521
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4d0
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_translationZ:I

    #@4d2
    const/16 v2, 0x35

    #@4d4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4d7
    .line 522
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4d9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_default:I

    #@4db
    const/16 v2, 0x36

    #@4dd
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4e0
    .line 523
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4e2
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_default:I

    #@4e4
    const/16 v2, 0x37

    #@4e6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4e9
    .line 524
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4eb
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_max:I

    #@4ed
    const/16 v2, 0x38

    #@4ef
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4f2
    .line 525
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4f4
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_max:I

    #@4f6
    const/16 v2, 0x39

    #@4f8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4fb
    .line 526
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@4fd
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_min:I

    #@4ff
    const/16 v2, 0x3a

    #@501
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@504
    .line 527
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@506
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_min:I

    #@508
    const/16 v2, 0x3b

    #@50a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@50d
    .line 528
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@50f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintCircleRadius:I

    #@511
    const/16 v2, 0x3e

    #@513
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@516
    .line 529
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@518
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintCircleAngle:I

    #@51a
    const/16 v2, 0x3f

    #@51c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@51f
    .line 530
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@521
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_animateRelativeTo:I

    #@523
    const/16 v2, 0x40

    #@525
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@528
    .line 531
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@52a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_transitionEasing:I

    #@52c
    const/16 v2, 0x41

    #@52e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@531
    .line 532
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@533
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_drawPath:I

    #@535
    const/16 v2, 0x42

    #@537
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@53a
    .line 533
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@53c
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_transitionPathRotate:I

    #@53e
    const/16 v2, 0x43

    #@540
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@543
    .line 534
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@545
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_motionStagger:I

    #@547
    const/16 v2, 0x4f

    #@549
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@54c
    .line 535
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@54e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_id:I

    #@550
    const/16 v2, 0x26

    #@552
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@555
    .line 536
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@557
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_motionTarget:I

    #@559
    const/16 v2, 0x62

    #@55b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@55e
    .line 538
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@560
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_motionProgress:I

    #@562
    const/16 v2, 0x44

    #@564
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@567
    .line 539
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@569
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_percent:I

    #@56b
    const/16 v2, 0x45

    #@56d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@570
    .line 540
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@572
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_percent:I

    #@574
    const/16 v2, 0x46

    #@576
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@579
    .line 542
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@57b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_chainUseRtl:I

    #@57d
    const/16 v2, 0x47

    #@57f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@582
    .line 543
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@584
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_barrierDirection:I

    #@586
    const/16 v2, 0x48

    #@588
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@58b
    .line 544
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@58d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_barrierMargin:I

    #@58f
    const/16 v2, 0x49

    #@591
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@594
    .line 545
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@596
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_constraint_referenced_ids:I

    #@598
    const/16 v2, 0x4a

    #@59a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@59d
    .line 546
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@59f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_barrierAllowsGoneWidgets:I

    #@5a1
    const/16 v2, 0x4b

    #@5a3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5a6
    .line 547
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5a8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_pathMotionArc:I

    #@5aa
    const/16 v2, 0x4c

    #@5ac
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5af
    .line 548
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5b1
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintTag:I

    #@5b3
    const/16 v2, 0x4d

    #@5b5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5b8
    .line 549
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5ba
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_visibilityMode:I

    #@5bc
    const/16 v2, 0x4e

    #@5be
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5c1
    .line 550
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5c3
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constrainedWidth:I

    #@5c5
    const/16 v2, 0x50

    #@5c7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5ca
    .line 551
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5cc
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constrainedHeight:I

    #@5ce
    const/16 v2, 0x51

    #@5d0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5d3
    .line 552
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5d5
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_polarRelativeTo:I

    #@5d7
    const/16 v2, 0x52

    #@5d9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5dc
    .line 553
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5de
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_transformPivotTarget:I

    #@5e0
    const/16 v2, 0x53

    #@5e2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5e5
    .line 554
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5e7
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_quantizeMotionSteps:I

    #@5e9
    const/16 v2, 0x54

    #@5eb
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5ee
    .line 555
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5f0
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_quantizeMotionPhase:I

    #@5f2
    const/16 v2, 0x55

    #@5f4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@5f7
    .line 556
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@5f9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_quantizeMotionInterpolator:I

    #@5fb
    const/16 v2, 0x56

    #@5fd
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@600
    .line 557
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@602
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_wrapBehaviorInParent:I

    #@604
    const/16 v2, 0x61

    #@606
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@609
    return-void

    #@60a
    :array_60a
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, ""

    #@5
    .line 89
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    #@7
    const/4 v0, 0x0

    #@8
    .line 95
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@a
    .line 96
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    #@11
    const/4 v0, 0x1

    #@12
    .line 101
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@14
    .line 244
    new-instance v0, Ljava/util/HashMap;

    #@16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1b
    return-void
.end method

.method static synthetic access$100(Landroid/content/res/TypedArray;II)I
    .registers 3

    #@0
    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/widget/ConstraintSet;)Ljava/util/HashMap;
    .registers 1

    #@0
    .line 78
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    return-object p0
.end method

.method static synthetic access$200()[I
    .registers 1

    #@0
    .line 78
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    #@2
    return-object v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;II)V
    .registers 3

    #@0
    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;II)V

    #@3
    return-void
.end method

.method static synthetic access$400(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IF)V
    .registers 3

    #@0
    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IF)V

    #@3
    return-void
.end method

.method static synthetic access$500(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILjava/lang/String;)V
    .registers 3

    #@0
    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$600(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IZ)V
    .registers 3

    #@0
    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IZ)V

    #@3
    return-void
.end method

.method private varargs addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attributeType",
            "attributeName"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 3957
    :goto_1
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_50

    #@4
    .line 3958
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    #@6
    aget-object v2, p2, v0

    #@8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_3f

    #@e
    .line 3959
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    #@10
    aget-object v2, p2, v0

    #@12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@18
    if-nez v1, :cond_1b

    #@1a
    goto :goto_4d

    #@1b
    .line 3963
    :cond_1b
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@1e
    move-result-object v2

    #@1f
    if-ne v2, p1, :cond_22

    #@21
    goto :goto_4d

    #@22
    .line 3964
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance p2, Ljava/lang/StringBuilder;

    #@26
    const-string v0, "ConstraintAttribute is already a "

    #@28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2b
    .line 3965
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->name()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p2

    #@37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p2

    #@3b
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw p1

    #@3f
    .line 3968
    :cond_3f
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@41
    aget-object v2, p2, v0

    #@43
    invoke-direct {v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V

    #@46
    .line 3969
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    #@48
    aget-object v3, p2, v0

    #@4a
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_1

    #@50
    :cond_50
    return-void
.end method

.method public static buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    #@0
    .line 4254
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object p1

    #@4
    .line 4255
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@6
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@9
    .line 4256
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    #@b
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e
    move-result-object p1

    #@f
    .line 4257
    invoke-static {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->populateOverride(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    #@12
    .line 4258
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    return-object v0
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "referenceIdString"
        }
    .end annotation

    #@0
    const-string v0, ","

    #@2
    .line 5255
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object p2

    #@6
    .line 5256
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    .line 5257
    array-length v1, p2

    #@b
    new-array v1, v1, [I

    #@d
    const/4 v2, 0x0

    #@e
    move v3, v2

    #@f
    move v4, v3

    #@10
    .line 5259
    :goto_10
    array-length v5, p2

    #@11
    if-ge v3, v5, :cond_64

    #@13
    .line 5260
    aget-object v5, p2, v3

    #@15
    .line 5261
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .line 5264
    :try_start_19
    const-class v6, Landroidx/constraintlayout/widget/R$id;

    #@1b
    .line 5265
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1e
    move-result-object v6

    #@1f
    const/4 v7, 0x0

    #@20
    .line 5266
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@23
    move-result v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25

    #@24
    goto :goto_26

    #@25
    :catch_25
    move v6, v2

    #@26
    :goto_26
    if-nez v6, :cond_36

    #@28
    .line 5271
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v6

    #@2c
    const-string v7, "id"

    #@2e
    .line 5272
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 5271
    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@35
    move-result v6

    #@36
    :cond_36
    if-nez v6, :cond_5c

    #@38
    .line 5275
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_5c

    #@3e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@41
    move-result-object v7

    #@42
    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@44
    if-eqz v7, :cond_5c

    #@46
    .line 5276
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@49
    move-result-object v7

    #@4a
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@4c
    .line 5277
    invoke-virtual {v7, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    if-eqz v5, :cond_5c

    #@52
    .line 5278
    instance-of v7, v5, Ljava/lang/Integer;

    #@54
    if-eqz v7, :cond_5c

    #@56
    .line 5279
    check-cast v5, Ljava/lang/Integer;

    #@58
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v6

    #@5c
    :cond_5c
    add-int/lit8 v5, v4, 0x1

    #@5e
    .line 5282
    aput v6, v1, v4

    #@60
    add-int/lit8 v3, v3, 0x1

    #@62
    move v4, v5

    #@63
    goto :goto_10

    #@64
    .line 5284
    :cond_64
    array-length p1, p2

    #@65
    if-eq v4, p1, :cond_6b

    #@67
    .line 5285
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    #@6a
    move-result-object v1

    #@6b
    :cond_6b
    return-object v1
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftId",
            "leftSide",
            "rightId",
            "rightSide",
            "chainIds",
            "weights",
            "style",
            "left",
            "right"
        }
    .end annotation

    #@0
    move-object v6, p0

    #@1
    move-object/from16 v7, p5

    #@3
    move-object/from16 v8, p6

    #@5
    .line 2706
    array-length v0, v7

    #@6
    const/4 v1, 0x2

    #@7
    const-string v2, "must have 2 or more widgets in a chain"

    #@9
    if-lt v0, v1, :cond_7d

    #@b
    if-eqz v8, :cond_18

    #@d
    .line 2709
    array-length v0, v8

    #@e
    array-length v1, v7

    #@f
    if-ne v0, v1, :cond_12

    #@11
    goto :goto_18

    #@12
    .line 2710
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    :goto_18
    const/4 v0, 0x0

    #@19
    if-eqz v8, :cond_27

    #@1b
    .line 2713
    aget v1, v7, v0

    #@1d
    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@20
    move-result-object v1

    #@21
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@23
    aget v2, v8, v0

    #@25
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@27
    .line 2715
    :cond_27
    aget v1, v7, v0

    #@29
    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@2c
    move-result-object v1

    #@2d
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2f
    move/from16 v2, p7

    #@31
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    #@33
    .line 2716
    aget v1, v7, v0

    #@35
    const/4 v5, -0x1

    #@36
    move-object v0, p0

    #@37
    move/from16 v2, p8

    #@39
    move v3, p1

    #@3a
    move v4, p2

    #@3b
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@3e
    const/4 v9, 0x1

    #@3f
    move v10, v9

    #@40
    .line 2717
    :goto_40
    array-length v0, v7

    #@41
    if-ge v10, v0, :cond_6e

    #@43
    .line 2718
    aget v1, v7, v10

    #@45
    add-int/lit8 v11, v10, -0x1

    #@47
    .line 2719
    aget v3, v7, v11

    #@49
    const/4 v5, -0x1

    #@4a
    move-object v0, p0

    #@4b
    move/from16 v2, p8

    #@4d
    move/from16 v4, p9

    #@4f
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@52
    .line 2720
    aget v1, v7, v11

    #@54
    aget v3, v7, v10

    #@56
    move/from16 v2, p9

    #@58
    move/from16 v4, p8

    #@5a
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@5d
    if-eqz v8, :cond_6b

    #@5f
    .line 2722
    aget v0, v7, v10

    #@61
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@64
    move-result-object v0

    #@65
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@67
    aget v1, v8, v10

    #@69
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@6b
    :cond_6b
    add-int/lit8 v10, v10, 0x1

    #@6d
    goto :goto_40

    #@6e
    .line 2726
    :cond_6e
    array-length v0, v7

    #@6f
    sub-int/2addr v0, v9

    #@70
    aget v1, v7, v0

    #@72
    const/4 v5, -0x1

    #@73
    move-object v0, p0

    #@74
    move/from16 v2, p9

    #@76
    move v3, p3

    #@77
    move/from16 v4, p4

    #@79
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@7c
    return-void

    #@7d
    .line 2707
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7f
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v0
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "override"
        }
    .end annotation

    #@0
    .line 4239
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@5
    if-eqz p3, :cond_a

    #@7
    .line 4240
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    #@9
    goto :goto_c

    #@a
    :cond_a
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint:[I

    #@c
    :goto_c
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object p2

    #@10
    .line 4241
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->populateConstraint(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;Z)V

    #@13
    .line 4242
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    return-object v0
.end method

.method private get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 4053
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1a

    #@c
    .line 4054
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@14
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 4056
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object p1

    #@24
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@26
    return-object p1
.end method

.method static getDebugName(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    #@0
    .line 5390
    const-class v0, Landroidx/constraintlayout/widget/ConstraintSet;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@5
    move-result-object v0

    #@6
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-ge v2, v1, :cond_47

    #@a
    aget-object v3, v0, v2

    #@c
    .line 5391
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    const-string v5, "_"

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_44

    #@18
    .line 5392
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1b
    move-result-object v4

    #@1c
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1e
    if-ne v4, v5, :cond_44

    #@20
    .line 5393
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@23
    move-result v4

    #@24
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_44

    #@2a
    .line 5394
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@2d
    move-result v4

    #@2e
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_44

    #@34
    const/4 v4, 0x0

    #@35
    .line 5397
    :try_start_35
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@38
    move-result v4

    #@39
    if-ne v4, p0, :cond_44

    #@3b
    .line 5399
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@3e
    move-result-object p0
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_3f} :catch_40

    #@3f
    return-object p0

    #@40
    :catch_40
    move-exception v3

    #@41
    .line 5402
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@44
    :cond_44
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_8

    #@47
    :cond_47
    const-string p0, "UNKNOWN"

    #@49
    return-object p0
.end method

.method static getLine(Landroid/content/Context;ILorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId",
            "pullParser"
        }
    .end annotation

    #@0
    .line 5385
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, ".("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p0

    #@f
    const-string p1, ".xml:"

    #@11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p0

    #@15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@18
    move-result p1

    #@19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    const-string p1, ") \""

    #@1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p0

    #@23
    .line 5386
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p0

    #@2b
    const-string p1, "\""

    #@2d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p0

    #@31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object p0

    #@35
    return-object p0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "index",
            "def"
        }
    .end annotation

    #@0
    .line 4231
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3
    move-result p2

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p2, v0, :cond_b

    #@7
    .line 4233
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@a
    move-result p2

    #@b
    :cond_b
    return p2
.end method

.method static parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "a",
            "attr",
            "orientation"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 719
    :cond_3
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@6
    move-result-object v0

    #@7
    .line 720
    iget v0, v0, Landroid/util/TypedValue;->type:I

    #@9
    const/4 v1, 0x3

    #@a
    if-eq v0, v1, :cond_6f

    #@c
    const/4 v1, 0x5

    #@d
    const/4 v2, 0x0

    #@e
    if-eq v0, v1, :cond_26

    #@10
    .line 734
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@13
    move-result p1

    #@14
    const/4 p2, -0x4

    #@15
    const/4 v0, -0x2

    #@16
    if-eq p1, p2, :cond_22

    #@18
    const/4 p2, -0x3

    #@19
    if-eq p1, p2, :cond_20

    #@1b
    if-eq p1, v0, :cond_2a

    #@1d
    const/4 p2, -0x1

    #@1e
    if-eq p1, p2, :cond_2a

    #@20
    :cond_20
    move p1, v2

    #@21
    goto :goto_2d

    #@22
    :cond_22
    const/4 v2, 0x1

    #@23
    move p1, v2

    #@24
    move v2, v0

    #@25
    goto :goto_2d

    #@26
    .line 725
    :cond_26
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@29
    move-result p1

    #@2a
    :cond_2a
    move v3, v2

    #@2b
    move v2, p1

    #@2c
    move p1, v3

    #@2d
    .line 754
    :goto_2d
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@2f
    if-eqz p2, :cond_3f

    #@31
    .line 755
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@33
    if-nez p3, :cond_3a

    #@35
    .line 757
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    #@37
    .line 758
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    #@39
    goto :goto_6e

    #@3a
    .line 760
    :cond_3a
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    #@3c
    .line 761
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    #@3e
    goto :goto_6e

    #@3f
    .line 763
    :cond_3f
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@41
    if-eqz p2, :cond_51

    #@43
    .line 764
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@45
    if-nez p3, :cond_4c

    #@47
    .line 766
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@49
    .line 767
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    #@4b
    goto :goto_6e

    #@4c
    .line 769
    :cond_4c
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@4e
    .line 770
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    #@50
    goto :goto_6e

    #@51
    .line 772
    :cond_51
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@53
    if-eqz p2, :cond_6e

    #@55
    .line 773
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@57
    if-nez p3, :cond_64

    #@59
    const/16 p2, 0x17

    #@5b
    .line 775
    invoke-virtual {p0, p2, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@5e
    const/16 p2, 0x50

    #@60
    .line 776
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    #@63
    goto :goto_6e

    #@64
    :cond_64
    const/16 p2, 0x15

    #@66
    .line 778
    invoke-virtual {p0, p2, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@69
    const/16 p2, 0x51

    #@6b
    .line 779
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    #@6e
    :cond_6e
    :goto_6e
    return-void

    #@6f
    .line 729
    :cond_6f
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@72
    move-result-object p1

    #@73
    .line 730
    invoke-static {p0, p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraintsString(Ljava/lang/Object;Ljava/lang/String;I)V

    #@76
    return-void
.end method

.method static parseDimensionConstraintsString(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "value",
            "orientation"
        }
    .end annotation

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const/16 v0, 0x3d

    #@5
    .line 866
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v0

    #@9
    .line 867
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    if-lez v0, :cond_10b

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    if-ge v0, v1, :cond_10b

    #@13
    const/4 v1, 0x0

    #@14
    .line 869
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 870
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@21
    move-result v0

    #@22
    if-lez v0, :cond_10b

    #@24
    .line 872
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    const-string v2, "ratio"

    #@2e
    .line 874
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_5c

    #@34
    .line 875
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@36
    if-eqz v0, :cond_46

    #@38
    .line 876
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@3a
    if-nez p2, :cond_3f

    #@3c
    .line 878
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    #@3e
    goto :goto_41

    #@3f
    .line 880
    :cond_3f
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    #@41
    .line 882
    :goto_41
    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V

    #@44
    goto/16 :goto_10b

    #@46
    .line 883
    :cond_46
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@48
    if-eqz p2, :cond_50

    #@4a
    .line 884
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4c
    .line 885
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    #@4e
    goto/16 :goto_10b

    #@50
    .line 886
    :cond_50
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@52
    if-eqz p2, :cond_10b

    #@54
    .line 887
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@56
    const/4 p2, 0x5

    #@57
    .line 888
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    #@5a
    goto/16 :goto_10b

    #@5c
    :cond_5c
    const-string v2, "weight"

    #@5e
    .line 890
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@61
    move-result v2

    #@62
    const/16 v3, 0x17

    #@64
    const/16 v4, 0x15

    #@66
    if-eqz v2, :cond_ae

    #@68
    .line 892
    :try_start_68
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6b
    move-result p1

    #@6c
    .line 893
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@6e
    if-eqz v0, :cond_80

    #@70
    .line 894
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@72
    if-nez p2, :cond_7a

    #@74
    .line 896
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    #@76
    .line 897
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    #@78
    goto/16 :goto_10b

    #@7a
    .line 899
    :cond_7a
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    #@7c
    .line 900
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    #@7e
    goto/16 :goto_10b

    #@80
    .line 902
    :cond_80
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@82
    if-eqz v0, :cond_94

    #@84
    .line 903
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@86
    if-nez p2, :cond_8e

    #@88
    .line 905
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@8a
    .line 906
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@8c
    goto/16 :goto_10b

    #@8e
    .line 908
    :cond_8e
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@90
    .line 909
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@92
    goto/16 :goto_10b

    #@94
    .line 911
    :cond_94
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@96
    if-eqz v0, :cond_10b

    #@98
    .line 912
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@9a
    if-nez p2, :cond_a5

    #@9c
    .line 914
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@9f
    const/16 p2, 0x27

    #@a1
    .line 915
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@a4
    goto :goto_10b

    #@a5
    .line 917
    :cond_a5
    invoke-virtual {p0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@a8
    const/16 p2, 0x28

    #@aa
    .line 918
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_ad} :catch_10b

    #@ad
    goto :goto_10b

    #@ae
    :cond_ae
    const-string v2, "parent"

    #@b0
    .line 924
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_10b

    #@b6
    .line 926
    :try_start_b6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@b9
    move-result p1

    #@ba
    const/high16 v0, 0x3f800000    # 1.0f

    #@bc
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    #@bf
    move-result p1

    #@c0
    const/4 v0, 0x0

    #@c1
    .line 927
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@c4
    move-result p1

    #@c5
    .line 928
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@c7
    const/4 v2, 0x2

    #@c8
    if-eqz v0, :cond_dc

    #@ca
    .line 929
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@cc
    if-nez p2, :cond_d5

    #@ce
    .line 931
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    #@d0
    .line 932
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    #@d2
    .line 933
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    #@d4
    goto :goto_10b

    #@d5
    .line 935
    :cond_d5
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    #@d7
    .line 936
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    #@d9
    .line 937
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    #@db
    goto :goto_10b

    #@dc
    .line 939
    :cond_dc
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@de
    if-eqz v0, :cond_f2

    #@e0
    .line 940
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e2
    if-nez p2, :cond_eb

    #@e4
    .line 942
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@e6
    .line 943
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    #@e8
    .line 944
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    #@ea
    goto :goto_10b

    #@eb
    .line 946
    :cond_eb
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@ed
    .line 947
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    #@ef
    .line 948
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    #@f1
    goto :goto_10b

    #@f2
    .line 950
    :cond_f2
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@f4
    if-eqz p1, :cond_10b

    #@f6
    .line 951
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@f8
    if-nez p2, :cond_103

    #@fa
    .line 953
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@fd
    const/16 p1, 0x36

    #@ff
    .line 954
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@102
    goto :goto_10b

    #@103
    .line 956
    :cond_103
    invoke-virtual {p0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@106
    const/16 p1, 0x37

    #@108
    .line 957
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V
    :try_end_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_10b} :catch_10b

    #@10b
    :catch_10b
    :cond_10b
    :goto_10b
    return-void
.end method

.method static parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "value"
        }
    .end annotation

    #@0
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@2
    const/4 v1, -0x1

    #@3
    if-eqz p1, :cond_7d

    #@5
    .line 794
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    const/16 v3, 0x2c

    #@b
    .line 795
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v3

    #@f
    const/4 v4, 0x0

    #@10
    const/4 v5, 0x1

    #@11
    if-lez v3, :cond_30

    #@13
    add-int/lit8 v6, v2, -0x1

    #@15
    if-ge v3, v6, :cond_30

    #@17
    .line 797
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    const-string v7, "W"

    #@1d
    .line 798
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_25

    #@23
    move v1, v4

    #@24
    goto :goto_2e

    #@25
    :cond_25
    const-string v4, "H"

    #@27
    .line 800
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_2e

    #@2d
    move v1, v5

    #@2e
    :cond_2e
    :goto_2e
    add-int/lit8 v4, v3, 0x1

    #@30
    :cond_30
    const/16 v3, 0x3a

    #@32
    .line 807
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@35
    move-result v3

    #@36
    if-ltz v3, :cond_6f

    #@38
    sub-int/2addr v2, v5

    #@39
    if-ge v3, v2, :cond_6f

    #@3b
    .line 809
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    add-int/2addr v3, v5

    #@40
    .line 810
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 811
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@47
    move-result v4

    #@48
    if-lez v4, :cond_7d

    #@4a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4d
    move-result v4

    #@4e
    if-lez v4, :cond_7d

    #@50
    .line 813
    :try_start_50
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@53
    move-result v2

    #@54
    .line 814
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@57
    move-result v3

    #@58
    const/4 v4, 0x0

    #@59
    cmpl-float v6, v2, v4

    #@5b
    if-lez v6, :cond_7d

    #@5d
    cmpl-float v4, v3, v4

    #@5f
    if-lez v4, :cond_7d

    #@61
    if-ne v1, v5, :cond_69

    #@63
    div-float/2addr v3, v2

    #@64
    .line 817
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@67
    move-result v0

    #@68
    goto :goto_7d

    #@69
    :cond_69
    div-float/2addr v2, v3

    #@6a
    .line 819
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@6d
    move-result v0
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_6e} :catch_7d

    #@6e
    goto :goto_7d

    #@6f
    .line 827
    :cond_6f
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    .line 828
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@76
    move-result v3

    #@77
    if-lez v3, :cond_7d

    #@79
    .line 830
    :try_start_79
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@7c
    move-result v0
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_7d} :catch_7d

    #@7d
    .line 837
    :catch_7d
    :cond_7d
    :goto_7d
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    #@7f
    .line 838
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    #@81
    .line 839
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    #@83
    return-void
.end method

.method private populateConstraint(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "c",
            "a",
            "override"
        }
    .end annotation

    #@0
    if-eqz p4, :cond_6

    #@2
    .line 4863
    invoke-static {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->populateOverride(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    #@5
    return-void

    #@6
    .line 4866
    :cond_6
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@9
    move-result p1

    #@a
    const/4 p4, 0x0

    #@b
    move v0, p4

    #@c
    :goto_c
    if-ge v0, p1, :cond_5d6

    #@e
    .line 4868
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@11
    move-result v1

    #@12
    .line 4913
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_id:I

    #@14
    const/4 v3, 0x1

    #@15
    if-eq v1, v2, :cond_2f

    #@17
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginStart:I

    #@19
    if-eq v2, v1, :cond_2f

    #@1b
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginEnd:I

    #@1d
    if-eq v2, v1, :cond_2f

    #@1f
    .line 4916
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@21
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    #@23
    .line 4917
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@25
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    #@27
    .line 4918
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@29
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    #@2b
    .line 4919
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@2d
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@2f
    .line 4922
    :cond_2f
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@31
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    #@34
    move-result v2

    #@35
    const-string v4, "   "

    #@37
    const/high16 v5, 0x3f800000    # 1.0f

    #@39
    const/4 v6, 0x3

    #@3a
    const-string v7, "ConstraintSet"

    #@3c
    packed-switch v2, :pswitch_data_5e2

    #@3f
    .line 5244
    :pswitch_3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    const-string v3, "Unknown attribute 0x"

    #@43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@46
    .line 5245
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@54
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    #@57
    move-result v1

    #@58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    .line 5244
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto/16 :goto_5d2

    #@65
    .line 5060
    :pswitch_65
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@67
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@69
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    #@6b
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6e
    move-result v1

    #@6f
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    #@71
    goto/16 :goto_5d2

    #@73
    .line 5057
    :pswitch_73
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@75
    invoke-static {v2, p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    #@78
    goto/16 :goto_5d2

    #@7a
    .line 5054
    :pswitch_7a
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@7c
    invoke-static {v2, p3, v1, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    #@7f
    goto/16 :goto_5d2

    #@81
    .line 5014
    :pswitch_81
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@83
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@85
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    #@87
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@8a
    move-result v1

    #@8b
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    #@8d
    goto/16 :goto_5d2

    #@8f
    .line 5045
    :pswitch_8f
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@91
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@93
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    #@95
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@98
    move-result v1

    #@99
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    #@9b
    goto/16 :goto_5d2

    #@9d
    .line 4954
    :pswitch_9d
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@9f
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a1
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@a3
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@a6
    move-result v1

    #@a7
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@a9
    goto/16 :goto_5d2

    #@ab
    .line 4951
    :pswitch_ab
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ad
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@af
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@b1
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@b4
    move-result v1

    #@b5
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@b7
    goto/16 :goto_5d2

    #@b9
    .line 5240
    :pswitch_b9
    new-instance v2, Ljava/lang/StringBuilder;

    #@bb
    const-string v3, "unused attribute 0x"

    #@bd
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c0
    .line 5241
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@ce
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    #@d1
    move-result v1

    #@d2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v1

    #@da
    .line 5240
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    goto/16 :goto_5d2

    #@df
    .line 5195
    :pswitch_df
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@e2
    move-result-object v2

    #@e3
    .line 5197
    iget v4, v2, Landroid/util/TypedValue;->type:I

    #@e5
    const/4 v5, -0x2

    #@e6
    const/4 v7, -0x1

    #@e7
    if-ne v4, v3, :cond_fd

    #@e9
    .line 5198
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@eb
    invoke-virtual {p3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ee
    move-result v1

    #@ef
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@f1
    .line 5199
    iget-object v1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@f3
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@f5
    if-eq v1, v7, :cond_5d2

    #@f7
    .line 5200
    iget-object v1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@f9
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@fb
    goto/16 :goto_5d2

    #@fd
    .line 5202
    :cond_fd
    iget v2, v2, Landroid/util/TypedValue;->type:I

    #@ff
    if-ne v2, v6, :cond_129

    #@101
    .line 5203
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@103
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@106
    move-result-object v3

    #@107
    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@109
    .line 5204
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@10b
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@10d
    const-string v3, "/"

    #@10f
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@112
    move-result v2

    #@113
    if-lez v2, :cond_123

    #@115
    .line 5205
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@117
    invoke-virtual {p3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@11a
    move-result v1

    #@11b
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@11d
    .line 5206
    iget-object v1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@11f
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@121
    goto/16 :goto_5d2

    #@123
    .line 5208
    :cond_123
    iget-object v1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@125
    iput v7, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@127
    goto/16 :goto_5d2

    #@129
    .line 5211
    :cond_129
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@12b
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@12d
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@12f
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@132
    move-result v1

    #@133
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@135
    goto/16 :goto_5d2

    #@137
    .line 5192
    :pswitch_137
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@139
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@13b
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    #@13d
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@140
    move-result v1

    #@141
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    #@143
    goto/16 :goto_5d2

    #@145
    .line 5189
    :pswitch_145
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@147
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@149
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    #@14b
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@14e
    move-result v1

    #@14f
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    #@151
    goto/16 :goto_5d2

    #@153
    .line 5135
    :pswitch_153
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@155
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@157
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@159
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@15c
    move-result v1

    #@15d
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@15f
    goto/16 :goto_5d2

    #@161
    .line 5168
    :pswitch_161
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@163
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@165
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    #@167
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@16a
    move-result v1

    #@16b
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    #@16d
    goto/16 :goto_5d2

    #@16f
    .line 5084
    :pswitch_16f
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@171
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@173
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    #@175
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@178
    move-result v1

    #@179
    iput-boolean v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    #@17b
    goto/16 :goto_5d2

    #@17d
    .line 5081
    :pswitch_17d
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@17f
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@181
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    #@183
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@186
    move-result v1

    #@187
    iput-boolean v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    #@189
    goto/16 :goto_5d2

    #@18b
    .line 5185
    :pswitch_18b
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@18d
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@18f
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    #@191
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@194
    move-result v1

    #@195
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    #@197
    goto/16 :goto_5d2

    #@199
    .line 5091
    :pswitch_199
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@19b
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@19d
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@19f
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a2
    move-result v1

    #@1a3
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@1a5
    goto/16 :goto_5d2

    #@1a7
    .line 5234
    :pswitch_1a7
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1a9
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1ac
    move-result-object v1

    #@1ad
    iput-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    #@1af
    goto/16 :goto_5d2

    #@1b1
    .line 5179
    :pswitch_1b1
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@1b3
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@1b5
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    #@1b7
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1ba
    move-result v1

    #@1bb
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    #@1bd
    goto/16 :goto_5d2

    #@1bf
    .line 5237
    :pswitch_1bf
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1c1
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1c3
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@1c5
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c8
    move-result v1

    #@1c9
    iput-boolean v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@1cb
    goto/16 :goto_5d2

    #@1cd
    .line 5231
    :pswitch_1cd
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1cf
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1d2
    move-result-object v1

    #@1d3
    iput-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@1d5
    goto/16 :goto_5d2

    #@1d7
    .line 5228
    :pswitch_1d7
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d9
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1db
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@1dd
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1e0
    move-result v1

    #@1e1
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@1e3
    goto/16 :goto_5d2

    #@1e5
    .line 5225
    :pswitch_1e5
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1e7
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1e9
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@1eb
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1ee
    move-result v1

    #@1ef
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@1f1
    goto/16 :goto_5d2

    #@1f3
    :pswitch_1f3
    const-string v1, "CURRENTLY UNSUPPORTED"

    #@1f5
    .line 5221
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f8
    goto/16 :goto_5d2

    #@1fa
    .line 5159
    :pswitch_1fa
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1fc
    invoke-virtual {p3, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1ff
    move-result v1

    #@200
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    #@202
    goto/16 :goto_5d2

    #@204
    .line 5156
    :pswitch_204
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@206
    invoke-virtual {p3, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@209
    move-result v1

    #@20a
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    #@20c
    goto/16 :goto_5d2

    #@20e
    .line 5162
    :pswitch_20e
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@210
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@212
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    #@214
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@217
    move-result v1

    #@218
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    #@21a
    goto/16 :goto_5d2

    #@21c
    .line 5182
    :pswitch_21c
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@21e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@220
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    #@222
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@225
    move-result v1

    #@226
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    #@228
    goto/16 :goto_5d2

    #@22a
    .line 5218
    :pswitch_22a
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@22c
    invoke-virtual {p3, v1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@22f
    move-result v1

    #@230
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    #@232
    goto/16 :goto_5d2

    #@234
    .line 5171
    :pswitch_234
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@237
    move-result-object v2

    #@238
    .line 5172
    iget v2, v2, Landroid/util/TypedValue;->type:I

    #@23a
    if-ne v2, v6, :cond_246

    #@23c
    .line 5173
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@23e
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@241
    move-result-object v1

    #@242
    iput-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    #@244
    goto/16 :goto_5d2

    #@246
    .line 5175
    :cond_246
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@248
    sget-object v3, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    #@24a
    invoke-virtual {p3, v1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@24d
    move-result v1

    #@24e
    aget-object v1, v3, v1

    #@250
    iput-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    #@252
    goto/16 :goto_5d2

    #@254
    .line 5165
    :pswitch_254
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@256
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@258
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    #@25a
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@25d
    move-result v1

    #@25e
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    #@260
    goto/16 :goto_5d2

    #@262
    .line 4993
    :pswitch_262
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@264
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@266
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    #@268
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@26b
    move-result v1

    #@26c
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    #@26e
    goto/16 :goto_5d2

    #@270
    .line 4990
    :pswitch_270
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@272
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@274
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    #@276
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@279
    move-result v1

    #@27a
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    #@27c
    goto/16 :goto_5d2

    #@27e
    .line 4987
    :pswitch_27e
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@280
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@282
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    #@284
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@287
    move-result v1

    #@288
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    #@28a
    goto/16 :goto_5d2

    #@28c
    .line 5103
    :pswitch_28c
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@28e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@290
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@292
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@295
    move-result v1

    #@296
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@298
    goto/16 :goto_5d2

    #@29a
    .line 5075
    :pswitch_29a
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@29c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@29e
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    #@2a0
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2a3
    move-result v1

    #@2a4
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    #@2a6
    goto/16 :goto_5d2

    #@2a8
    .line 5078
    :pswitch_2a8
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2aa
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2ac
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    #@2ae
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2b1
    move-result v1

    #@2b2
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    #@2b4
    goto/16 :goto_5d2

    #@2b6
    .line 5069
    :pswitch_2b6
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2b8
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2ba
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    #@2bc
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2bf
    move-result v1

    #@2c0
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    #@2c2
    goto/16 :goto_5d2

    #@2c4
    .line 5072
    :pswitch_2c4
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2c6
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2c8
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    #@2ca
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2cd
    move-result v1

    #@2ce
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    #@2d0
    goto/16 :goto_5d2

    #@2d2
    .line 5066
    :pswitch_2d2
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2d4
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2d6
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    #@2d8
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2db
    move-result v1

    #@2dc
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    #@2de
    goto/16 :goto_5d2

    #@2e0
    .line 5063
    :pswitch_2e0
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2e2
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2e4
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    #@2e6
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2e9
    move-result v1

    #@2ea
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    #@2ec
    goto/16 :goto_5d2

    #@2ee
    .line 5131
    :pswitch_2ee
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@2f0
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@2f2
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@2f4
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@2f7
    move-result v1

    #@2f8
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@2fa
    goto/16 :goto_5d2

    #@2fc
    .line 5127
    :pswitch_2fc
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@2fe
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@300
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@302
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@305
    move-result v1

    #@306
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@308
    goto/16 :goto_5d2

    #@30a
    .line 5124
    :pswitch_30a
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@30c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@30e
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@310
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@313
    move-result v1

    #@314
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@316
    goto/16 :goto_5d2

    #@318
    .line 5121
    :pswitch_318
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@31a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@31c
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@31e
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@321
    move-result v1

    #@322
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@324
    goto/16 :goto_5d2

    #@326
    .line 5118
    :pswitch_326
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@328
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@32a
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@32c
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@32f
    move-result v1

    #@330
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@332
    goto/16 :goto_5d2

    #@334
    .line 5115
    :pswitch_334
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@336
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@338
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@33a
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@33d
    move-result v1

    #@33e
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@340
    goto/16 :goto_5d2

    #@342
    .line 5112
    :pswitch_342
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@344
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@346
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@348
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@34b
    move-result v1

    #@34c
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@34e
    goto/16 :goto_5d2

    #@350
    .line 5109
    :pswitch_350
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@352
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@354
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@356
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@359
    move-result v1

    #@35a
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@35c
    goto/16 :goto_5d2

    #@35e
    .line 5106
    :pswitch_35e
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@360
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@362
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@364
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@367
    move-result v1

    #@368
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@36a
    goto/16 :goto_5d2

    #@36c
    .line 5098
    :pswitch_36c
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@36e
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@370
    .line 5099
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@372
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@374
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@376
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@379
    move-result v1

    #@37a
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@37c
    goto/16 :goto_5d2

    #@37e
    .line 5094
    :pswitch_37e
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@380
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@382
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@384
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@387
    move-result v1

    #@388
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@38a
    goto/16 :goto_5d2

    #@38c
    .line 5144
    :pswitch_38c
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@38e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@390
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    #@392
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@395
    move-result v1

    #@396
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    #@398
    goto/16 :goto_5d2

    #@39a
    .line 5147
    :pswitch_39a
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@39c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@39e
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    #@3a0
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3a3
    move-result v1

    #@3a4
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    #@3a6
    goto/16 :goto_5d2

    #@3a8
    .line 5138
    :pswitch_3a8
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3aa
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3ac
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@3ae
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3b1
    move-result v1

    #@3b2
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@3b4
    goto/16 :goto_5d2

    #@3b6
    .line 5141
    :pswitch_3b6
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3b8
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3ba
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@3bc
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3bf
    move-result v1

    #@3c0
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@3c2
    goto/16 :goto_5d2

    #@3c4
    .line 5150
    :pswitch_3c4
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@3c6
    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3c9
    move-result v1

    #@3ca
    iput v1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@3cc
    goto/16 :goto_5d2

    #@3ce
    .line 5020
    :pswitch_3ce
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3d0
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3d2
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    #@3d4
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3d7
    move-result v1

    #@3d8
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    #@3da
    goto/16 :goto_5d2

    #@3dc
    .line 4936
    :pswitch_3dc
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3de
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3e0
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@3e2
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@3e5
    move-result v1

    #@3e6
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@3e8
    goto/16 :goto_5d2

    #@3ea
    .line 4939
    :pswitch_3ea
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3ec
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3ee
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@3f0
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@3f3
    move-result v1

    #@3f4
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@3f6
    goto/16 :goto_5d2

    #@3f8
    .line 5039
    :pswitch_3f8
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3fa
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3fc
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    #@3fe
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@401
    move-result v1

    #@402
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    #@404
    goto/16 :goto_5d2

    #@406
    .line 4978
    :pswitch_406
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@408
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@40a
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    #@40c
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@40f
    move-result v1

    #@410
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    #@412
    goto/16 :goto_5d2

    #@414
    .line 4975
    :pswitch_414
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@416
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@418
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@41a
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@41d
    move-result v1

    #@41e
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@420
    goto/16 :goto_5d2

    #@422
    .line 5030
    :pswitch_422
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@424
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@426
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    #@428
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@42b
    move-result v1

    #@42c
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    #@42e
    goto/16 :goto_5d2

    #@430
    .line 4933
    :pswitch_430
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@432
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@434
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@436
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@439
    move-result v1

    #@43a
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@43c
    goto/16 :goto_5d2

    #@43e
    .line 4930
    :pswitch_43e
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@440
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@442
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@444
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@447
    move-result v1

    #@448
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@44a
    goto/16 :goto_5d2

    #@44c
    .line 5026
    :pswitch_44c
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@44e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@450
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    #@452
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@455
    move-result v1

    #@456
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    #@458
    goto/16 :goto_5d2

    #@45a
    .line 4972
    :pswitch_45a
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@45c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@45e
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    #@460
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@463
    move-result v1

    #@464
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    #@466
    goto/16 :goto_5d2

    #@468
    .line 4927
    :pswitch_468
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@46a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@46c
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@46e
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@471
    move-result v1

    #@472
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@474
    goto/16 :goto_5d2

    #@476
    .line 4924
    :pswitch_476
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@478
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@47a
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@47c
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@47f
    move-result v1

    #@480
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@482
    goto/16 :goto_5d2

    #@484
    .line 5023
    :pswitch_484
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@486
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@488
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    #@48a
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@48d
    move-result v1

    #@48e
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    #@490
    goto/16 :goto_5d2

    #@492
    .line 5048
    :pswitch_492
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@494
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@496
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@498
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@49b
    move-result v1

    #@49c
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@49e
    goto/16 :goto_5d2

    #@4a0
    .line 5087
    :pswitch_4a0
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@4a2
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@4a4
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@4a6
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4a9
    move-result v1

    #@4aa
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@4ac
    .line 5088
    iget-object v1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@4ae
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    #@4b0
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@4b2
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@4b4
    aget v2, v2, v3

    #@4b6
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@4b8
    goto/16 :goto_5d2

    #@4ba
    .line 5051
    :pswitch_4ba
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4bc
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4be
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@4c0
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@4c3
    move-result v1

    #@4c4
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@4c6
    goto/16 :goto_5d2

    #@4c8
    .line 5017
    :pswitch_4c8
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4ca
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4cc
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@4ce
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4d1
    move-result v1

    #@4d2
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@4d4
    goto/16 :goto_5d2

    #@4d6
    .line 4969
    :pswitch_4d6
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4d8
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4da
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    #@4dc
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4df
    move-result v1

    #@4e0
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    #@4e2
    goto/16 :goto_5d2

    #@4e4
    .line 4966
    :pswitch_4e4
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4e6
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4e8
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    #@4ea
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4ed
    move-result v1

    #@4ee
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    #@4f0
    goto/16 :goto_5d2

    #@4f2
    .line 4963
    :pswitch_4f2
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4f4
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4f6
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    #@4f8
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4fb
    move-result v1

    #@4fc
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    #@4fe
    goto/16 :goto_5d2

    #@500
    .line 4999
    :pswitch_500
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@502
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@504
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    #@506
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@509
    move-result v1

    #@50a
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    #@50c
    goto/16 :goto_5d2

    #@50e
    .line 5008
    :pswitch_50e
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@510
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@512
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    #@514
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@517
    move-result v1

    #@518
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    #@51a
    goto/16 :goto_5d2

    #@51c
    .line 5002
    :pswitch_51c
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@51e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@520
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    #@522
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@525
    move-result v1

    #@526
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    #@528
    goto/16 :goto_5d2

    #@52a
    .line 4996
    :pswitch_52a
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@52c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@52e
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    #@530
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@533
    move-result v1

    #@534
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    #@536
    goto/16 :goto_5d2

    #@538
    .line 5011
    :pswitch_538
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@53a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@53c
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    #@53e
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@541
    move-result v1

    #@542
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    #@544
    goto/16 :goto_5d2

    #@546
    .line 5005
    :pswitch_546
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@548
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@54a
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    #@54c
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@54f
    move-result v1

    #@550
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    #@552
    goto/16 :goto_5d2

    #@554
    .line 4981
    :pswitch_554
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@556
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@558
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@55a
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@55d
    move-result v1

    #@55e
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@560
    goto/16 :goto_5d2

    #@562
    .line 4984
    :pswitch_562
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@564
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@566
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    #@568
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@56b
    move-result v1

    #@56c
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    #@56e
    goto :goto_5d2

    #@56f
    .line 5035
    :pswitch_56f
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@571
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@573
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    #@575
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@578
    move-result v1

    #@579
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    #@57b
    goto :goto_5d2

    #@57c
    .line 4960
    :pswitch_57c
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@57e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@580
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    #@582
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@585
    move-result v1

    #@586
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    #@588
    goto :goto_5d2

    #@589
    .line 4957
    :pswitch_589
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@58b
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@58d
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    #@58f
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@592
    move-result v1

    #@593
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    #@595
    goto :goto_5d2

    #@596
    .line 5153
    :pswitch_596
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@598
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@59b
    move-result-object v1

    #@59c
    iput-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    #@59e
    goto :goto_5d2

    #@59f
    .line 4942
    :pswitch_59f
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5a1
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5a3
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@5a5
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@5a8
    move-result v1

    #@5a9
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@5ab
    goto :goto_5d2

    #@5ac
    .line 4945
    :pswitch_5ac
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5ae
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5b0
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@5b2
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@5b5
    move-result v1

    #@5b6
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@5b8
    goto :goto_5d2

    #@5b9
    .line 5042
    :pswitch_5b9
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5bb
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5bd
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    #@5bf
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5c2
    move-result v1

    #@5c3
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    #@5c5
    goto :goto_5d2

    #@5c6
    .line 4948
    :pswitch_5c6
    iget-object v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5c8
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5ca
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@5cc
    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@5cf
    move-result v1

    #@5d0
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@5d2
    :cond_5d2
    :goto_5d2
    add-int/lit8 v0, v0, 0x1

    #@5d4
    goto/16 :goto_c

    #@5d6
    .line 5248
    :cond_5d6
    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5d8
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@5da
    if-eqz p1, :cond_5e1

    #@5dc
    .line 5250
    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5de
    const/4 p2, 0x0

    #@5df
    iput-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@5e1
    :cond_5e1
    return-void

    #@5e2
    :pswitch_data_5e2
    .packed-switch 0x1
        :pswitch_5c6
        :pswitch_5b9
        :pswitch_5ac
        :pswitch_59f
        :pswitch_596
        :pswitch_589
        :pswitch_57c
        :pswitch_56f
        :pswitch_562
        :pswitch_554
        :pswitch_546
        :pswitch_538
        :pswitch_52a
        :pswitch_51c
        :pswitch_50e
        :pswitch_500
        :pswitch_4f2
        :pswitch_4e4
        :pswitch_4d6
        :pswitch_4c8
        :pswitch_4ba
        :pswitch_4a0
        :pswitch_492
        :pswitch_484
        :pswitch_476
        :pswitch_468
        :pswitch_45a
        :pswitch_44c
        :pswitch_43e
        :pswitch_430
        :pswitch_422
        :pswitch_414
        :pswitch_406
        :pswitch_3f8
        :pswitch_3ea
        :pswitch_3dc
        :pswitch_3ce
        :pswitch_3c4
        :pswitch_3b6
        :pswitch_3a8
        :pswitch_39a
        :pswitch_38c
        :pswitch_37e
        :pswitch_36c
        :pswitch_35e
        :pswitch_350
        :pswitch_342
        :pswitch_334
        :pswitch_326
        :pswitch_318
        :pswitch_30a
        :pswitch_2fc
        :pswitch_2ee
        :pswitch_2e0
        :pswitch_2d2
        :pswitch_2c4
        :pswitch_2b6
        :pswitch_2a8
        :pswitch_29a
        :pswitch_28c
        :pswitch_27e
        :pswitch_270
        :pswitch_262
        :pswitch_254
        :pswitch_234
        :pswitch_22a
        :pswitch_21c
        :pswitch_20e
        :pswitch_204
        :pswitch_1fa
        :pswitch_1f3
        :pswitch_1e5
        :pswitch_1d7
        :pswitch_1cd
        :pswitch_1bf
        :pswitch_1b1
        :pswitch_1a7
        :pswitch_199
        :pswitch_18b
        :pswitch_17d
        :pswitch_16f
        :pswitch_161
        :pswitch_153
        :pswitch_145
        :pswitch_137
        :pswitch_df
        :pswitch_b9
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_ab
        :pswitch_9d
        :pswitch_8f
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_65
    .end packed-switch
.end method

.method private static populateOverride(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "c",
            "a"
        }
    .end annotation

    #@0
    .line 4264
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@3
    move-result p0

    #@4
    .line 4266
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@6
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;-><init>()V

    #@9
    .line 4267
    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@b
    .line 4268
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@d
    const/4 v2, 0x0

    #@e
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    #@10
    .line 4269
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@12
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    #@14
    .line 4270
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@16
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    #@18
    .line 4271
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@1a
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@1c
    move v1, v2

    #@1d
    :goto_1d
    if-ge v1, p0, :cond_5a0

    #@1f
    .line 4273
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@22
    move-result v3

    #@23
    .line 4276
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    #@25
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    #@28
    move-result v4

    #@29
    const/high16 v5, 0x3f800000    # 1.0f

    #@2b
    const-string v6, "   "

    #@2d
    const/4 v7, 0x3

    #@2e
    const-string v8, "ConstraintSet"

    #@30
    const/4 v9, 0x1

    #@31
    const/4 v10, -0x1

    #@32
    packed-switch v4, :pswitch_data_5a2

    #@35
    .line 4579
    :pswitch_35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    const-string v5, "Unknown attribute 0x"

    #@39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3c
    .line 4580
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@4a
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    #@4d
    move-result v3

    #@4e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    .line 4579
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto/16 :goto_59c

    #@5b
    .line 4299
    :pswitch_5b
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5d
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    #@5f
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@62
    move-result v3

    #@63
    const/16 v4, 0x63

    #@65
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    #@68
    goto/16 :goto_59c

    #@6a
    .line 4468
    :pswitch_6a
    sget-boolean v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@6c
    if-eqz v4, :cond_82

    #@6e
    .line 4469
    iget v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@70
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@73
    move-result v4

    #@74
    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@76
    .line 4470
    iget v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@78
    if-ne v4, v10, :cond_59c

    #@7a
    .line 4471
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    iput-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    #@80
    goto/16 :goto_59c

    #@82
    .line 4474
    :cond_82
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@85
    move-result-object v4

    #@86
    iget v4, v4, Landroid/util/TypedValue;->type:I

    #@88
    if-ne v4, v7, :cond_92

    #@8a
    .line 4475
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    iput-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    #@90
    goto/16 :goto_59c

    #@92
    .line 4477
    :cond_92
    iget v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@94
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@97
    move-result v3

    #@98
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@9a
    goto/16 :goto_59c

    #@9c
    .line 4375
    :pswitch_9c
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@9e
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    #@a0
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@a3
    move-result v3

    #@a4
    const/16 v4, 0x61

    #@a6
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@a9
    goto/16 :goto_59c

    #@ab
    .line 4372
    :pswitch_ab
    invoke-static {v0, p2, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    #@ae
    goto/16 :goto_59c

    #@b0
    .line 4369
    :pswitch_b0
    invoke-static {v0, p2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    #@b3
    goto/16 :goto_59c

    #@b5
    .line 4329
    :pswitch_b5
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b7
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    #@b9
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@bc
    move-result v3

    #@bd
    const/16 v4, 0x5e

    #@bf
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@c2
    goto/16 :goto_59c

    #@c4
    .line 4360
    :pswitch_c4
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@c6
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    #@c8
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@cb
    move-result v3

    #@cc
    const/16 v4, 0x5d

    #@ce
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@d1
    goto/16 :goto_59c

    #@d3
    .line 4575
    :pswitch_d3
    new-instance v4, Ljava/lang/StringBuilder;

    #@d5
    const-string v5, "unused attribute 0x"

    #@d7
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@da
    .line 4576
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@dd
    move-result-object v5

    #@de
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v4

    #@e6
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    #@e8
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    #@eb
    move-result v3

    #@ec
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v3

    #@f4
    .line 4575
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    goto/16 :goto_59c

    #@f9
    .line 4524
    :pswitch_f9
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@fc
    move-result-object v4

    #@fd
    .line 4525
    iget v5, v4, Landroid/util/TypedValue;->type:I

    #@ff
    const/4 v6, -0x2

    #@100
    const/16 v8, 0x59

    #@102
    const/16 v11, 0x58

    #@104
    if-ne v5, v9, :cond_128

    #@106
    .line 4526
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@108
    invoke-virtual {p2, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10b
    move-result v3

    #@10c
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@10e
    .line 4527
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@110
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@112
    invoke-virtual {v0, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@115
    .line 4528
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@117
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@119
    if-eq v3, v10, :cond_59c

    #@11b
    .line 4529
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@11d
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@11f
    .line 4530
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@121
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@123
    invoke-virtual {v0, v11, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@126
    goto/16 :goto_59c

    #@128
    .line 4532
    :cond_128
    iget v4, v4, Landroid/util/TypedValue;->type:I

    #@12a
    if-ne v4, v7, :cond_172

    #@12c
    .line 4533
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@12e
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@131
    move-result-object v5

    #@132
    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@134
    .line 4534
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@136
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@138
    const/16 v5, 0x5a

    #@13a
    invoke-virtual {v0, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    #@13d
    .line 4536
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@13f
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@141
    const-string v5, "/"

    #@143
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@146
    move-result v4

    #@147
    if-lez v4, :cond_165

    #@149
    .line 4537
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@14b
    invoke-virtual {p2, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14e
    move-result v3

    #@14f
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@151
    .line 4538
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@153
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@155
    invoke-virtual {v0, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@158
    .line 4540
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@15a
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@15c
    .line 4541
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@15e
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@160
    invoke-virtual {v0, v11, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@163
    goto/16 :goto_59c

    #@165
    .line 4544
    :cond_165
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@167
    iput v10, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@169
    .line 4545
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@16b
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@16d
    invoke-virtual {v0, v11, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@170
    goto/16 :goto_59c

    #@172
    .line 4548
    :cond_172
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@174
    iget-object v5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@176
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@178
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@17b
    move-result v3

    #@17c
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@17e
    .line 4549
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@180
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@182
    invoke-virtual {v0, v11, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@185
    goto/16 :goto_59c

    #@187
    .line 4521
    :pswitch_187
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@189
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    #@18b
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@18e
    move-result v3

    #@18f
    const/16 v4, 0x55

    #@191
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@194
    goto/16 :goto_59c

    #@196
    .line 4518
    :pswitch_196
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@198
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    #@19a
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@19d
    move-result v3

    #@19e
    const/16 v4, 0x54

    #@1a0
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@1a3
    goto/16 :goto_59c

    #@1a5
    .line 4449
    :pswitch_1a5
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@1a7
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@1a9
    invoke-static {p2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@1ac
    move-result v3

    #@1ad
    const/16 v4, 0x53

    #@1af
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@1b2
    goto/16 :goto_59c

    #@1b4
    .line 4497
    :pswitch_1b4
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@1b6
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    #@1b8
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@1bb
    move-result v3

    #@1bc
    const/16 v4, 0x52

    #@1be
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@1c1
    goto/16 :goto_59c

    #@1c3
    .line 4399
    :pswitch_1c3
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1c5
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    #@1c7
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1ca
    move-result v3

    #@1cb
    const/16 v4, 0x51

    #@1cd
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    #@1d0
    goto/16 :goto_59c

    #@1d2
    .line 4396
    :pswitch_1d2
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d4
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    #@1d6
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d9
    move-result v3

    #@1da
    const/16 v4, 0x50

    #@1dc
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    #@1df
    goto/16 :goto_59c

    #@1e1
    .line 4514
    :pswitch_1e1
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@1e3
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    #@1e5
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1e8
    move-result v3

    #@1e9
    const/16 v4, 0x4f

    #@1eb
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@1ee
    goto/16 :goto_59c

    #@1f0
    .line 4405
    :pswitch_1f0
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@1f2
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@1f4
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1f7
    move-result v3

    #@1f8
    const/16 v4, 0x4e

    #@1fa
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@1fd
    goto/16 :goto_59c

    #@1ff
    :pswitch_1ff
    const/16 v4, 0x4d

    #@201
    .line 4569
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@204
    move-result-object v3

    #@205
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    #@208
    goto/16 :goto_59c

    #@20a
    .line 4508
    :pswitch_20a
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@20c
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    #@20e
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@211
    move-result v3

    #@212
    const/16 v4, 0x4c

    #@214
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@217
    goto/16 :goto_59c

    #@219
    .line 4572
    :pswitch_219
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@21b
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@21d
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@220
    move-result v3

    #@221
    const/16 v4, 0x4b

    #@223
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    #@226
    goto/16 :goto_59c

    #@228
    :pswitch_228
    const/16 v4, 0x4a

    #@22a
    .line 4566
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@22d
    move-result-object v3

    #@22e
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    #@231
    goto/16 :goto_59c

    #@233
    .line 4563
    :pswitch_233
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@235
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@237
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@23a
    move-result v3

    #@23b
    const/16 v4, 0x49

    #@23d
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@240
    goto/16 :goto_59c

    #@242
    .line 4560
    :pswitch_242
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@244
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@246
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@249
    move-result v3

    #@24a
    const/16 v4, 0x48

    #@24c
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@24f
    goto/16 :goto_59c

    #@251
    :pswitch_251
    const-string v3, "CURRENTLY UNSUPPORTED"

    #@253
    .line 4556
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@256
    goto/16 :goto_59c

    #@258
    :pswitch_258
    const/16 v4, 0x46

    #@25a
    .line 4488
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@25d
    move-result v3

    #@25e
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@261
    goto/16 :goto_59c

    #@263
    :pswitch_263
    const/16 v4, 0x45

    #@265
    .line 4485
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@268
    move-result v3

    #@269
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@26c
    goto/16 :goto_59c

    #@26e
    .line 4491
    :pswitch_26e
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@270
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    #@272
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@275
    move-result v3

    #@276
    const/16 v4, 0x44

    #@278
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@27b
    goto/16 :goto_59c

    #@27d
    .line 4511
    :pswitch_27d
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@27f
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    #@281
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@284
    move-result v3

    #@285
    const/16 v4, 0x43

    #@287
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@28a
    goto/16 :goto_59c

    #@28c
    :pswitch_28c
    const/16 v4, 0x42

    #@28e
    .line 4553
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@291
    move-result v3

    #@292
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@295
    goto/16 :goto_59c

    #@297
    .line 4500
    :pswitch_297
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@29a
    move-result-object v4

    #@29b
    .line 4501
    iget v4, v4, Landroid/util/TypedValue;->type:I

    #@29d
    const/16 v5, 0x41

    #@29f
    if-ne v4, v7, :cond_2aa

    #@2a1
    .line 4502
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2a4
    move-result-object v3

    #@2a5
    invoke-virtual {v0, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    #@2a8
    goto/16 :goto_59c

    #@2aa
    .line 4504
    :cond_2aa
    sget-object v4, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    #@2ac
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@2af
    move-result v3

    #@2b0
    aget-object v3, v4, v3

    #@2b2
    invoke-virtual {v0, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    #@2b5
    goto/16 :goto_59c

    #@2b7
    .line 4494
    :pswitch_2b7
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@2b9
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    #@2bb
    invoke-static {p2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    #@2be
    move-result v3

    #@2bf
    const/16 v4, 0x40

    #@2c1
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@2c4
    goto/16 :goto_59c

    #@2c6
    .line 4308
    :pswitch_2c6
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2c8
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    #@2ca
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2cd
    move-result v3

    #@2ce
    const/16 v4, 0x3f

    #@2d0
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@2d3
    goto/16 :goto_59c

    #@2d5
    .line 4305
    :pswitch_2d5
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2d7
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    #@2d9
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2dc
    move-result v3

    #@2dd
    const/16 v4, 0x3e

    #@2df
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@2e2
    goto/16 :goto_59c

    #@2e4
    .line 4417
    :pswitch_2e4
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@2e6
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@2e8
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2eb
    move-result v3

    #@2ec
    const/16 v4, 0x3c

    #@2ee
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@2f1
    goto/16 :goto_59c

    #@2f3
    .line 4390
    :pswitch_2f3
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2f5
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    #@2f7
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2fa
    move-result v3

    #@2fb
    const/16 v4, 0x3b

    #@2fd
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@300
    goto/16 :goto_59c

    #@302
    .line 4393
    :pswitch_302
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@304
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    #@306
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@309
    move-result v3

    #@30a
    const/16 v4, 0x3a

    #@30c
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@30f
    goto/16 :goto_59c

    #@311
    .line 4384
    :pswitch_311
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@313
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    #@315
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@318
    move-result v3

    #@319
    const/16 v4, 0x39

    #@31b
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@31e
    goto/16 :goto_59c

    #@320
    .line 4387
    :pswitch_320
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@322
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    #@324
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@327
    move-result v3

    #@328
    const/16 v4, 0x38

    #@32a
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@32d
    goto/16 :goto_59c

    #@32f
    .line 4381
    :pswitch_32f
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@331
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    #@333
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@336
    move-result v3

    #@337
    const/16 v4, 0x37

    #@339
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@33c
    goto/16 :goto_59c

    #@33e
    .line 4378
    :pswitch_33e
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@340
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    #@342
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@345
    move-result v3

    #@346
    const/16 v4, 0x36

    #@348
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@34b
    goto/16 :goto_59c

    #@34d
    .line 4445
    :pswitch_34d
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@34f
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@351
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@354
    move-result v3

    #@355
    const/16 v4, 0x35

    #@357
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@35a
    goto/16 :goto_59c

    #@35c
    .line 4441
    :pswitch_35c
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@35e
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@360
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@363
    move-result v3

    #@364
    const/16 v4, 0x34

    #@366
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@369
    goto/16 :goto_59c

    #@36b
    .line 4438
    :pswitch_36b
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@36d
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@36f
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@372
    move-result v3

    #@373
    const/16 v4, 0x33

    #@375
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@378
    goto/16 :goto_59c

    #@37a
    .line 4435
    :pswitch_37a
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@37c
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@37e
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@381
    move-result v3

    #@382
    const/16 v4, 0x32

    #@384
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@387
    goto/16 :goto_59c

    #@389
    .line 4432
    :pswitch_389
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@38b
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@38d
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@390
    move-result v3

    #@391
    const/16 v4, 0x31

    #@393
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@396
    goto/16 :goto_59c

    #@398
    .line 4429
    :pswitch_398
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@39a
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@39c
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@39f
    move-result v3

    #@3a0
    const/16 v4, 0x30

    #@3a2
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@3a5
    goto/16 :goto_59c

    #@3a7
    .line 4426
    :pswitch_3a7
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@3a9
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@3ab
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3ae
    move-result v3

    #@3af
    const/16 v4, 0x2f

    #@3b1
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@3b4
    goto/16 :goto_59c

    #@3b6
    .line 4423
    :pswitch_3b6
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@3b8
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@3ba
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3bd
    move-result v3

    #@3be
    const/16 v4, 0x2e

    #@3c0
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@3c3
    goto/16 :goto_59c

    #@3c5
    .line 4420
    :pswitch_3c5
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@3c7
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@3c9
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3cc
    move-result v3

    #@3cd
    const/16 v4, 0x2d

    #@3cf
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@3d2
    goto/16 :goto_59c

    #@3d4
    :pswitch_3d4
    const/16 v4, 0x2c

    #@3d6
    .line 4412
    invoke-virtual {v0, v4, v9}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    #@3d9
    .line 4413
    iget-object v5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@3db
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@3dd
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@3e0
    move-result v3

    #@3e1
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@3e4
    goto/16 :goto_59c

    #@3e6
    .line 4408
    :pswitch_3e6
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@3e8
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@3ea
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3ed
    move-result v3

    #@3ee
    const/16 v4, 0x2b

    #@3f0
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@3f3
    goto/16 :goto_59c

    #@3f5
    .line 4458
    :pswitch_3f5
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3f7
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    #@3f9
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3fc
    move-result v3

    #@3fd
    const/16 v4, 0x2a

    #@3ff
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@402
    goto/16 :goto_59c

    #@404
    .line 4461
    :pswitch_404
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@406
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    #@408
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@40b
    move-result v3

    #@40c
    const/16 v4, 0x29

    #@40e
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@411
    goto/16 :goto_59c

    #@413
    .line 4452
    :pswitch_413
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@415
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@417
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@41a
    move-result v3

    #@41b
    const/16 v4, 0x28

    #@41d
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@420
    goto/16 :goto_59c

    #@422
    .line 4455
    :pswitch_422
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@424
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@426
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@429
    move-result v3

    #@42a
    const/16 v4, 0x27

    #@42c
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@42f
    goto/16 :goto_59c

    #@431
    .line 4464
    :pswitch_431
    iget v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@433
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@436
    move-result v3

    #@437
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@439
    const/16 v3, 0x26

    #@43b
    .line 4465
    iget v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@43d
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@440
    goto/16 :goto_59c

    #@442
    .line 4335
    :pswitch_442
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@444
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    #@446
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@449
    move-result v3

    #@44a
    const/16 v4, 0x25

    #@44c
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@44f
    goto/16 :goto_59c

    #@451
    .line 4354
    :pswitch_451
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@453
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    #@455
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@458
    move-result v3

    #@459
    const/16 v4, 0x22

    #@45b
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@45e
    goto/16 :goto_59c

    #@460
    .line 4345
    :pswitch_460
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@462
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    #@464
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@467
    move-result v3

    #@468
    const/16 v4, 0x1f

    #@46a
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@46d
    goto/16 :goto_59c

    #@46f
    .line 4341
    :pswitch_46f
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@471
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    #@473
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@476
    move-result v3

    #@477
    const/16 v4, 0x1c

    #@479
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@47c
    goto/16 :goto_59c

    #@47e
    .line 4302
    :pswitch_47e
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@480
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    #@482
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@485
    move-result v3

    #@486
    const/16 v4, 0x1b

    #@488
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@48b
    goto/16 :goto_59c

    #@48d
    .line 4338
    :pswitch_48d
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@48f
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    #@491
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@494
    move-result v3

    #@495
    const/16 v4, 0x18

    #@497
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@49a
    goto/16 :goto_59c

    #@49c
    .line 4363
    :pswitch_49c
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@49e
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@4a0
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@4a3
    move-result v3

    #@4a4
    const/16 v4, 0x17

    #@4a6
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@4a9
    goto/16 :goto_59c

    #@4ab
    .line 4402
    :pswitch_4ab
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    #@4ad
    iget-object v5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@4af
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@4b1
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4b4
    move-result v3

    #@4b5
    aget v3, v4, v3

    #@4b7
    const/16 v4, 0x16

    #@4b9
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@4bc
    goto/16 :goto_59c

    #@4be
    .line 4366
    :pswitch_4be
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4c0
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@4c2
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@4c5
    move-result v3

    #@4c6
    const/16 v4, 0x15

    #@4c8
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@4cb
    goto/16 :goto_59c

    #@4cd
    .line 4332
    :pswitch_4cd
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4cf
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@4d1
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4d4
    move-result v3

    #@4d5
    const/16 v4, 0x14

    #@4d7
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@4da
    goto/16 :goto_59c

    #@4dc
    .line 4296
    :pswitch_4dc
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4de
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    #@4e0
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4e3
    move-result v3

    #@4e4
    const/16 v4, 0x13

    #@4e6
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    #@4e9
    goto/16 :goto_59c

    #@4eb
    .line 4293
    :pswitch_4eb
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4ed
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    #@4ef
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4f2
    move-result v3

    #@4f3
    const/16 v4, 0x12

    #@4f5
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@4f8
    goto/16 :goto_59c

    #@4fa
    .line 4290
    :pswitch_4fa
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4fc
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    #@4fe
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@501
    move-result v3

    #@502
    const/16 v4, 0x11

    #@504
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@507
    goto/16 :goto_59c

    #@509
    .line 4314
    :pswitch_509
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@50b
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    #@50d
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@510
    move-result v3

    #@511
    const/16 v4, 0x10

    #@513
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@516
    goto/16 :goto_59c

    #@518
    .line 4323
    :pswitch_518
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@51a
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    #@51c
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@51f
    move-result v3

    #@520
    const/16 v4, 0xf

    #@522
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@525
    goto/16 :goto_59c

    #@527
    .line 4317
    :pswitch_527
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@529
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    #@52b
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@52e
    move-result v3

    #@52f
    const/16 v4, 0xe

    #@531
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@534
    goto :goto_59c

    #@535
    .line 4311
    :pswitch_535
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@537
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    #@539
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@53c
    move-result v3

    #@53d
    const/16 v4, 0xd

    #@53f
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@542
    goto :goto_59c

    #@543
    .line 4326
    :pswitch_543
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@545
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    #@547
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@54a
    move-result v3

    #@54b
    const/16 v4, 0xc

    #@54d
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@550
    goto :goto_59c

    #@551
    .line 4320
    :pswitch_551
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@553
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    #@555
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@558
    move-result v3

    #@559
    const/16 v4, 0xb

    #@55b
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@55e
    goto :goto_59c

    #@55f
    .line 4350
    :pswitch_55f
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@561
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    #@563
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@566
    move-result v3

    #@567
    const/16 v4, 0x8

    #@569
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@56c
    goto :goto_59c

    #@56d
    .line 4287
    :pswitch_56d
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@56f
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    #@571
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@574
    move-result v3

    #@575
    const/4 v4, 0x7

    #@576
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@579
    goto :goto_59c

    #@57a
    .line 4284
    :pswitch_57a
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@57c
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    #@57e
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@581
    move-result v3

    #@582
    const/4 v4, 0x6

    #@583
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@586
    goto :goto_59c

    #@587
    :pswitch_587
    const/4 v4, 0x5

    #@588
    .line 4482
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@58b
    move-result-object v3

    #@58c
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    #@58f
    goto :goto_59c

    #@590
    .line 4357
    :pswitch_590
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@592
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    #@594
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@597
    move-result v3

    #@598
    const/4 v4, 0x2

    #@599
    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    #@59c
    :cond_59c
    :goto_59c
    add-int/lit8 v1, v1, 0x1

    #@59e
    goto/16 :goto_1d

    #@5a0
    :cond_5a0
    return-void

    #@5a1
    nop

    #@5a2
    :pswitch_data_5a2
    .packed-switch 0x2
        :pswitch_590
        :pswitch_35
        :pswitch_35
        :pswitch_587
        :pswitch_57a
        :pswitch_56d
        :pswitch_55f
        :pswitch_35
        :pswitch_35
        :pswitch_551
        :pswitch_543
        :pswitch_535
        :pswitch_527
        :pswitch_518
        :pswitch_509
        :pswitch_4fa
        :pswitch_4eb
        :pswitch_4dc
        :pswitch_4cd
        :pswitch_4be
        :pswitch_4ab
        :pswitch_49c
        :pswitch_48d
        :pswitch_35
        :pswitch_35
        :pswitch_47e
        :pswitch_46f
        :pswitch_35
        :pswitch_35
        :pswitch_460
        :pswitch_35
        :pswitch_35
        :pswitch_451
        :pswitch_35
        :pswitch_35
        :pswitch_442
        :pswitch_431
        :pswitch_422
        :pswitch_413
        :pswitch_404
        :pswitch_3f5
        :pswitch_3e6
        :pswitch_3d4
        :pswitch_3c5
        :pswitch_3b6
        :pswitch_3a7
        :pswitch_398
        :pswitch_389
        :pswitch_37a
        :pswitch_36b
        :pswitch_35c
        :pswitch_34d
        :pswitch_33e
        :pswitch_32f
        :pswitch_320
        :pswitch_311
        :pswitch_302
        :pswitch_2f3
        :pswitch_2e4
        :pswitch_35
        :pswitch_2d5
        :pswitch_2c6
        :pswitch_2b7
        :pswitch_297
        :pswitch_28c
        :pswitch_27d
        :pswitch_26e
        :pswitch_263
        :pswitch_258
        :pswitch_251
        :pswitch_242
        :pswitch_233
        :pswitch_228
        :pswitch_219
        :pswitch_20a
        :pswitch_1ff
        :pswitch_1f0
        :pswitch_1e1
        :pswitch_1d2
        :pswitch_1c3
        :pswitch_1b4
        :pswitch_1a5
        :pswitch_196
        :pswitch_187
        :pswitch_f9
        :pswitch_d3
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_c4
        :pswitch_b5
        :pswitch_b0
        :pswitch_ab
        :pswitch_9c
        :pswitch_6a
        :pswitch_5b
    .end packed-switch
.end method

.method private static setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "type",
            "value"
        }
    .end annotation

    #@0
    const/16 v0, 0x13

    #@2
    if-eq p1, v0, :cond_b5

    #@4
    const/16 v0, 0x14

    #@6
    if-eq p1, v0, :cond_b0

    #@8
    const/16 v0, 0x25

    #@a
    if-eq p1, v0, :cond_ab

    #@c
    const/16 v0, 0x3c

    #@e
    if-eq p1, v0, :cond_a6

    #@10
    const/16 v0, 0x3f

    #@12
    if-eq p1, v0, :cond_a1

    #@14
    const/16 v0, 0x4f

    #@16
    if-eq p1, v0, :cond_9c

    #@18
    const/16 v0, 0x55

    #@1a
    if-eq p1, v0, :cond_97

    #@1c
    const/16 v0, 0x57

    #@1e
    if-eq p1, v0, :cond_b9

    #@20
    const/16 v0, 0x27

    #@22
    if-eq p1, v0, :cond_92

    #@24
    const/16 v0, 0x28

    #@26
    if-eq p1, v0, :cond_8d

    #@28
    packed-switch p1, :pswitch_data_ba

    #@2b
    packed-switch p1, :pswitch_data_d4

    #@2e
    const-string p0, "ConstraintSet"

    #@30
    const-string p1, "Unknown attribute 0x"

    #@32
    .line 4663
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    goto/16 :goto_b9

    #@37
    .line 4646
    :pswitch_37
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@39
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    #@3b
    goto/16 :goto_b9

    #@3d
    .line 4643
    :pswitch_3d
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3f
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    #@41
    goto/16 :goto_b9

    #@43
    .line 4649
    :pswitch_43
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@45
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    #@47
    goto/16 :goto_b9

    #@49
    .line 4652
    :pswitch_49
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@4b
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    #@4d
    goto/16 :goto_b9

    #@4f
    .line 4634
    :pswitch_4f
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@51
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@53
    goto/16 :goto_b9

    #@55
    .line 4631
    :pswitch_55
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@57
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@59
    goto/16 :goto_b9

    #@5b
    .line 4628
    :pswitch_5b
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@5d
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@5f
    goto :goto_b9

    #@60
    .line 4625
    :pswitch_60
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@62
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@64
    goto :goto_b9

    #@65
    .line 4622
    :pswitch_65
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@67
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@69
    goto :goto_b9

    #@6a
    .line 4619
    :pswitch_6a
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6c
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@6e
    goto :goto_b9

    #@6f
    .line 4616
    :pswitch_6f
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@71
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@73
    goto :goto_b9

    #@74
    .line 4613
    :pswitch_74
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@76
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@78
    goto :goto_b9

    #@79
    .line 4610
    :pswitch_79
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@7b
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@7d
    goto :goto_b9

    #@7e
    .line 4603
    :pswitch_7e
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@80
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@82
    .line 4604
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@84
    const/4 p1, 0x1

    #@85
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@87
    goto :goto_b9

    #@88
    .line 4600
    :pswitch_88
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@8a
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@8c
    goto :goto_b9

    #@8d
    .line 4637
    :cond_8d
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@8f
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@91
    goto :goto_b9

    #@92
    .line 4640
    :cond_92
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@94
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@96
    goto :goto_b9

    #@97
    .line 4658
    :cond_97
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@99
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    #@9b
    goto :goto_b9

    #@9c
    .line 4655
    :cond_9c
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@9e
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    #@a0
    goto :goto_b9

    #@a1
    .line 4591
    :cond_a1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a3
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    #@a5
    goto :goto_b9

    #@a6
    .line 4607
    :cond_a6
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@a8
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@aa
    goto :goto_b9

    #@ab
    .line 4597
    :cond_ab
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ad
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    #@af
    goto :goto_b9

    #@b0
    .line 4594
    :cond_b0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b2
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@b4
    goto :goto_b9

    #@b5
    .line 4588
    :cond_b5
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b7
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    #@b9
    :cond_b9
    :goto_b9
    return-void

    #@ba
    :pswitch_data_ba
    .packed-switch 0x2b
        :pswitch_88
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_6a
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
    .end packed-switch

    #@d4
    :pswitch_data_d4
    .packed-switch 0x43
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
    .end packed-switch
.end method

.method private static setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "type",
            "value"
        }
    .end annotation

    #@0
    const/4 v0, 0x6

    #@1
    if-eq p1, v0, :cond_136

    #@3
    const/4 v0, 0x7

    #@4
    if-eq p1, v0, :cond_131

    #@6
    const/16 v0, 0x8

    #@8
    if-eq p1, v0, :cond_12c

    #@a
    const/16 v0, 0x1b

    #@c
    if-eq p1, v0, :cond_127

    #@e
    const/16 v0, 0x1c

    #@10
    if-eq p1, v0, :cond_122

    #@12
    const/16 v0, 0x29

    #@14
    if-eq p1, v0, :cond_11d

    #@16
    const/16 v0, 0x2a

    #@18
    if-eq p1, v0, :cond_118

    #@1a
    const/16 v0, 0x3d

    #@1c
    if-eq p1, v0, :cond_113

    #@1e
    const/16 v0, 0x3e

    #@20
    if-eq p1, v0, :cond_10e

    #@22
    const/16 v0, 0x48

    #@24
    if-eq p1, v0, :cond_109

    #@26
    const/16 v0, 0x49

    #@28
    if-eq p1, v0, :cond_104

    #@2a
    sparse-switch p1, :sswitch_data_13c

    #@2d
    packed-switch p1, :pswitch_data_18a

    #@30
    packed-switch p1, :pswitch_data_196

    #@33
    packed-switch p1, :pswitch_data_1a6

    #@36
    packed-switch p1, :pswitch_data_1b0

    #@39
    const-string p0, "ConstraintSet"

    #@3b
    const-string p1, "Unknown attribute 0x"

    #@3d
    .line 4808
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto/16 :goto_13a

    #@42
    .line 4794
    :pswitch_42
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@44
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    #@46
    goto/16 :goto_13a

    #@48
    .line 4791
    :pswitch_48
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@4a
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    #@4c
    goto/16 :goto_13a

    #@4e
    .line 4788
    :pswitch_4e
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@50
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    #@52
    goto/16 :goto_13a

    #@54
    .line 4767
    :pswitch_54
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@56
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@58
    goto/16 :goto_13a

    #@5a
    .line 4782
    :pswitch_5a
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@5c
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    #@5e
    goto/16 :goto_13a

    #@60
    .line 4755
    :pswitch_60
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@62
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    #@64
    goto/16 :goto_13a

    #@66
    .line 4758
    :pswitch_66
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@68
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    #@6a
    goto/16 :goto_13a

    #@6c
    .line 4749
    :pswitch_6c
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6e
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    #@70
    goto/16 :goto_13a

    #@72
    .line 4752
    :pswitch_72
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@74
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    #@76
    goto/16 :goto_13a

    #@78
    .line 4746
    :pswitch_78
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@7a
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    #@7c
    goto/16 :goto_13a

    #@7e
    .line 4743
    :pswitch_7e
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@80
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    #@82
    goto/16 :goto_13a

    #@84
    .line 4716
    :pswitch_84
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@86
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    #@88
    goto/16 :goto_13a

    #@8a
    .line 4737
    :pswitch_8a
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@8c
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@8e
    goto/16 :goto_13a

    #@90
    .line 4761
    :pswitch_90
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@92
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@94
    goto/16 :goto_13a

    #@96
    .line 4740
    :pswitch_96
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@98
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@9a
    goto/16 :goto_13a

    #@9c
    .line 4677
    :sswitch_9c
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@9e
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    #@a0
    goto/16 :goto_13a

    #@a2
    .line 4713
    :sswitch_a2
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a4
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    #@a6
    goto/16 :goto_13a

    #@a8
    .line 4734
    :sswitch_a8
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@aa
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    #@ac
    goto/16 :goto_13a

    #@ae
    .line 4764
    :sswitch_ae
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@b0
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@b2
    goto/16 :goto_13a

    #@b4
    .line 4785
    :sswitch_b4
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@b6
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    #@b8
    goto/16 :goto_13a

    #@ba
    .line 4797
    :sswitch_ba
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@bc
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    #@be
    goto/16 :goto_13a

    #@c0
    .line 4779
    :sswitch_c0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@c2
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    #@c4
    goto/16 :goto_13a

    #@c6
    .line 4776
    :sswitch_c6
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@c8
    goto/16 :goto_13a

    #@ca
    .line 4728
    :sswitch_ca
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@cc
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    #@ce
    goto/16 :goto_13a

    #@d0
    .line 4722
    :sswitch_d0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@d2
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    #@d4
    goto/16 :goto_13a

    #@d6
    .line 4683
    :sswitch_d6
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@d8
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    #@da
    goto/16 :goto_13a

    #@dc
    .line 4680
    :sswitch_dc
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@de
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    #@e0
    goto :goto_13a

    #@e1
    .line 4698
    :sswitch_e1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e3
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    #@e5
    goto :goto_13a

    #@e6
    .line 4707
    :sswitch_e6
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e8
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    #@ea
    goto :goto_13a

    #@eb
    .line 4701
    :sswitch_eb
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ed
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    #@ef
    goto :goto_13a

    #@f0
    .line 4695
    :sswitch_f0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f2
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    #@f4
    goto :goto_13a

    #@f5
    .line 4710
    :sswitch_f5
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f7
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    #@f9
    goto :goto_13a

    #@fa
    .line 4704
    :sswitch_fa
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@fc
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    #@fe
    goto :goto_13a

    #@ff
    .line 4731
    :sswitch_ff
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@101
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    #@103
    goto :goto_13a

    #@104
    .line 4803
    :cond_104
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@106
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@108
    goto :goto_13a

    #@109
    .line 4800
    :cond_109
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@10b
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@10d
    goto :goto_13a

    #@10e
    .line 4692
    :cond_10e
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@110
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    #@112
    goto :goto_13a

    #@113
    .line 4689
    :cond_113
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@115
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    #@117
    goto :goto_13a

    #@118
    .line 4770
    :cond_118
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@11a
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    #@11c
    goto :goto_13a

    #@11d
    .line 4773
    :cond_11d
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@11f
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    #@121
    goto :goto_13a

    #@122
    .line 4719
    :cond_122
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@124
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    #@126
    goto :goto_13a

    #@127
    .line 4686
    :cond_127
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@129
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    #@12b
    goto :goto_13a

    #@12c
    .line 4725
    :cond_12c
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@12e
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    #@130
    goto :goto_13a

    #@131
    .line 4674
    :cond_131
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@133
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    #@135
    goto :goto_13a

    #@136
    .line 4671
    :cond_136
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@138
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    #@13a
    :goto_13a
    :pswitch_13a
    return-void

    #@13b
    nop

    #@13c
    :sswitch_data_13c
    .sparse-switch
        0x2 -> :sswitch_ff
        0xb -> :sswitch_fa
        0xc -> :sswitch_f5
        0xd -> :sswitch_f0
        0xe -> :sswitch_eb
        0xf -> :sswitch_e6
        0x10 -> :sswitch_e1
        0x11 -> :sswitch_dc
        0x12 -> :sswitch_d6
        0x1f -> :sswitch_d0
        0x22 -> :sswitch_ca
        0x26 -> :sswitch_c6
        0x40 -> :sswitch_c0
        0x42 -> :sswitch_ba
        0x4c -> :sswitch_b4
        0x4e -> :sswitch_ae
        0x5d -> :sswitch_a8
        0x5e -> :sswitch_a2
        0x61 -> :sswitch_9c
    .end sparse-switch

    #@18a
    :pswitch_data_18a
    .packed-switch 0x15
        :pswitch_96
        :pswitch_90
        :pswitch_8a
        :pswitch_84
    .end packed-switch

    #@196
    :pswitch_data_196
    .packed-switch 0x36
        :pswitch_7e
        :pswitch_78
        :pswitch_72
        :pswitch_6c
        :pswitch_66
        :pswitch_60
    .end packed-switch

    #@1a6
    :pswitch_data_1a6
    .packed-switch 0x52
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
    .end packed-switch

    #@1b0
    :pswitch_data_1b0
    .packed-switch 0x57
        :pswitch_13a
        :pswitch_48
        :pswitch_42
    .end packed-switch
.end method

.method private static setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "type",
            "value"
        }
    .end annotation

    #@0
    const/4 v0, 0x5

    #@1
    if-eq p1, v0, :cond_38

    #@3
    const/16 v0, 0x41

    #@5
    if-eq p1, v0, :cond_33

    #@7
    const/16 v0, 0x4a

    #@9
    if-eq p1, v0, :cond_29

    #@b
    const/16 v0, 0x4d

    #@d
    if-eq p1, v0, :cond_24

    #@f
    const/16 v0, 0x57

    #@11
    if-eq p1, v0, :cond_3c

    #@13
    const/16 v0, 0x5a

    #@15
    if-eq p1, v0, :cond_1f

    #@17
    const-string p0, "ConstraintSet"

    #@19
    const-string p1, "Unknown attribute 0x"

    #@1b
    .line 4835
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    goto :goto_3c

    #@1f
    .line 4822
    :cond_1f
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@21
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@23
    goto :goto_3c

    #@24
    .line 4830
    :cond_24
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@26
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    #@28
    goto :goto_3c

    #@29
    .line 4825
    :cond_29
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2b
    iput-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@2d
    .line 4827
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2f
    const/4 p1, 0x0

    #@30
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@32
    goto :goto_3c

    #@33
    .line 4819
    :cond_33
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@35
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    #@37
    goto :goto_3c

    #@38
    .line 4816
    :cond_38
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3a
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    #@3c
    :cond_3c
    :goto_3c
    return-void
.end method

.method private static setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "type",
            "value"
        }
    .end annotation

    #@0
    const/16 v0, 0x2c

    #@2
    if-eq p1, v0, :cond_2b

    #@4
    const/16 v0, 0x4b

    #@6
    if-eq p1, v0, :cond_26

    #@8
    const/16 v0, 0x57

    #@a
    if-eq p1, v0, :cond_2f

    #@c
    const/16 v0, 0x50

    #@e
    if-eq p1, v0, :cond_21

    #@10
    const/16 v0, 0x51

    #@12
    if-eq p1, v0, :cond_1c

    #@14
    const-string p0, "ConstraintSet"

    #@16
    const-string p1, "Unknown attribute 0x"

    #@18
    .line 4857
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_2f

    #@1c
    .line 4846
    :cond_1c
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1e
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    #@20
    goto :goto_2f

    #@21
    .line 4843
    :cond_21
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@23
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    #@25
    goto :goto_2f

    #@26
    .line 4852
    :cond_26
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@28
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@2a
    goto :goto_2f

    #@2b
    .line 4849
    :cond_2b
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@2d
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@2f
    :cond_2f
    :goto_2f
    return-void
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "side"
        }
    .end annotation

    #@0
    packed-switch p1, :pswitch_data_1c

    #@3
    const-string p1, "undefined"

    #@5
    return-object p1

    #@6
    :pswitch_6
    const-string p1, "end"

    #@8
    return-object p1

    #@9
    :pswitch_9
    const-string p1, "start"

    #@b
    return-object p1

    #@c
    :pswitch_c
    const-string p1, "baseline"

    #@e
    return-object p1

    #@f
    :pswitch_f
    const-string p1, "bottom"

    #@11
    return-object p1

    #@12
    :pswitch_12
    const-string p1, "top"

    #@14
    return-object p1

    #@15
    :pswitch_15
    const-string p1, "right"

    #@17
    return-object p1

    #@18
    :pswitch_18
    const-string p1, "left"

    #@1a
    return-object p1

    #@1b
    nop

    #@1c
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static splitString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    #@0
    .line 4020
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object p0

    #@4
    .line 4021
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    const/4 v1, 0x0

    #@a
    move v2, v1

    #@b
    move v3, v2

    #@c
    .line 4024
    :goto_c
    array-length v4, p0

    #@d
    if-ge v1, v4, :cond_2d

    #@f
    .line 4025
    aget-char v4, p0, v1

    #@11
    const/16 v5, 0x2c

    #@13
    if-ne v4, v5, :cond_24

    #@15
    if-nez v3, :cond_24

    #@17
    .line 4026
    new-instance v4, Ljava/lang/String;

    #@19
    sub-int v5, v1, v2

    #@1b
    invoke-direct {v4, p0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    #@1e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    add-int/lit8 v2, v1, 0x1

    #@23
    goto :goto_2a

    #@24
    :cond_24
    const/16 v5, 0x22

    #@26
    if-ne v4, v5, :cond_2a

    #@28
    xor-int/lit8 v3, v3, 0x1

    #@2a
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_c

    #@2d
    .line 4032
    :cond_2d
    new-instance v1, Ljava/lang/String;

    #@2f
    array-length v3, p0

    #@30
    sub-int/2addr v3, v2

    #@31
    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 4033
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result p0

    #@3b
    new-array p0, p0, [Ljava/lang/String;

    #@3d
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@40
    move-result-object p0

    #@41
    check-cast p0, [Ljava/lang/String;

    #@43
    return-object p0
.end method


# virtual methods
.method public varargs addColorAttributes([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeName"
        }
    .end annotation

    #@0
    .line 4041
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public varargs addFloatAttributes([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeName"
        }
    .end annotation

    #@0
    .line 4045
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public varargs addIntAttributes([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeName"
        }
    .end annotation

    #@0
    .line 4037
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public varargs addStringAttributes([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeName"
        }
    .end annotation

    #@0
    .line 4049
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public addToHorizontalChain(III)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "leftId",
            "rightId"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x2

    #@3
    if-nez p2, :cond_7

    #@5
    move v4, v6

    #@6
    goto :goto_8

    #@7
    :cond_7
    move v4, v7

    #@8
    :goto_8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v3, p2

    #@c
    .line 3705
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@f
    const/4 v2, 0x2

    #@10
    if-nez p3, :cond_14

    #@12
    move v4, v7

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v4, v6

    #@15
    :goto_15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v3, p3

    #@19
    .line 3706
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@1c
    if-eqz p2, :cond_27

    #@1e
    const/4 v2, 0x2

    #@1f
    const/4 v4, 0x1

    #@20
    const/4 v5, 0x0

    #@21
    move-object v0, p0

    #@22
    move v1, p2

    #@23
    move v3, p1

    #@24
    .line 3708
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@27
    :cond_27
    if-eqz p3, :cond_32

    #@29
    const/4 v2, 0x1

    #@2a
    const/4 v4, 0x2

    #@2b
    const/4 v5, 0x0

    #@2c
    move-object v0, p0

    #@2d
    move v1, p3

    #@2e
    move v3, p1

    #@2f
    .line 3711
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@32
    :cond_32
    return-void
.end method

.method public addToHorizontalChainRTL(III)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "leftId",
            "rightId"
        }
    .end annotation

    #@0
    const/4 v2, 0x6

    #@1
    const/4 v6, 0x6

    #@2
    const/4 v7, 0x7

    #@3
    if-nez p2, :cond_7

    #@5
    move v4, v6

    #@6
    goto :goto_8

    #@7
    :cond_7
    move v4, v7

    #@8
    :goto_8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v3, p2

    #@c
    .line 3723
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@f
    const/4 v2, 0x7

    #@10
    if-nez p3, :cond_14

    #@12
    move v4, v7

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v4, v6

    #@15
    :goto_15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v3, p3

    #@19
    .line 3724
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@1c
    if-eqz p2, :cond_27

    #@1e
    const/4 v2, 0x7

    #@1f
    const/4 v4, 0x6

    #@20
    const/4 v5, 0x0

    #@21
    move-object v0, p0

    #@22
    move v1, p2

    #@23
    move v3, p1

    #@24
    .line 3726
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@27
    :cond_27
    if-eqz p3, :cond_32

    #@29
    const/4 v2, 0x6

    #@2a
    const/4 v4, 0x7

    #@2b
    const/4 v5, 0x0

    #@2c
    move-object v0, p0

    #@2d
    move v1, p3

    #@2e
    move v3, p1

    #@2f
    .line 3729
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@32
    :cond_32
    return-void
.end method

.method public addToVerticalChain(III)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "topId",
            "bottomId"
        }
    .end annotation

    #@0
    const/4 v2, 0x3

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v7, 0x4

    #@3
    if-nez p2, :cond_7

    #@5
    move v4, v6

    #@6
    goto :goto_8

    #@7
    :cond_7
    move v4, v7

    #@8
    :goto_8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v3, p2

    #@c
    .line 3741
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@f
    const/4 v2, 0x4

    #@10
    if-nez p3, :cond_14

    #@12
    move v4, v7

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v4, v6

    #@15
    :goto_15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v3, p3

    #@19
    .line 3742
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@1c
    if-eqz p2, :cond_27

    #@1e
    const/4 v2, 0x4

    #@1f
    const/4 v4, 0x3

    #@20
    const/4 v5, 0x0

    #@21
    move-object v0, p0

    #@22
    move v1, p2

    #@23
    move v3, p1

    #@24
    .line 3744
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@27
    :cond_27
    if-eqz p3, :cond_32

    #@29
    const/4 v2, 0x3

    #@2a
    const/4 v4, 0x4

    #@2b
    const/4 v5, 0x0

    #@2c
    move-object v0, p0

    #@2d
    move v1, p3

    #@2e
    move v3, p1

    #@2f
    .line 3747
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@32
    :cond_32
    return-void
.end method

.method public applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintLayout"
        }
    .end annotation

    #@0
    .line 2307
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_67

    #@7
    .line 2309
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 2310
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@e
    move-result v3

    #@f
    .line 2311
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_34

    #@1b
    .line 2312
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    const-string v4, "id unknown "

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    const-string v3, "ConstraintSet"

    #@30
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    goto :goto_64

    #@34
    .line 2315
    :cond_34
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@36
    if-eqz v4, :cond_44

    #@38
    const/4 v4, -0x1

    #@39
    if-eq v3, v4, :cond_3c

    #@3b
    goto :goto_44

    #@3c
    .line 2316
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    #@3e
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    #@40
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw p1

    #@44
    .line 2319
    :cond_44
    :goto_44
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_64

    #@50
    .line 2320
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@5c
    if-nez v3, :cond_5f

    #@5e
    goto :goto_64

    #@5f
    .line 2324
    :cond_5f
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@61
    invoke-static {v2, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    #@64
    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_5

    #@67
    :cond_67
    return-void
.end method

.method public applyDeltaFrom(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cs"
        }
    .end annotation

    #@0
    .line 680
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object p1

    #@6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object p1

    #@a
    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_6d

    #@10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@16
    .line 681
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@18
    if-eqz v1, :cond_a

    #@1a
    .line 682
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_61

    #@1e
    .line 684
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@20
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_a

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Ljava/lang/Integer;

    #@34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v2

    #@38
    .line 685
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3b
    move-result-object v2

    #@3c
    .line 686
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3e
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    #@40
    if-eqz v3, :cond_28

    #@42
    .line 687
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    #@44
    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@46
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_28

    #@4e
    .line 688
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@50
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    #@53
    .line 689
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@55
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@57
    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@5a
    move-result-object v3

    #@5b
    check-cast v3, Ljava/util/HashMap;

    #@5d
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@60
    goto :goto_28

    #@61
    .line 694
    :cond_61
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@63
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@66
    move-result-object v1

    #@67
    .line 695
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    #@69
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    #@6c
    goto :goto_a

    #@6d
    :cond_6d
    return-void
.end method

.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintLayout"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 2285
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    #@4
    const/4 v0, 0x0

    #@5
    .line 2286
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@8
    .line 2287
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    #@b
    return-void
.end method

.method public applyToHelper(Landroidx/constraintlayout/widget/ConstraintHelper;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "helper",
            "child",
            "layoutParams",
            "mapIdToWidget"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 2338
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->getId()I

    #@3
    move-result v0

    #@4
    .line 2339
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_27

    #@10
    .line 2340
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1c
    if-eqz v0, :cond_27

    #@1e
    .line 2341
    instance-of v1, p2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@20
    if-eqz v1, :cond_27

    #@22
    .line 2342
    check-cast p2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@24
    .line 2343
    invoke-virtual {p1, v0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    #@27
    :cond_27
    return-void
.end method

.method applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "constraintLayout",
            "applyPostLayout"
        }
    .end annotation

    #@0
    .line 2367
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 2368
    new-instance v1, Ljava/util/HashSet;

    #@6
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@f
    const/4 v2, 0x0

    #@10
    move v3, v2

    #@11
    :goto_11
    const/4 v4, 0x1

    #@12
    if-ge v3, v0, :cond_1c2

    #@14
    .line 2370
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v5

    #@18
    .line 2371
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    #@1b
    move-result v6

    #@1c
    .line 2372
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@25
    move-result v7

    #@26
    const-string v8, "ConstraintSet"

    #@28
    if-nez v7, :cond_42

    #@2a
    .line 2373
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    const-string v6, "id unknown "

    #@2e
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@31
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto/16 :goto_1be

    #@42
    .line 2377
    :cond_42
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@44
    const/4 v9, -0x1

    #@45
    if-eqz v7, :cond_52

    #@47
    if-eq v6, v9, :cond_4a

    #@49
    goto :goto_52

    #@4a
    .line 2378
    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    #@4c
    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    #@4e
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51
    throw p1

    #@52
    :cond_52
    :goto_52
    if-ne v6, v9, :cond_56

    #@54
    goto/16 :goto_1be

    #@56
    .line 2384
    :cond_56
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v10

    #@5c
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5f
    move-result v7

    #@60
    if-eqz v7, :cond_1ac

    #@62
    .line 2385
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@69
    .line 2386
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@6b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v7

    #@73
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@75
    if-nez v7, :cond_79

    #@77
    goto/16 :goto_1be

    #@79
    .line 2390
    :cond_79
    instance-of v8, v5, Landroidx/constraintlayout/widget/Barrier;

    #@7b
    if-eqz v8, :cond_c3

    #@7d
    .line 2391
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@7f
    iput v4, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    #@81
    .line 2392
    move-object v4, v5

    #@82
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    #@84
    .line 2393
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    #@87
    .line 2394
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@89
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@8b
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    #@8e
    .line 2395
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@90
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@92
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    #@95
    .line 2397
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@97
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@99
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    #@9c
    .line 2398
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@9e
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@a0
    if-eqz v6, :cond_aa

    #@a2
    .line 2399
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a4
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@a6
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    #@a9
    goto :goto_c3

    #@aa
    .line 2400
    :cond_aa
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ac
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@ae
    if-eqz v6, :cond_c3

    #@b0
    .line 2401
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b2
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b4
    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@b6
    invoke-direct {p0, v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    #@b9
    move-result-object v8

    #@ba
    iput-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@bc
    .line 2403
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@be
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@c0
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    #@c3
    .line 2407
    :cond_c3
    :goto_c3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c6
    move-result-object v4

    #@c7
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@c9
    .line 2408
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    #@cc
    .line 2409
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    #@cf
    if-eqz p2, :cond_d6

    #@d1
    .line 2412
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@d3
    invoke-static {v5, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    #@d6
    .line 2414
    :cond_d6
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@d9
    .line 2415
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@db
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@dd
    if-nez v4, :cond_e6

    #@df
    .line 2416
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@e1
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@e3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    #@e6
    .line 2419
    :cond_e6
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@e8
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@ea
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    #@ed
    .line 2420
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@ef
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@f1
    invoke-virtual {v5, v4}, Landroid/view/View;->setRotation(F)V

    #@f4
    .line 2421
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@f6
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@f8
    invoke-virtual {v5, v4}, Landroid/view/View;->setRotationX(F)V

    #@fb
    .line 2422
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@fd
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@ff
    invoke-virtual {v5, v4}, Landroid/view/View;->setRotationY(F)V

    #@102
    .line 2423
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@104
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@106
    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleX(F)V

    #@109
    .line 2424
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@10b
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@10d
    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleY(F)V

    #@110
    .line 2425
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@112
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@114
    if-eq v4, v9, :cond_167

    #@116
    .line 2426
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@119
    move-result-object v4

    #@11a
    check-cast v4, Landroid/view/View;

    #@11c
    .line 2427
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@11e
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@120
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@123
    move-result-object v4

    #@124
    if-eqz v4, :cond_189

    #@126
    .line 2429
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@129
    move-result v6

    #@12a
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@12d
    move-result v8

    #@12e
    add-int/2addr v6, v8

    #@12f
    int-to-float v6, v6

    #@130
    const/high16 v8, 0x40000000    # 2.0f

    #@132
    div-float/2addr v6, v8

    #@133
    .line 2430
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@136
    move-result v9

    #@137
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@13a
    move-result v4

    #@13b
    add-int/2addr v9, v4

    #@13c
    int-to-float v4, v9

    #@13d
    div-float/2addr v4, v8

    #@13e
    .line 2431
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@141
    move-result v8

    #@142
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    #@145
    move-result v9

    #@146
    sub-int/2addr v8, v9

    #@147
    if-lez v8, :cond_189

    #@149
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@14c
    move-result v8

    #@14d
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@150
    move-result v9

    #@151
    sub-int/2addr v8, v9

    #@152
    if-lez v8, :cond_189

    #@154
    .line 2432
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    #@157
    move-result v8

    #@158
    int-to-float v8, v8

    #@159
    sub-float/2addr v4, v8

    #@15a
    .line 2433
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@15d
    move-result v8

    #@15e
    int-to-float v8, v8

    #@15f
    sub-float/2addr v6, v8

    #@160
    .line 2434
    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotX(F)V

    #@163
    .line 2435
    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    #@166
    goto :goto_189

    #@167
    .line 2439
    :cond_167
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@169
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@16b
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@16e
    move-result v4

    #@16f
    if-nez v4, :cond_178

    #@171
    .line 2440
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@173
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@175
    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotX(F)V

    #@178
    .line 2442
    :cond_178
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@17a
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@17c
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@17f
    move-result v4

    #@180
    if-nez v4, :cond_189

    #@182
    .line 2443
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@184
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@186
    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotY(F)V

    #@189
    .line 2446
    :cond_189
    :goto_189
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@18b
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@18d
    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    #@190
    .line 2447
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@192
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@194
    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    #@197
    .line 2449
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@199
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@19b
    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationZ(F)V

    #@19e
    .line 2450
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@1a0
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@1a2
    if-eqz v4, :cond_1be

    #@1a4
    .line 2451
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@1a6
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@1a8
    invoke-virtual {v5, v4}, Landroid/view/View;->setElevation(F)V

    #@1ab
    goto :goto_1be

    #@1ac
    .line 2456
    :cond_1ac
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ae
    const-string v5, "WARNING NO CONSTRAINTS for view "

    #@1b0
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v4

    #@1b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v4

    #@1bb
    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1be
    :cond_1be
    :goto_1be
    add-int/lit8 v3, v3, 0x1

    #@1c0
    goto/16 :goto_11

    #@1c2
    .line 2459
    :cond_1c2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@1c5
    move-result-object p2

    #@1c6
    :cond_1c6
    :goto_1c6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@1c9
    move-result v1

    #@1ca
    if-eqz v1, :cond_257

    #@1cc
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cf
    move-result-object v1

    #@1d0
    check-cast v1, Ljava/lang/Integer;

    #@1d2
    .line 2460
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1d4
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d7
    move-result-object v3

    #@1d8
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1da
    if-nez v3, :cond_1dd

    #@1dc
    goto :goto_1c6

    #@1dd
    .line 2464
    :cond_1dd
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1df
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    #@1e1
    if-ne v5, v4, :cond_235

    #@1e3
    .line 2465
    new-instance v5, Landroidx/constraintlayout/widget/Barrier;

    #@1e5
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@1e8
    move-result-object v6

    #@1e9
    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    #@1ec
    .line 2466
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1ef
    move-result v6

    #@1f0
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    #@1f3
    .line 2467
    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1f5
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@1f7
    if-eqz v6, :cond_201

    #@1f9
    .line 2468
    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1fb
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@1fd
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    #@200
    goto :goto_21a

    #@201
    .line 2469
    :cond_201
    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@203
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@205
    if-eqz v6, :cond_21a

    #@207
    .line 2470
    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@209
    iget-object v7, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@20b
    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@20d
    invoke-direct {p0, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    #@210
    move-result-object v7

    #@211
    iput-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@213
    .line 2472
    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@215
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@217
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    #@21a
    .line 2474
    :cond_21a
    :goto_21a
    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@21c
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@21e
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    #@221
    .line 2475
    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@223
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@225
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    #@228
    .line 2477
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@22b
    move-result-object v6

    #@22c
    .line 2478
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    #@22f
    .line 2479
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    #@232
    .line 2480
    invoke-virtual {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@235
    .line 2482
    :cond_235
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@237
    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    #@239
    if-eqz v5, :cond_1c6

    #@23b
    .line 2483
    new-instance v5, Landroidx/constraintlayout/widget/Guideline;

    #@23d
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@240
    move-result-object v6

    #@241
    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    #@244
    .line 2484
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@247
    move-result v1

    #@248
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/widget/Guideline;->setId(I)V

    #@24b
    .line 2485
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@24e
    move-result-object v1

    #@24f
    .line 2486
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    #@252
    .line 2487
    invoke-virtual {p1, v5, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@255
    goto/16 :goto_1c6

    #@257
    :cond_257
    :goto_257
    if-ge v2, v0, :cond_269

    #@259
    .line 2491
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@25c
    move-result-object p2

    #@25d
    .line 2492
    instance-of v1, p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@25f
    if-eqz v1, :cond_266

    #@261
    .line 2493
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@263
    .line 2494
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@266
    :cond_266
    add-int/lit8 v2, v2, 0x1

    #@268
    goto :goto_257

    #@269
    :cond_269
    return-void
.end method

.method public applyToLayoutParams(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "layoutParams"
        }
    .end annotation

    #@0
    .line 2355
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1d

    #@c
    .line 2356
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@18
    if-eqz p1, :cond_1d

    #@1a
    .line 2358
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    #@1d
    :cond_1d
    return-void
.end method

.method public applyToWithoutCustom(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintLayout"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 2297
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    #@4
    const/4 v0, 0x0

    #@5
    .line 2298
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@8
    return-void
.end method

.method public center(IIIIIIIF)V
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "centerID",
            "firstID",
            "firstSide",
            "firstMargin",
            "secondId",
            "secondSide",
            "secondMargin",
            "bias"
        }
    .end annotation

    #@0
    move-object v6, p0

    #@1
    move v4, p3

    #@2
    move/from16 v7, p8

    #@4
    const-string v0, "margin must be > 0"

    #@6
    if-ltz p4, :cond_9a

    #@8
    if-ltz p7, :cond_94

    #@a
    const/4 v0, 0x0

    #@b
    cmpg-float v0, v7, v0

    #@d
    if-lez v0, :cond_8c

    #@f
    const/high16 v0, 0x3f800000    # 1.0f

    #@11
    cmpl-float v0, v7, v0

    #@13
    if-gtz v0, :cond_8c

    #@15
    const/4 v0, 0x1

    #@16
    if-eq v4, v0, :cond_69

    #@18
    const/4 v0, 0x2

    #@19
    if-ne v4, v0, :cond_1c

    #@1b
    goto :goto_69

    #@1c
    :cond_1c
    const/4 v0, 0x6

    #@1d
    if-eq v4, v0, :cond_46

    #@1f
    const/4 v0, 0x7

    #@20
    if-ne v4, v0, :cond_23

    #@22
    goto :goto_46

    #@23
    :cond_23
    const/4 v2, 0x3

    #@24
    move-object v0, p0

    #@25
    move v1, p1

    #@26
    move v3, p2

    #@27
    move v4, p3

    #@28
    move v5, p4

    #@29
    .line 2544
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@2c
    const/4 v2, 0x4

    #@2d
    move v3, p5

    #@2e
    move v4, p6

    #@2f
    move v5, p7

    #@30
    .line 2545
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@33
    .line 2546
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3f
    if-eqz v0, :cond_8b

    #@41
    .line 2548
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@43
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    #@45
    goto :goto_8b

    #@46
    :cond_46
    :goto_46
    const/4 v2, 0x6

    #@47
    move-object v0, p0

    #@48
    move v1, p1

    #@49
    move v3, p2

    #@4a
    move v4, p3

    #@4b
    move v5, p4

    #@4c
    .line 2537
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@4f
    const/4 v2, 0x7

    #@50
    move v3, p5

    #@51
    move v4, p6

    #@52
    move v5, p7

    #@53
    .line 2538
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@56
    .line 2539
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@62
    if-eqz v0, :cond_8b

    #@64
    .line 2541
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@66
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@68
    goto :goto_8b

    #@69
    :cond_69
    :goto_69
    const/4 v2, 0x1

    #@6a
    move-object v0, p0

    #@6b
    move v1, p1

    #@6c
    move v3, p2

    #@6d
    move v4, p3

    #@6e
    move v5, p4

    #@6f
    .line 2530
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@72
    const/4 v2, 0x2

    #@73
    move v3, p5

    #@74
    move v4, p6

    #@75
    move v5, p7

    #@76
    .line 2531
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@79
    .line 2532
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@7b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v0

    #@83
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@85
    if-eqz v0, :cond_8b

    #@87
    .line 2534
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@89
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@8b
    :cond_8b
    :goto_8b
    return-void

    #@8c
    .line 2526
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8e
    const-string v1, "bias must be between 0 and 1 inclusive"

    #@90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@93
    throw v0

    #@94
    .line 2523
    :cond_94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@96
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@99
    throw v1

    #@9a
    .line 2520
    :cond_9a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9c
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v1
.end method

.method public centerHorizontally(II)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "toView"
        }
    .end annotation

    #@0
    if-nez p2, :cond_10

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x2

    #@7
    const/4 v7, 0x0

    #@8
    const/high16 v8, 0x3f000000    # 0.5f

    #@a
    move-object v0, p0

    #@b
    move v1, p1

    #@c
    .line 3001
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    #@f
    goto :goto_1d

    #@10
    :cond_10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    const/4 v6, 0x1

    #@13
    const/4 v7, 0x0

    #@14
    const/high16 v8, 0x3f000000    # 0.5f

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v2, p2

    #@19
    move v5, p2

    #@1a
    .line 3003
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    #@1d
    :goto_1d
    return-void
.end method

.method public centerHorizontally(IIIIIIIF)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "centerID",
            "leftId",
            "leftSide",
            "leftMargin",
            "rightId",
            "rightSide",
            "rightMargin",
            "bias"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    .line 2568
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@9
    const/4 v5, 0x2

    #@a
    move-object v3, p0

    #@b
    move v4, p1

    #@c
    move v6, p5

    #@d
    move v7, p6

    #@e
    move/from16 v8, p7

    #@10
    .line 2569
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@13
    .line 2570
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1f
    if-eqz v1, :cond_27

    #@21
    .line 2572
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@23
    move/from16 v2, p8

    #@25
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@27
    :cond_27
    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "toView"
        }
    .end annotation

    #@0
    if-nez p2, :cond_10

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x6

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x7

    #@7
    const/4 v7, 0x0

    #@8
    const/high16 v8, 0x3f000000    # 0.5f

    #@a
    move-object v0, p0

    #@b
    move v1, p1

    #@c
    .line 3015
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    #@f
    goto :goto_1d

    #@10
    :cond_10
    const/4 v3, 0x7

    #@11
    const/4 v4, 0x0

    #@12
    const/4 v6, 0x6

    #@13
    const/4 v7, 0x0

    #@14
    const/high16 v8, 0x3f000000    # 0.5f

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v2, p2

    #@19
    move v5, p2

    #@1a
    .line 3017
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    #@1d
    :goto_1d
    return-void
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "centerID",
            "startId",
            "startSide",
            "startMargin",
            "endId",
            "endSide",
            "endMargin",
            "bias"
        }
    .end annotation

    #@0
    const/4 v2, 0x6

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    .line 2592
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@9
    const/4 v5, 0x7

    #@a
    move-object v3, p0

    #@b
    move v4, p1

    #@c
    move v6, p5

    #@d
    move v7, p6

    #@e
    move/from16 v8, p7

    #@10
    .line 2593
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@13
    .line 2594
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1f
    if-eqz v1, :cond_27

    #@21
    .line 2596
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@23
    move/from16 v2, p8

    #@25
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@27
    :cond_27
    return-void
.end method

.method public centerVertically(II)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "toView"
        }
    .end annotation

    #@0
    if-nez p2, :cond_10

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x3

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x4

    #@7
    const/4 v7, 0x0

    #@8
    const/high16 v8, 0x3f000000    # 0.5f

    #@a
    move-object v0, p0

    #@b
    move v1, p1

    #@c
    .line 3029
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    #@f
    goto :goto_1d

    #@10
    :cond_10
    const/4 v3, 0x4

    #@11
    const/4 v4, 0x0

    #@12
    const/4 v6, 0x3

    #@13
    const/4 v7, 0x0

    #@14
    const/high16 v8, 0x3f000000    # 0.5f

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v2, p2

    #@19
    move v5, p2

    #@1a
    .line 3031
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    #@1d
    :goto_1d
    return-void
.end method

.method public centerVertically(IIIIIIIF)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "centerID",
            "topId",
            "topSide",
            "topMargin",
            "bottomId",
            "bottomSide",
            "bottomMargin",
            "bias"
        }
    .end annotation

    #@0
    const/4 v2, 0x3

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    .line 2615
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@9
    const/4 v5, 0x4

    #@a
    move-object v3, p0

    #@b
    move v4, p1

    #@c
    move v6, p5

    #@d
    move v7, p6

    #@e
    move/from16 v8, p7

    #@10
    .line 2616
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@13
    .line 2617
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1f
    if-eqz v1, :cond_27

    #@21
    .line 2619
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@23
    move/from16 v2, p8

    #@25
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    #@27
    :cond_27
    return-void
.end method

.method public clear(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3041
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public clear(II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "anchor"
        }
    .end annotation

    #@0
    .line 3051
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_b4

    #@c
    .line 3052
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@18
    if-nez p1, :cond_1b

    #@1a
    return-void

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    const/high16 v1, -0x80000000

    #@1e
    const/4 v2, -0x1

    #@1f
    packed-switch p2, :pswitch_data_b6

    #@22
    .line 3106
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@24
    const-string p2, "unknown constraint"

    #@26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1

    #@2a
    .line 3101
    :pswitch_2a
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2c
    const/high16 v0, -0x40800000    # -1.0f

    #@2e
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    #@30
    .line 3102
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@32
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    #@34
    .line 3103
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@36
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    #@38
    goto/16 :goto_b4

    #@3a
    .line 3095
    :pswitch_3a
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3c
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@3e
    .line 3096
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@40
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    #@42
    .line 3097
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@44
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    #@46
    .line 3098
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@48
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    #@4a
    goto :goto_b4

    #@4b
    .line 3089
    :pswitch_4b
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4d
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@4f
    .line 3090
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@51
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    #@53
    .line 3091
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@55
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    #@57
    .line 3092
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@59
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    #@5b
    goto :goto_b4

    #@5c
    .line 3082
    :pswitch_5c
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5e
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@60
    .line 3083
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@62
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@64
    .line 3084
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@66
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@68
    .line 3085
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6a
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    #@6c
    .line 3086
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6e
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    #@70
    goto :goto_b4

    #@71
    .line 3076
    :pswitch_71
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@73
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@75
    .line 3077
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@77
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@79
    .line 3078
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@7b
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    #@7d
    .line 3079
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@7f
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    #@81
    goto :goto_b4

    #@82
    .line 3070
    :pswitch_82
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@84
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@86
    .line 3071
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@88
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@8a
    .line 3072
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@8c
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    #@8e
    .line 3073
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@90
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    #@92
    goto :goto_b4

    #@93
    .line 3064
    :pswitch_93
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@95
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@97
    .line 3065
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@99
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@9b
    .line 3066
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@9d
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    #@9f
    .line 3067
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a1
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    #@a3
    goto :goto_b4

    #@a4
    .line 3058
    :pswitch_a4
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a6
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@a8
    .line 3059
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@aa
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@ac
    .line 3060
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ae
    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    #@b0
    .line 3061
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b2
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    #@b4
    :cond_b4
    :goto_b4
    return-void

    #@b5
    nop

    #@b6
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_93
        :pswitch_82
        :pswitch_71
        :pswitch_5c
        :pswitch_4b
        :pswitch_3a
        :pswitch_2a
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "constraintLayoutId"
        }
    .end annotation

    #@0
    .line 2168
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@e
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintLayout"
        }
    .end annotation

    #@0
    .line 2193
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 2194
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_103

    #@c
    .line 2196
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    .line 2197
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@16
    .line 2199
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@19
    move-result v4

    #@1a
    .line 2200
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@1c
    if-eqz v5, :cond_2a

    #@1e
    const/4 v5, -0x1

    #@1f
    if-eq v4, v5, :cond_22

    #@21
    goto :goto_2a

    #@22
    .line 2201
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    #@24
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    #@26
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1

    #@2a
    .line 2203
    :cond_2a
    :goto_2a
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_44

    #@36
    .line 2204
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v6

    #@3c
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3e
    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@41
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 2206
    :cond_44
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@50
    if-nez v5, :cond_54

    #@52
    goto/16 :goto_ff

    #@54
    .line 2210
    :cond_54
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    #@56
    invoke-static {v6, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->extractAttributes(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;

    #@59
    move-result-object v6

    #@5a
    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@5c
    .line 2211
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$000(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    #@5f
    .line 2212
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@61
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@64
    move-result v4

    #@65
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@67
    .line 2214
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@69
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    #@6c
    move-result v4

    #@6d
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@6f
    .line 2215
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@71
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    #@74
    move-result v4

    #@75
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@77
    .line 2216
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@79
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    #@7c
    move-result v4

    #@7d
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@7f
    .line 2217
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@81
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    #@84
    move-result v4

    #@85
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@87
    .line 2218
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@89
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    #@8c
    move-result v4

    #@8d
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@8f
    .line 2219
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@91
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    #@94
    move-result v4

    #@95
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@97
    .line 2221
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    #@9a
    move-result v3

    #@9b
    .line 2222
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    #@9e
    move-result v4

    #@9f
    float-to-double v6, v3

    #@a0
    const-wide/16 v8, 0x0

    #@a2
    cmpl-double v6, v6, v8

    #@a4
    if-nez v6, :cond_ab

    #@a6
    float-to-double v6, v4

    #@a7
    cmpl-double v6, v6, v8

    #@a9
    if-eqz v6, :cond_b3

    #@ab
    .line 2225
    :cond_ab
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@ad
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@af
    .line 2226
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@b1
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@b3
    .line 2229
    :cond_b3
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@b5
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    #@b8
    move-result v4

    #@b9
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@bb
    .line 2230
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@bd
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    #@c0
    move-result v4

    #@c1
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@c3
    .line 2232
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@c5
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    #@c8
    move-result v4

    #@c9
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@cb
    .line 2233
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@cd
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@cf
    if-eqz v3, :cond_d9

    #@d1
    .line 2234
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@d3
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    #@d6
    move-result v4

    #@d7
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@d9
    .line 2238
    :cond_d9
    instance-of v3, v2, Landroidx/constraintlayout/widget/Barrier;

    #@db
    if-eqz v3, :cond_ff

    #@dd
    .line 2239
    check-cast v2, Landroidx/constraintlayout/widget/Barrier;

    #@df
    .line 2240
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e1
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    #@e4
    move-result v4

    #@e5
    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@e7
    .line 2241
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e9
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    #@ec
    move-result-object v4

    #@ed
    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@ef
    .line 2242
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f1
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    #@f4
    move-result v4

    #@f5
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@f7
    .line 2243
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f9
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    #@fc
    move-result v2

    #@fd
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@ff
    :cond_ff
    :goto_ff
    add-int/lit8 v1, v1, 0x1

    #@101
    goto/16 :goto_a

    #@103
    :cond_103
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    #@0
    .line 2177
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 2178
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_30

    #@15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/Integer;

    #@1b
    .line 2179
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@23
    if-nez v2, :cond_26

    #@25
    goto :goto_f

    #@26
    .line 2183
    :cond_26
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@28
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    goto :goto_f

    #@30
    :cond_30
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/Constraints;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraints"
        }
    .end annotation

    #@0
    .line 2254
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Constraints;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 2255
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_62

    #@c
    .line 2257
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Constraints;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    .line 2258
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    #@16
    .line 2260
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@19
    move-result v4

    #@1a
    .line 2261
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@1c
    if-eqz v5, :cond_2a

    #@1e
    const/4 v5, -0x1

    #@1f
    if-eq v4, v5, :cond_22

    #@21
    goto :goto_2a

    #@22
    .line 2262
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    #@24
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    #@26
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1

    #@2a
    .line 2264
    :cond_2a
    :goto_2a
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_44

    #@36
    .line 2265
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v6

    #@3c
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3e
    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@41
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 2267
    :cond_44
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@50
    if-nez v5, :cond_53

    #@52
    goto :goto_5f

    #@53
    .line 2271
    :cond_53
    instance-of v6, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@55
    if-eqz v6, :cond_5c

    #@57
    .line 2272
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@59
    .line 2273
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    invoke-static {v5, v2, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$700(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    #@5c
    .line 2275
    :cond_5c
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$800(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    #@5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_a

    #@62
    :cond_62
    return-void
.end method

.method public connect(IIII)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startID",
            "startSide",
            "endID",
            "endSide"
        }
    .end annotation

    #@0
    .line 2877
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1a

    #@c
    .line 2878
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@14
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 2880
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object p1

    #@24
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@26
    if-nez p1, :cond_29

    #@28
    return-void

    #@29
    :cond_29
    const/4 v0, 0x2

    #@2a
    const/4 v1, 0x7

    #@2b
    const/4 v2, 0x6

    #@2c
    const/4 v3, 0x1

    #@2d
    const/4 v4, 0x4

    #@2e
    const/4 v5, 0x3

    #@2f
    const-string v6, "right to "

    #@31
    const-string v7, " undefined"

    #@33
    const/4 v8, -0x1

    #@34
    packed-switch p2, :pswitch_data_226

    #@37
    .line 2988
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance p3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    .line 2989
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@41
    move-result-object p2

    #@42
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object p2

    #@46
    const-string p3, " to "

    #@48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object p2

    #@4c
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@4f
    move-result-object p3

    #@50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object p2

    #@54
    const-string p3, " unknown"

    #@56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object p2

    #@5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object p2

    #@5e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw p1

    #@62
    :pswitch_62
    if-ne p4, v1, :cond_6e

    #@64
    .line 2978
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@66
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    #@68
    .line 2979
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6a
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@6c
    goto/16 :goto_207

    #@6e
    :cond_6e
    if-ne p4, v2, :cond_7a

    #@70
    .line 2981
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@72
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@74
    .line 2982
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@76
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    #@78
    goto/16 :goto_207

    #@7a
    .line 2984
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@7c
    new-instance p2, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@81
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@84
    move-result-object p3

    #@85
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object p2

    #@89
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object p2

    #@8d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object p2

    #@91
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw p1

    #@95
    :pswitch_95
    if-ne p4, v2, :cond_a1

    #@97
    .line 2967
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@99
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    #@9b
    .line 2968
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@9d
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@9f
    goto/16 :goto_207

    #@a1
    :cond_a1
    if-ne p4, v1, :cond_ad

    #@a3
    .line 2970
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a5
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@a7
    .line 2971
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a9
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    #@ab
    goto/16 :goto_207

    #@ad
    .line 2973
    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@af
    new-instance p2, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b4
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@b7
    move-result-object p3

    #@b8
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object p2

    #@bc
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object p2

    #@c0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object p2

    #@c4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c7
    throw p1

    #@c8
    :pswitch_c8
    const/4 p2, 0x5

    #@c9
    if-ne p4, p2, :cond_e1

    #@cb
    .line 2944
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@cd
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@cf
    .line 2945
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@d1
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@d3
    .line 2946
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@d5
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@d7
    .line 2947
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@d9
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@db
    .line 2948
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@dd
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@df
    goto/16 :goto_207

    #@e1
    :cond_e1
    if-ne p4, v5, :cond_f9

    #@e3
    .line 2950
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e5
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@e7
    .line 2951
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e9
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@eb
    .line 2952
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ed
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@ef
    .line 2953
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f1
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@f3
    .line 2954
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f5
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@f7
    goto/16 :goto_207

    #@f9
    :cond_f9
    if-ne p4, v4, :cond_111

    #@fb
    .line 2956
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@fd
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@ff
    .line 2957
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@101
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@103
    .line 2958
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@105
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@107
    .line 2959
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@109
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@10b
    .line 2960
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@10d
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@10f
    goto/16 :goto_207

    #@111
    .line 2962
    :cond_111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@113
    new-instance p2, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@118
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@11b
    move-result-object p3

    #@11c
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object p2

    #@120
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object p2

    #@124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object p2

    #@128
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12b
    throw p1

    #@12c
    :pswitch_12c
    if-ne p4, v4, :cond_144

    #@12e
    .line 2927
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@130
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@132
    .line 2928
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@134
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@136
    .line 2929
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@138
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@13a
    .line 2930
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@13c
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@13e
    .line 2931
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@140
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@142
    goto/16 :goto_207

    #@144
    :cond_144
    if-ne p4, v5, :cond_15c

    #@146
    .line 2933
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@148
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@14a
    .line 2934
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@14c
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@14e
    .line 2935
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@150
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@152
    .line 2936
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@154
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@156
    .line 2937
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@158
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@15a
    goto/16 :goto_207

    #@15c
    .line 2939
    :cond_15c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@15e
    new-instance p2, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@163
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@166
    move-result-object p3

    #@167
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object p2

    #@16b
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object p2

    #@16f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object p2

    #@173
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@176
    throw p1

    #@177
    :pswitch_177
    if-ne p4, v5, :cond_18f

    #@179
    .line 2910
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@17b
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@17d
    .line 2911
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@17f
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@181
    .line 2912
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@183
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@185
    .line 2913
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@187
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@189
    .line 2914
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@18b
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@18d
    goto/16 :goto_207

    #@18f
    :cond_18f
    if-ne p4, v4, :cond_1a6

    #@191
    .line 2916
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@193
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@195
    .line 2917
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@197
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@199
    .line 2918
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@19b
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@19d
    .line 2919
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@19f
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@1a1
    .line 2920
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1a3
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@1a5
    goto :goto_207

    #@1a6
    .line 2922
    :cond_1a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1a8
    new-instance p2, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1ad
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@1b0
    move-result-object p3

    #@1b1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object p2

    #@1b5
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object p2

    #@1b9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object p2

    #@1bd
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c0
    throw p1

    #@1c1
    :pswitch_1c1
    if-ne p4, v3, :cond_1cc

    #@1c3
    .line 2898
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1c5
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@1c7
    .line 2899
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1c9
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@1cb
    goto :goto_207

    #@1cc
    :cond_1cc
    if-ne p4, v0, :cond_1d7

    #@1ce
    .line 2902
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d0
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@1d2
    .line 2903
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d4
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@1d6
    goto :goto_207

    #@1d7
    .line 2905
    :cond_1d7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1d9
    new-instance p2, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1de
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@1e1
    move-result-object p3

    #@1e2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object p2

    #@1e6
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object p2

    #@1ea
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object p2

    #@1ee
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f1
    throw p1

    #@1f2
    :pswitch_1f2
    if-ne p4, v3, :cond_1fd

    #@1f4
    .line 2887
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1f6
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@1f8
    .line 2888
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1fa
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@1fc
    goto :goto_207

    #@1fd
    :cond_1fd
    if-ne p4, v0, :cond_208

    #@1ff
    .line 2890
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@201
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@203
    .line 2891
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@205
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@207
    :goto_207
    return-void

    #@208
    .line 2893
    :cond_208
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@20a
    new-instance p2, Ljava/lang/StringBuilder;

    #@20c
    const-string p3, "left to "

    #@20e
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@211
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@214
    move-result-object p3

    #@215
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object p2

    #@219
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object p2

    #@21d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@220
    move-result-object p2

    #@221
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@224
    throw p1

    #@225
    nop

    #@226
    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_1f2
        :pswitch_1c1
        :pswitch_177
        :pswitch_12c
        :pswitch_c8
        :pswitch_95
        :pswitch_62
    .end packed-switch
.end method

.method public connect(IIIII)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startID",
            "startSide",
            "endID",
            "endSide",
            "margin"
        }
    .end annotation

    #@0
    .line 2743
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1a

    #@c
    .line 2744
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@14
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 2746
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object p1

    #@24
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@26
    if-nez p1, :cond_29

    #@28
    return-void

    #@29
    :cond_29
    const/4 v0, 0x2

    #@2a
    const/4 v1, 0x7

    #@2b
    const/4 v2, 0x6

    #@2c
    const/4 v3, 0x1

    #@2d
    const/4 v4, 0x4

    #@2e
    const/4 v5, 0x3

    #@2f
    const-string v6, "right to "

    #@31
    const-string v7, " undefined"

    #@33
    const/4 v8, -0x1

    #@34
    packed-switch p2, :pswitch_data_23a

    #@37
    .line 2862
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance p3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    .line 2863
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@41
    move-result-object p2

    #@42
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object p2

    #@46
    const-string p3, " to "

    #@48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object p2

    #@4c
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@4f
    move-result-object p3

    #@50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object p2

    #@54
    const-string p3, " unknown"

    #@56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object p2

    #@5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object p2

    #@5e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw p1

    #@62
    :pswitch_62
    if-ne p4, v1, :cond_6d

    #@64
    .line 2851
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@66
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    #@68
    .line 2852
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6a
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@6c
    goto :goto_77

    #@6d
    :cond_6d
    if-ne p4, v2, :cond_7d

    #@6f
    .line 2854
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@71
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@73
    .line 2855
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@75
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    #@77
    .line 2859
    :goto_77
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@79
    iput p5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    #@7b
    goto/16 :goto_21b

    #@7d
    .line 2857
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@7f
    new-instance p2, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@84
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@87
    move-result-object p3

    #@88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object p2

    #@8c
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object p2

    #@90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object p2

    #@94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@97
    throw p1

    #@98
    :pswitch_98
    if-ne p4, v2, :cond_a3

    #@9a
    .line 2839
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@9c
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    #@9e
    .line 2840
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a0
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@a2
    goto :goto_ad

    #@a3
    :cond_a3
    if-ne p4, v1, :cond_b3

    #@a5
    .line 2842
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a7
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@a9
    .line 2843
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ab
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    #@ad
    .line 2847
    :goto_ad
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@af
    iput p5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    #@b1
    goto/16 :goto_21b

    #@b3
    .line 2845
    :cond_b3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@b5
    new-instance p2, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ba
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@bd
    move-result-object p3

    #@be
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object p2

    #@c2
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object p2

    #@c6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object p2

    #@ca
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cd
    throw p1

    #@ce
    :pswitch_ce
    const/4 p2, 0x5

    #@cf
    if-ne p4, p2, :cond_e7

    #@d1
    .line 2816
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@d3
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@d5
    .line 2817
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@d7
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@d9
    .line 2818
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@db
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@dd
    .line 2819
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@df
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@e1
    .line 2820
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e3
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@e5
    goto/16 :goto_21b

    #@e7
    :cond_e7
    if-ne p4, v5, :cond_ff

    #@e9
    .line 2822
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@eb
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@ed
    .line 2823
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@ef
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@f1
    .line 2824
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f3
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@f5
    .line 2825
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f7
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@f9
    .line 2826
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@fb
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@fd
    goto/16 :goto_21b

    #@ff
    :cond_ff
    if-ne p4, v4, :cond_117

    #@101
    .line 2828
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@103
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@105
    .line 2829
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@107
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@109
    .line 2830
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@10b
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@10d
    .line 2831
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@10f
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@111
    .line 2832
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@113
    iput v8, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@115
    goto/16 :goto_21b

    #@117
    .line 2834
    :cond_117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@119
    new-instance p2, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11e
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@121
    move-result-object p3

    #@122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object p2

    #@126
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object p2

    #@12a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object p2

    #@12e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@131
    throw p1

    #@132
    :pswitch_132
    if-ne p4, v4, :cond_149

    #@134
    .line 2798
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@136
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@138
    .line 2799
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@13a
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@13c
    .line 2800
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@13e
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@140
    .line 2801
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@142
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@144
    .line 2802
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@146
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@148
    goto :goto_15f

    #@149
    :cond_149
    if-ne p4, v5, :cond_165

    #@14b
    .line 2804
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@14d
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@14f
    .line 2805
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@151
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@153
    .line 2806
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@155
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@157
    .line 2807
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@159
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@15b
    .line 2808
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@15d
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@15f
    .line 2812
    :goto_15f
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@161
    iput p5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    #@163
    goto/16 :goto_21b

    #@165
    .line 2810
    :cond_165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@167
    new-instance p2, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16c
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@16f
    move-result-object p3

    #@170
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object p2

    #@174
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object p2

    #@178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object p2

    #@17c
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17f
    throw p1

    #@180
    :pswitch_180
    if-ne p4, v5, :cond_197

    #@182
    .line 2780
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@184
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@186
    .line 2781
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@188
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@18a
    .line 2782
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@18c
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@18e
    .line 2783
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@190
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@192
    .line 2784
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@194
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@196
    goto :goto_1ad

    #@197
    :cond_197
    if-ne p4, v4, :cond_1b2

    #@199
    .line 2786
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@19b
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@19d
    .line 2787
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@19f
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@1a1
    .line 2788
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1a3
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    #@1a5
    .line 2789
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1a7
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    #@1a9
    .line 2790
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1ab
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    #@1ad
    .line 2794
    :goto_1ad
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1af
    iput p5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    #@1b1
    goto :goto_21b

    #@1b2
    .line 2792
    :cond_1b2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1b4
    new-instance p2, Ljava/lang/StringBuilder;

    #@1b6
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b9
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@1bc
    move-result-object p3

    #@1bd
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object p2

    #@1c1
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object p2

    #@1c5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object p2

    #@1c9
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1cc
    throw p1

    #@1cd
    :pswitch_1cd
    if-ne p4, v3, :cond_1d8

    #@1cf
    .line 2766
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d1
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@1d3
    .line 2767
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d5
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@1d7
    goto :goto_1e2

    #@1d8
    :cond_1d8
    if-ne p4, v0, :cond_1e7

    #@1da
    .line 2770
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1dc
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@1de
    .line 2771
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1e0
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@1e2
    .line 2776
    :goto_1e2
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1e4
    iput p5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    #@1e6
    goto :goto_21b

    #@1e7
    .line 2774
    :cond_1e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1e9
    new-instance p2, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1ee
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@1f1
    move-result-object p3

    #@1f2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object p2

    #@1f6
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object p2

    #@1fa
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object p2

    #@1fe
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@201
    throw p1

    #@202
    :pswitch_202
    if-ne p4, v3, :cond_20d

    #@204
    .line 2753
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@206
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@208
    .line 2754
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@20a
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@20c
    goto :goto_217

    #@20d
    :cond_20d
    if-ne p4, v0, :cond_21c

    #@20f
    .line 2756
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@211
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@213
    .line 2757
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@215
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@217
    .line 2762
    :goto_217
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@219
    iput p5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    #@21b
    :goto_21b
    return-void

    #@21c
    .line 2760
    :cond_21c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@21e
    new-instance p2, Ljava/lang/StringBuilder;

    #@220
    const-string p3, "Left to "

    #@222
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@225
    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    #@228
    move-result-object p3

    #@229
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object p2

    #@22d
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object p2

    #@231
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@234
    move-result-object p2

    #@235
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@238
    throw p1

    #@239
    nop

    #@23a
    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_202
        :pswitch_1cd
        :pswitch_180
        :pswitch_132
        :pswitch_ce
        :pswitch_98
        :pswitch_62
    .end packed-switch
.end method

.method public constrainCircle(IIIF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "id",
            "radius",
            "angle"
        }
    .end annotation

    #@0
    .line 3511
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3512
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    #@8
    .line 3513
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    #@c
    .line 3514
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e
    iput p4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    #@10
    return-void
.end method

.method public constrainDefaultHeight(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "height"
        }
    .end annotation

    #@0
    .line 3596
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    #@8
    return-void
.end method

.method public constrainDefaultWidth(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "width"
        }
    .end annotation

    #@0
    .line 3632
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    #@8
    return-void
.end method

.method public constrainHeight(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "height"
        }
    .end annotation

    #@0
    .line 3486
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@8
    return-void
.end method

.method public constrainMaxHeight(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "height"
        }
    .end annotation

    #@0
    .line 3526
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    #@8
    return-void
.end method

.method public constrainMaxWidth(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "width"
        }
    .end annotation

    #@0
    .line 3538
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    #@8
    return-void
.end method

.method public constrainMinHeight(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "height"
        }
    .end annotation

    #@0
    .line 3550
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    #@8
    return-void
.end method

.method public constrainMinWidth(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "width"
        }
    .end annotation

    #@0
    .line 3562
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    #@8
    return-void
.end method

.method public constrainPercentHeight(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "percent"
        }
    .end annotation

    #@0
    .line 3584
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    #@8
    return-void
.end method

.method public constrainPercentWidth(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "percent"
        }
    .end annotation

    #@0
    .line 3573
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    #@8
    return-void
.end method

.method public constrainWidth(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "width"
        }
    .end annotation

    #@0
    .line 3498
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@8
    return-void
.end method

.method public constrainedHeight(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "constrained"
        }
    .end annotation

    #@0
    .line 3620
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput-boolean p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    #@8
    return-void
.end method

.method public constrainedWidth(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "constrained"
        }
    .end annotation

    #@0
    .line 3608
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput-boolean p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    #@8
    return-void
.end method

.method public create(II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "guidelineID",
            "orientation"
        }
    .end annotation

    #@0
    .line 3845
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3846
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    const/4 v1, 0x1

    #@7
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    #@9
    .line 3847
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    #@d
    return-void
.end method

.method public varargs createBarrier(III[I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "direction",
            "margin",
            "referenced"
        }
    .end annotation

    #@0
    .line 3859
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3860
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    const/4 v1, 0x1

    #@7
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    #@9
    .line 3861
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@d
    .line 3862
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@f
    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@11
    .line 3863
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@13
    const/4 p3, 0x0

    #@14
    iput-boolean p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    #@16
    .line 3864
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@18
    iput-object p4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@1a
    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftId",
            "leftSide",
            "rightId",
            "rightSide",
            "chainIds",
            "weights",
            "style"
        }
    .end annotation

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x2

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move-object v5, p5

    #@8
    move-object/from16 v6, p6

    #@a
    move/from16 v7, p7

    #@c
    .line 2681
    invoke-direct/range {v0 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    #@f
    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startId",
            "startSide",
            "endId",
            "endSide",
            "chainIds",
            "weights",
            "style"
        }
    .end annotation

    #@0
    const/4 v8, 0x6

    #@1
    const/4 v9, 0x7

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move-object v5, p5

    #@8
    move-object/from16 v6, p6

    #@a
    move/from16 v7, p7

    #@c
    .line 2700
    invoke-direct/range {v0 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    #@f
    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topId",
            "topSide",
            "bottomId",
            "bottomSide",
            "chainIds",
            "weights",
            "style"
        }
    .end annotation

    #@0
    move-object v6, p0

    #@1
    move-object/from16 v7, p5

    #@3
    move-object/from16 v8, p6

    #@5
    .line 2640
    array-length v0, v7

    #@6
    const/4 v1, 0x2

    #@7
    const-string v2, "must have 2 or more widgets in a chain"

    #@9
    if-lt v0, v1, :cond_77

    #@b
    if-eqz v8, :cond_18

    #@d
    .line 2643
    array-length v0, v8

    #@e
    array-length v1, v7

    #@f
    if-ne v0, v1, :cond_12

    #@11
    goto :goto_18

    #@12
    .line 2644
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    :goto_18
    const/4 v0, 0x0

    #@19
    if-eqz v8, :cond_27

    #@1b
    .line 2647
    aget v1, v7, v0

    #@1d
    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@20
    move-result-object v1

    #@21
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@23
    aget v2, v8, v0

    #@25
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@27
    .line 2649
    :cond_27
    aget v1, v7, v0

    #@29
    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@2c
    move-result-object v1

    #@2d
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2f
    move/from16 v2, p7

    #@31
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    #@33
    .line 2651
    aget v1, v7, v0

    #@35
    const/4 v2, 0x3

    #@36
    const/4 v5, 0x0

    #@37
    move-object v0, p0

    #@38
    move v3, p1

    #@39
    move v4, p2

    #@3a
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@3d
    const/4 v9, 0x1

    #@3e
    move v10, v9

    #@3f
    .line 2652
    :goto_3f
    array-length v0, v7

    #@40
    if-ge v10, v0, :cond_69

    #@42
    .line 2653
    aget v1, v7, v10

    #@44
    const/4 v2, 0x3

    #@45
    add-int/lit8 v11, v10, -0x1

    #@47
    .line 2654
    aget v3, v7, v11

    #@49
    const/4 v4, 0x4

    #@4a
    const/4 v5, 0x0

    #@4b
    move-object v0, p0

    #@4c
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@4f
    .line 2655
    aget v1, v7, v11

    #@51
    const/4 v2, 0x4

    #@52
    aget v3, v7, v10

    #@54
    const/4 v4, 0x3

    #@55
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@58
    if-eqz v8, :cond_66

    #@5a
    .line 2657
    aget v0, v7, v10

    #@5c
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@5f
    move-result-object v0

    #@60
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@62
    aget v1, v8, v10

    #@64
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@66
    :cond_66
    add-int/lit8 v10, v10, 0x1

    #@68
    goto :goto_3f

    #@69
    .line 2660
    :cond_69
    array-length v0, v7

    #@6a
    sub-int/2addr v0, v9

    #@6b
    aget v1, v7, v0

    #@6d
    const/4 v2, 0x4

    #@6e
    const/4 v5, 0x0

    #@6f
    move-object v0, p0

    #@70
    move v3, p3

    #@71
    move/from16 v4, p4

    #@73
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@76
    return-void

    #@77
    .line 2641
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@79
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v0
.end method

.method public varargs dump(Landroidx/constraintlayout/motion/widget/MotionScene;[I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "ids"
        }
    .end annotation

    #@0
    .line 5347
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 5349
    array-length v1, p2

    #@7
    const/4 v2, 0x0

    #@8
    if-eqz v1, :cond_1f

    #@a
    .line 5350
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    .line 5351
    array-length v1, p2

    #@10
    move v3, v2

    #@11
    :goto_11
    if-ge v3, v1, :cond_25

    #@13
    aget v4, p2, v3

    #@15
    .line 5352
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1c
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_11

    #@1f
    .line 5355
    :cond_1f
    new-instance p2, Ljava/util/HashSet;

    #@21
    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@24
    move-object v0, p2

    #@25
    .line 5357
    :cond_25
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    #@2f
    move-result v3

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string v3, " constraints"

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    .line 5358
    new-instance p2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    new-array v1, v2, [Ljava/lang/Integer;

    #@48
    .line 5360
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, [Ljava/lang/Integer;

    #@4e
    array-length v1, v0

    #@4f
    :goto_4f
    if-ge v2, v1, :cond_78

    #@51
    aget-object v3, v0, v2

    #@53
    .line 5361
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@55
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v4

    #@59
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@5b
    if-nez v4, :cond_5e

    #@5d
    goto :goto_75

    #@5e
    :cond_5e
    const-string v5, "<Constraint id="

    #@60
    .line 5366
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 5367
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    const-string v3, " \n"

    #@68
    .line 5368
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 5369
    iget-object v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6d
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dump(Landroidx/constraintlayout/motion/widget/MotionScene;Ljava/lang/StringBuilder;)V

    #@70
    const-string v3, "/>\n"

    #@72
    .line 5370
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    :goto_75
    add-int/lit8 v2, v2, 0x1

    #@77
    goto :goto_4f

    #@78
    .line 5372
    :cond_78
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object p2

    #@7e
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@81
    return-void
.end method

.method public getApplyElevation(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3291
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iget-boolean p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@8
    return p1
.end method

.method public getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 5294
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    .line 5295
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@18
    return-object p1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return-object p1
.end method

.method public getCustomAttributeSet()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation

    #@0
    .line 562
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getHeight(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3262
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    #@8
    return p1
.end method

.method public getKnownIds()[I
    .registers 6

    #@0
    .line 5304
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    new-array v2, v1, [Ljava/lang/Integer;

    #@9
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [Ljava/lang/Integer;

    #@f
    .line 5305
    array-length v2, v0

    #@10
    new-array v3, v2, [I

    #@12
    :goto_12
    if-ge v1, v2, :cond_1f

    #@14
    .line 5307
    aget-object v4, v0, v1

    #@16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v4

    #@1a
    aput v4, v3, v1

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_12

    #@1f
    :cond_1f
    return-object v3
.end method

.method public getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mId"
        }
    .end annotation

    #@0
    .line 566
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getReferencedIds(I)[I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 3911
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3912
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@8
    if-nez v0, :cond_e

    #@a
    const/4 p1, 0x0

    #@b
    new-array p1, p1, [I

    #@d
    return-object p1

    #@e
    .line 3915
    :cond_e
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@10
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@12
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@14
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@16
    array-length p1, p1

    #@17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public getVisibility(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3252
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@6
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@8
    return p1
.end method

.method public getVisibilityMode(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3242
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@6
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@8
    return p1
.end method

.method public getWidth(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3272
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    #@8
    return p1
.end method

.method public isForceId()Z
    .registers 2

    #@0
    .line 5317
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@2
    return v0
.end method

.method public load(Landroid/content/Context;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    #@0
    .line 4088
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 4089
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object p2

    #@8
    .line 4094
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@b
    move-result v0

    #@c
    :goto_c
    const/4 v1, 0x1

    #@d
    if-eq v0, v1, :cond_4b

    #@f
    if-eqz v0, :cond_3a

    #@11
    const/4 v2, 0x2

    #@12
    if-eq v0, v2, :cond_15

    #@14
    goto :goto_3d

    #@15
    .line 4102
    :cond_15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 4103
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-direct {p0, p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@21
    move-result-object v2

    #@22
    const-string v3, "Guideline"

    #@24
    .line 4104
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2e

    #@2a
    .line 4105
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2c
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    #@2e
    .line 4110
    :cond_2e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@30
    iget v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    goto :goto_3d

    #@3a
    .line 4099
    :cond_3a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3d
    .line 4096
    :goto_3d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@40
    move-result v0
    :try_end_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_41} :catch_47
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_41} :catch_42

    #@41
    goto :goto_c

    #@42
    :catch_42
    move-exception p1

    #@43
    .line 4122
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@46
    goto :goto_4b

    #@47
    :catch_47
    move-exception p1

    #@48
    .line 4120
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@4b
    :cond_4b
    :goto_4b
    return-void
.end method

.method public load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    #@0
    .line 4136
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move-object v2, v1

    #@6
    :goto_6
    const/4 v3, 0x1

    #@7
    if-eq v0, v3, :cond_1e6

    #@9
    if-eqz v0, :cond_1d4

    #@b
    const/4 v4, -0x1

    #@c
    const/4 v5, 0x3

    #@d
    const/4 v6, 0x2

    #@e
    const/4 v7, 0x0

    #@f
    if-eq v0, v6, :cond_67

    #@11
    if-eq v0, v5, :cond_15

    #@13
    goto/16 :goto_1d7

    #@15
    .line 4207
    :cond_15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 4208
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@1b
    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@22
    move-result v8

    #@23
    sparse-switch v8, :sswitch_data_1e8

    #@26
    goto :goto_4e

    #@27
    :sswitch_27
    const-string v8, "constraintset"

    #@29
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_4e

    #@2f
    move v4, v7

    #@30
    goto :goto_4e

    #@31
    :sswitch_31
    const-string v7, "constraintoverride"

    #@33
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4e

    #@39
    move v4, v6

    #@3a
    goto :goto_4e

    #@3b
    :sswitch_3b
    const-string v7, "constraint"

    #@3d
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_4e

    #@43
    move v4, v3

    #@44
    goto :goto_4e

    #@45
    :sswitch_45
    const-string v7, "guideline"

    #@47
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_4e

    #@4d
    move v4, v5

    #@4e
    :cond_4e
    :goto_4e
    if-eqz v4, :cond_66

    #@50
    if-eq v4, v3, :cond_58

    #@52
    if-eq v4, v6, :cond_58

    #@54
    if-eq v4, v5, :cond_58

    #@56
    goto/16 :goto_1d7

    #@58
    .line 4214
    :cond_58
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@5a
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    #@5c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    move-object v2, v1

    #@64
    goto/16 :goto_1d7

    #@66
    :cond_66
    return-void

    #@67
    .line 4145
    :cond_67
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .line 4149
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@6e
    move-result v8

    #@6f
    sparse-switch v8, :sswitch_data_1fa

    #@72
    goto/16 :goto_d9

    #@74
    :sswitch_74
    const-string v5, "Constraint"

    #@76
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_d9

    #@7c
    move v4, v7

    #@7d
    goto :goto_d9

    #@7e
    :sswitch_7e
    const-string v5, "CustomAttribute"

    #@80
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v0

    #@84
    if-eqz v0, :cond_d9

    #@86
    const/16 v4, 0x8

    #@88
    goto :goto_d9

    #@89
    :sswitch_89
    const-string v6, "Barrier"

    #@8b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_d9

    #@91
    move v4, v5

    #@92
    goto :goto_d9

    #@93
    :sswitch_93
    const-string v5, "CustomMethod"

    #@95
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v0

    #@99
    if-eqz v0, :cond_d9

    #@9b
    const/16 v4, 0x9

    #@9d
    goto :goto_d9

    #@9e
    :sswitch_9e
    const-string v5, "Guideline"

    #@a0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v0

    #@a4
    if-eqz v0, :cond_d9

    #@a6
    move v4, v6

    #@a7
    goto :goto_d9

    #@a8
    :sswitch_a8
    const-string v5, "Transform"

    #@aa
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v0

    #@ae
    if-eqz v0, :cond_d9

    #@b0
    const/4 v4, 0x5

    #@b1
    goto :goto_d9

    #@b2
    :sswitch_b2
    const-string v5, "PropertySet"

    #@b4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v0

    #@b8
    if-eqz v0, :cond_d9

    #@ba
    const/4 v4, 0x4

    #@bb
    goto :goto_d9

    #@bc
    :sswitch_bc
    const-string v5, "ConstraintOverride"

    #@be
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v0

    #@c2
    if-eqz v0, :cond_d9

    #@c4
    move v4, v3

    #@c5
    goto :goto_d9

    #@c6
    :sswitch_c6
    const-string v5, "Motion"

    #@c8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v0

    #@cc
    if-eqz v0, :cond_d9

    #@ce
    const/4 v4, 0x7

    #@cf
    goto :goto_d9

    #@d0
    :sswitch_d0
    const-string v5, "Layout"

    #@d2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v0
    :try_end_d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_d6} :catch_1e2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d6} :catch_1dd

    #@d6
    if-eqz v0, :cond_d9

    #@d8
    const/4 v4, 0x6

    #@d9
    :cond_d9
    :goto_d9
    const-string v0, "XML parser error must be within a Constraint "

    #@db
    packed-switch v4, :pswitch_data_224

    #@de
    goto/16 :goto_1d7

    #@e0
    :pswitch_e0
    if-eqz v2, :cond_e9

    #@e2
    .line 4194
    :try_start_e2
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@e4
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    #@e7
    goto/16 :goto_1d7

    #@e9
    .line 4192
    :cond_e9
    new-instance p1, Ljava/lang/RuntimeException;

    #@eb
    new-instance v1, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v0

    #@f4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@f7
    move-result p2

    #@f8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object p2

    #@fc
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object p2

    #@100
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@103
    throw p1

    #@104
    :pswitch_104
    if-eqz v2, :cond_111

    #@106
    .line 4187
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@108
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@10b
    move-result-object v3

    #@10c
    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@10f
    goto/16 :goto_1d7

    #@111
    .line 4185
    :cond_111
    new-instance p1, Ljava/lang/RuntimeException;

    #@113
    new-instance v1, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v0

    #@11c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@11f
    move-result p2

    #@120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    move-result-object p2

    #@124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object p2

    #@128
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12b
    throw p1

    #@12c
    :pswitch_12c
    if-eqz v2, :cond_139

    #@12e
    .line 4181
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@130
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@133
    move-result-object v3

    #@134
    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@137
    goto/16 :goto_1d7

    #@139
    .line 4179
    :cond_139
    new-instance p1, Ljava/lang/RuntimeException;

    #@13b
    new-instance v1, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v0

    #@144
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@147
    move-result p2

    #@148
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14b
    move-result-object p2

    #@14c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object p2

    #@150
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@153
    throw p1

    #@154
    :pswitch_154
    if-eqz v2, :cond_161

    #@156
    .line 4175
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@158
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@15b
    move-result-object v3

    #@15c
    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@15f
    goto/16 :goto_1d7

    #@161
    .line 4173
    :cond_161
    new-instance p1, Ljava/lang/RuntimeException;

    #@163
    new-instance v1, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v0

    #@16c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@16f
    move-result p2

    #@170
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object p2

    #@174
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object p2

    #@178
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17b
    throw p1

    #@17c
    :pswitch_17c
    if-eqz v2, :cond_188

    #@17e
    .line 4169
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@180
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@183
    move-result-object v3

    #@184
    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@187
    goto :goto_1d7

    #@188
    .line 4167
    :cond_188
    new-instance p1, Ljava/lang/RuntimeException;

    #@18a
    new-instance v1, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v0

    #@193
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@196
    move-result p2

    #@197
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19a
    move-result-object p2

    #@19b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object p2

    #@19f
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a2
    throw p1

    #@1a3
    .line 4162
    :pswitch_1a3
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1a6
    move-result-object v0

    #@1a7
    invoke-direct {p0, p1, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1aa
    move-result-object v0

    #@1ab
    .line 4163
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1ad
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    #@1af
    goto :goto_1d2

    #@1b0
    .line 4157
    :pswitch_1b0
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1b3
    move-result-object v0

    #@1b4
    invoke-direct {p0, p1, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1b7
    move-result-object v0

    #@1b8
    .line 4158
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1ba
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    #@1bc
    .line 4159
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1be
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    #@1c0
    goto :goto_1d2

    #@1c1
    .line 4154
    :pswitch_1c1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1c4
    move-result-object v0

    #@1c5
    invoke-direct {p0, p1, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1c8
    move-result-object v0

    #@1c9
    goto :goto_1d2

    #@1ca
    .line 4151
    :pswitch_1ca
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1cd
    move-result-object v0

    #@1ce
    invoke-direct {p0, p1, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@1d1
    move-result-object v0

    #@1d2
    :goto_1d2
    move-object v2, v0

    #@1d3
    goto :goto_1d7

    #@1d4
    .line 4141
    :cond_1d4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d7
    .line 4138
    :goto_1d7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1da
    move-result v0
    :try_end_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_1db} :catch_1e2
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_1db} :catch_1dd

    #@1db
    goto/16 :goto_6

    #@1dd
    :catch_1dd
    move-exception p1

    #@1de
    .line 4226
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@1e1
    goto :goto_1e6

    #@1e2
    :catch_1e2
    move-exception p1

    #@1e3
    .line 4224
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@1e6
    :cond_1e6
    :goto_1e6
    return-void

    #@1e7
    nop

    #@1e8
    :sswitch_data_1e8
    .sparse-switch
        -0x7bb8f310 -> :sswitch_45
        -0xb58ea23 -> :sswitch_3b
        0x196d04a9 -> :sswitch_31
        0x7feafd65 -> :sswitch_27
    .end sparse-switch

    #@1fa
    :sswitch_data_1fa
    .sparse-switch
        -0x78c018b6 -> :sswitch_d0
        -0x7648542a -> :sswitch_c6
        -0x74f4db17 -> :sswitch_bc
        -0x4bab3dd3 -> :sswitch_b2
        -0x49cf74b4 -> :sswitch_a8
        -0x446d330 -> :sswitch_9e
        0x15d883d2 -> :sswitch_93
        0x4f5d3b97 -> :sswitch_89
        0x6acd460b -> :sswitch_7e
        0x6b78f1fd -> :sswitch_74
    .end sparse-switch

    #@224
    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_1ca
        :pswitch_1c1
        :pswitch_1b0
        :pswitch_1a3
        :pswitch_17c
        :pswitch_154
        :pswitch_12c
        :pswitch_104
        :pswitch_e0
        :pswitch_e0
    .end packed-switch
.end method

.method public parseColorAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "attributes"
        }
    .end annotation

    #@0
    const-string v0, ","

    #@2
    .line 3987
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object p2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    .line 3988
    :goto_8
    array-length v2, p2

    #@9
    if-ge v1, v2, :cond_3d

    #@b
    .line 3989
    aget-object v2, p2, v1

    #@d
    const-string v3, "="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 3990
    array-length v3, v2

    #@14
    const/4 v4, 0x2

    #@15
    if-eq v3, v4, :cond_2e

    #@17
    .line 3991
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    const-string v3, " Unable to parse "

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    aget-object v3, p2, v1

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    const-string v3, "ConstraintSet"

    #@2a
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_3a

    #@2e
    .line 3993
    :cond_2e
    aget-object v3, v2, v0

    #@30
    const/4 v4, 0x1

    #@31
    aget-object v2, v2, v4

    #@33
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    #@36
    move-result v2

    #@37
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setColorValue(Ljava/lang/String;I)V
    invoke-static {p1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$1000(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;I)V

    #@3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_8

    #@3d
    :cond_3d
    return-void
.end method

.method public parseFloatAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "attributes"
        }
    .end annotation

    #@0
    const-string v0, ","

    #@2
    .line 3999
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object p2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    .line 4000
    :goto_8
    array-length v2, p2

    #@9
    if-ge v1, v2, :cond_3d

    #@b
    .line 4001
    aget-object v2, p2, v1

    #@d
    const-string v3, "="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 4002
    array-length v3, v2

    #@14
    const/4 v4, 0x2

    #@15
    if-eq v3, v4, :cond_2e

    #@17
    .line 4003
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    const-string v3, " Unable to parse "

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    aget-object v3, p2, v1

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    const-string v3, "ConstraintSet"

    #@2a
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_3a

    #@2e
    .line 4005
    :cond_2e
    aget-object v3, v2, v0

    #@30
    const/4 v4, 0x1

    #@31
    aget-object v2, v2, v4

    #@33
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@36
    move-result v2

    #@37
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setFloatValue(Ljava/lang/String;F)V
    invoke-static {p1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$1100(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;F)V

    #@3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_8

    #@3d
    :cond_3d
    return-void
.end method

.method public parseIntAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "attributes"
        }
    .end annotation

    #@0
    const-string v0, ","

    #@2
    .line 3975
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object p2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    .line 3976
    :goto_8
    array-length v2, p2

    #@9
    if-ge v1, v2, :cond_42

    #@b
    .line 3977
    aget-object v2, p2, v1

    #@d
    const-string v3, "="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 3978
    array-length v3, v2

    #@14
    const/4 v4, 0x2

    #@15
    if-eq v3, v4, :cond_2e

    #@17
    .line 3979
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    const-string v3, " Unable to parse "

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    aget-object v3, p2, v1

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    const-string v3, "ConstraintSet"

    #@2a
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_3f

    #@2e
    .line 3981
    :cond_2e
    aget-object v3, v2, v0

    #@30
    const/4 v4, 0x1

    #@31
    aget-object v2, v2, v4

    #@33
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v2

    #@3b
    int-to-float v2, v2

    #@3c
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setFloatValue(Ljava/lang/String;F)V
    invoke-static {p1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$1100(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;F)V

    #@3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_8

    #@42
    :cond_42
    return-void
.end method

.method public parseStringAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "attributes"
        }
    .end annotation

    #@0
    .line 4011
    invoke-static {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object p2

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    .line 4012
    :goto_6
    array-length v2, p2

    #@7
    if-ge v1, v2, :cond_32

    #@9
    .line 4013
    aget-object v2, p2, v1

    #@b
    const-string v3, "="

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 4014
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    const-string v4, " Unable to parse "

    #@15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    aget-object v4, p2, v1

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    const-string v4, "ConstraintSet"

    #@24
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 4015
    aget-object v3, v2, v0

    #@29
    const/4 v4, 0x1

    #@2a
    aget-object v2, v2, v4

    #@2c
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$1200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_6

    #@32
    :cond_32
    return-void
.end method

.method public readFallback(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintLayout"
        }
    .end annotation

    #@0
    .line 613
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_11d

    #@7
    .line 615
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 616
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@11
    .line 618
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@14
    move-result v4

    #@15
    .line 619
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@17
    if-eqz v5, :cond_25

    #@19
    const/4 v5, -0x1

    #@1a
    if-eq v4, v5, :cond_1d

    #@1c
    goto :goto_25

    #@1d
    .line 620
    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    #@1f
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    #@21
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw p1

    #@25
    .line 622
    :cond_25
    :goto_25
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_3f

    #@31
    .line 623
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v6

    #@37
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@39
    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@3c
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 625
    :cond_3f
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@4b
    if-nez v5, :cond_4f

    #@4d
    goto/16 :goto_119

    #@4f
    .line 629
    :cond_4f
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@51
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    #@53
    const/4 v7, 0x1

    #@54
    if-nez v6, :cond_8b

    #@56
    .line 630
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$000(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    #@59
    .line 631
    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@5b
    if-eqz v3, :cond_87

    #@5d
    .line 632
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@5f
    move-object v4, v2

    #@60
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@62
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    #@65
    move-result-object v4

    #@66
    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@68
    .line 633
    instance-of v3, v2, Landroidx/constraintlayout/widget/Barrier;

    #@6a
    if-eqz v3, :cond_87

    #@6c
    .line 634
    move-object v3, v2

    #@6d
    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    #@6f
    .line 635
    iget-object v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@71
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    #@74
    move-result v6

    #@75
    iput-boolean v6, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@77
    .line 636
    iget-object v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@79
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    #@7c
    move-result v6

    #@7d
    iput v6, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@7f
    .line 637
    iget-object v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@81
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    #@84
    move-result v3

    #@85
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@87
    .line 640
    :cond_87
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@89
    iput-boolean v7, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    #@8b
    .line 642
    :cond_8b
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@8d
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    #@8f
    if-nez v3, :cond_a5

    #@91
    .line 643
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@93
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@96
    move-result v4

    #@97
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@99
    .line 644
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@9b
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    #@9e
    move-result v4

    #@9f
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@a1
    .line 645
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@a3
    iput-boolean v7, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    #@a5
    .line 649
    :cond_a5
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@a7
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@a9
    if-nez v3, :cond_119

    #@ab
    .line 650
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@ad
    iput-boolean v7, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@af
    .line 651
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@b1
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    #@b4
    move-result v4

    #@b5
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@b7
    .line 652
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@b9
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    #@bc
    move-result v4

    #@bd
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@bf
    .line 653
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@c1
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    #@c4
    move-result v4

    #@c5
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@c7
    .line 654
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@c9
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    #@cc
    move-result v4

    #@cd
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@cf
    .line 655
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@d1
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    #@d4
    move-result v4

    #@d5
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@d7
    .line 657
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    #@da
    move-result v3

    #@db
    .line 658
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    #@de
    move-result v4

    #@df
    float-to-double v6, v3

    #@e0
    const-wide/16 v8, 0x0

    #@e2
    cmpl-double v6, v6, v8

    #@e4
    if-nez v6, :cond_eb

    #@e6
    float-to-double v6, v4

    #@e7
    cmpl-double v6, v6, v8

    #@e9
    if-eqz v6, :cond_f3

    #@eb
    .line 661
    :cond_eb
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@ed
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@ef
    .line 662
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@f1
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@f3
    .line 665
    :cond_f3
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@f5
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    #@f8
    move-result v4

    #@f9
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@fb
    .line 666
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@fd
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    #@100
    move-result v4

    #@101
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@103
    .line 668
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@105
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    #@108
    move-result v4

    #@109
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@10b
    .line 669
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@10d
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@10f
    if-eqz v3, :cond_119

    #@111
    .line 670
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@113
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    #@116
    move-result v2

    #@117
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@119
    :cond_119
    :goto_119
    add-int/lit8 v1, v1, 0x1

    #@11b
    goto/16 :goto_5

    #@11d
    :cond_11d
    return-void
.end method

.method public readFallback(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    #@0
    .line 576
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_ab

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/Integer;

    #@16
    .line 577
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v2

    #@1a
    .line 578
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@22
    .line 580
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_3c

    #@2e
    .line 581
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v4

    #@34
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@36
    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    #@39
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 583
    :cond_3c
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@3e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@48
    if-nez v2, :cond_4b

    #@4a
    goto :goto_a

    #@4b
    .line 587
    :cond_4b
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4d
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    #@4f
    if-nez v3, :cond_58

    #@51
    .line 588
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@53
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@55
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V

    #@58
    .line 590
    :cond_58
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@5a
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    #@5c
    if-nez v3, :cond_65

    #@5e
    .line 591
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@60
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@62
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;)V

    #@65
    .line 593
    :cond_65
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@67
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@69
    if-nez v3, :cond_72

    #@6b
    .line 594
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6d
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6f
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Transform;)V

    #@72
    .line 596
    :cond_72
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@74
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    #@76
    if-nez v3, :cond_7f

    #@78
    .line 597
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@7a
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@7c
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Motion;)V

    #@7f
    .line 599
    :cond_7f
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@81
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@84
    move-result-object v3

    #@85
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object v3

    #@89
    :cond_89
    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_a

    #@8f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v4

    #@93
    check-cast v4, Ljava/lang/String;

    #@95
    .line 600
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@97
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9a
    move-result v5

    #@9b
    if-nez v5, :cond_89

    #@9d
    .line 601
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@9f
    iget-object v6, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@a1
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    move-result-object v6

    #@a5
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@a7
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    goto :goto_89

    #@ab
    :cond_ab
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeName"
        }
    .end annotation

    #@0
    .line 3936
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public removeFromHorizontalChain(I)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3792
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_bc

    #@c
    .line 3793
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@18
    if-nez v0, :cond_1b

    #@1a
    return-void

    #@1b
    .line 3797
    :cond_1b
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    #@1f
    .line 3798
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@21
    iget v8, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_79

    #@26
    if-eq v8, v2, :cond_29

    #@28
    goto :goto_79

    #@29
    .line 3815
    :cond_29
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2b
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    #@2d
    .line 3816
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2f
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    #@31
    if-ne v5, v2, :cond_35

    #@33
    if-eq v3, v2, :cond_70

    #@35
    :cond_35
    if-eq v5, v2, :cond_49

    #@37
    if-eq v3, v2, :cond_49

    #@39
    const/4 v6, 0x7

    #@3a
    const/4 v8, 0x6

    #@3b
    const/4 v9, 0x0

    #@3c
    move-object v4, p0

    #@3d
    move v7, v3

    #@3e
    .line 3820
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@41
    const/4 v4, 0x6

    #@42
    const/4 v7, 0x0

    #@43
    move-object v2, p0

    #@44
    move v5, v1

    #@45
    .line 3821
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@48
    goto :goto_70

    #@49
    :cond_49
    if-eq v3, v2, :cond_70

    #@4b
    .line 3823
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@4d
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@4f
    if-eq v4, v2, :cond_5e

    #@51
    const/4 v4, 0x7

    #@52
    .line 3825
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@54
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@56
    const/4 v6, 0x7

    #@57
    const/4 v7, 0x0

    #@58
    move-object v2, p0

    #@59
    move v3, v1

    #@5a
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@5d
    goto :goto_70

    #@5e
    .line 3826
    :cond_5e
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@60
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@62
    if-eq v1, v2, :cond_70

    #@64
    const/4 v8, 0x6

    #@65
    .line 3828
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@67
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@69
    const/4 v10, 0x6

    #@6a
    const/4 v11, 0x0

    #@6b
    move-object v6, p0

    #@6c
    move v7, v3

    #@6d
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@70
    :cond_70
    :goto_70
    const/4 v0, 0x6

    #@71
    .line 3832
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    #@74
    const/4 v0, 0x7

    #@75
    .line 3833
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    #@78
    goto :goto_bc

    #@79
    :cond_79
    :goto_79
    if-eq v1, v2, :cond_8e

    #@7b
    if-eq v8, v2, :cond_8e

    #@7d
    const/4 v4, 0x2

    #@7e
    const/4 v6, 0x1

    #@7f
    const/4 v7, 0x0

    #@80
    move-object v2, p0

    #@81
    move v3, v1

    #@82
    move v5, v8

    #@83
    .line 3802
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@86
    const/4 v4, 0x1

    #@87
    const/4 v6, 0x2

    #@88
    move v3, v8

    #@89
    move v5, v1

    #@8a
    .line 3803
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@8d
    goto :goto_b4

    #@8e
    .line 3804
    :cond_8e
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@90
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@92
    if-eq v3, v2, :cond_a1

    #@94
    const/4 v4, 0x2

    #@95
    .line 3806
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@97
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    #@99
    const/4 v6, 0x2

    #@9a
    const/4 v7, 0x0

    #@9b
    move-object v2, p0

    #@9c
    move v3, v1

    #@9d
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@a0
    goto :goto_b4

    #@a1
    .line 3807
    :cond_a1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@a3
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@a5
    if-eq v1, v2, :cond_b4

    #@a7
    const/4 v5, 0x1

    #@a8
    .line 3809
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@aa
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    #@ac
    const/4 v7, 0x1

    #@ad
    const/4 v0, 0x0

    #@ae
    move-object v3, p0

    #@af
    move v4, v8

    #@b0
    move v8, v0

    #@b1
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@b4
    :cond_b4
    :goto_b4
    const/4 v0, 0x1

    #@b5
    .line 3811
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    #@b8
    const/4 v0, 0x2

    #@b9
    .line 3812
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    #@bc
    :cond_bc
    :goto_bc
    return-void
.end method

.method public removeFromVerticalChain(I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewId"
        }
    .end annotation

    #@0
    .line 3759
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_63

    #@c
    .line 3760
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@18
    if-nez v0, :cond_1b

    #@1a
    return-void

    #@1b
    .line 3764
    :cond_1b
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    #@1f
    .line 3765
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@21
    iget v8, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_28

    #@26
    if-eq v8, v2, :cond_63

    #@28
    :cond_28
    if-eq v1, v2, :cond_3d

    #@2a
    if-eq v8, v2, :cond_3d

    #@2c
    const/4 v4, 0x4

    #@2d
    const/4 v6, 0x3

    #@2e
    const/4 v7, 0x0

    #@2f
    move-object v2, p0

    #@30
    move v3, v1

    #@31
    move v5, v8

    #@32
    .line 3769
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@35
    const/4 v4, 0x3

    #@36
    const/4 v6, 0x4

    #@37
    move v3, v8

    #@38
    move v5, v1

    #@39
    .line 3770
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@3c
    goto :goto_63

    #@3d
    .line 3771
    :cond_3d
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3f
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@41
    if-eq v3, v2, :cond_50

    #@43
    const/4 v4, 0x4

    #@44
    .line 3773
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@46
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    #@48
    const/4 v6, 0x4

    #@49
    const/4 v7, 0x0

    #@4a
    move-object v2, p0

    #@4b
    move v3, v1

    #@4c
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@4f
    goto :goto_63

    #@50
    .line 3774
    :cond_50
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@52
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@54
    if-eq v1, v2, :cond_63

    #@56
    const/4 v5, 0x3

    #@57
    .line 3776
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@59
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    #@5b
    const/4 v7, 0x3

    #@5c
    const/4 v0, 0x0

    #@5d
    move-object v3, p0

    #@5e
    move v4, v8

    #@5f
    move v8, v0

    #@60
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #@63
    :cond_63
    :goto_63
    const/4 v0, 0x3

    #@64
    .line 3780
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    #@67
    const/4 v0, 0x4

    #@68
    .line 3781
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    #@6b
    return-void
.end method

.method public setAlpha(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "alpha"
        }
    .end annotation

    #@0
    .line 3282
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@8
    return-void
.end method

.method public setApplyElevation(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "apply"
        }
    .end annotation

    #@0
    .line 3303
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput-boolean p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@8
    return-void
.end method

.method public setBarrierType(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    #@0
    .line 3931
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3932
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    #@8
    return-void
.end method

.method public setColorValue(ILjava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "attributeName",
            "value"
        }
    .end annotation

    #@0
    .line 3944
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setColorValue(Ljava/lang/String;I)V
    invoke-static {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$1000(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;I)V

    #@7
    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "ratio"
        }
    .end annotation

    #@0
    .line 3211
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    #@8
    return-void
.end method

.method public setEditorAbsoluteX(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "position"
        }
    .end annotation

    #@0
    .line 3458
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    #@8
    return-void
.end method

.method public setEditorAbsoluteY(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "position"
        }
    .end annotation

    #@0
    .line 3465
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    #@8
    return-void
.end method

.method public setElevation(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "elevation"
        }
    .end annotation

    #@0
    .line 3315
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@8
    .line 3316
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@b
    move-result-object p1

    #@c
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@e
    const/4 p2, 0x1

    #@f
    iput-boolean p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@11
    return-void
.end method

.method public setFloatValue(ILjava/lang/String;F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "attributeName",
            "value"
        }
    .end annotation

    #@0
    .line 3948
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setFloatValue(Ljava/lang/String;F)V
    invoke-static {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$1100(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;F)V

    #@7
    return-void
.end method

.method public setForceId(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceId"
        }
    .end annotation

    #@0
    .line 5327
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    #@2
    return-void
.end method

.method public setGoneMargin(III)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "anchor",
            "value"
        }
    .end annotation

    #@0
    .line 3155
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    packed-switch p2, :pswitch_data_32

    #@7
    .line 3179
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string p2, "unknown constraint"

    #@b
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1

    #@f
    .line 3176
    :pswitch_f
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@11
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    #@13
    goto :goto_31

    #@14
    .line 3173
    :pswitch_14
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@16
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    #@18
    goto :goto_31

    #@19
    .line 3170
    :pswitch_19
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1b
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    #@1d
    goto :goto_31

    #@1e
    .line 3167
    :pswitch_1e
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@20
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    #@22
    goto :goto_31

    #@23
    .line 3164
    :pswitch_23
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@25
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    #@27
    goto :goto_31

    #@28
    .line 3161
    :pswitch_28
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2a
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    #@2c
    goto :goto_31

    #@2d
    .line 3158
    :pswitch_2d
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2f
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    #@31
    :goto_31
    return-void

    #@32
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "guidelineID",
            "margin"
        }
    .end annotation

    #@0
    .line 3874
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    #@8
    .line 3875
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@b
    move-result-object p2

    #@c
    iget-object p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e
    const/4 v0, -0x1

    #@f
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    #@11
    .line 3876
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@14
    move-result-object p1

    #@15
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@17
    const/high16 p2, -0x40800000    # -1.0f

    #@19
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    #@1b
    return-void
.end method

.method public setGuidelineEnd(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "guidelineID",
            "margin"
        }
    .end annotation

    #@0
    .line 3887
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    #@8
    .line 3888
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@b
    move-result-object p2

    #@c
    iget-object p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e
    const/4 v0, -0x1

    #@f
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    #@11
    .line 3889
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@14
    move-result-object p1

    #@15
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@17
    const/high16 p2, -0x40800000    # -1.0f

    #@19
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    #@1b
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "guidelineID",
            "ratio"
        }
    .end annotation

    #@0
    .line 3899
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    #@8
    .line 3900
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@b
    move-result-object p2

    #@c
    iget-object p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@e
    const/4 v0, -0x1

    #@f
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    #@11
    .line 3901
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@14
    move-result-object p1

    #@15
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@17
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    #@19
    return-void
.end method

.method public setHorizontalBias(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "bias"
        }
    .end annotation

    #@0
    .line 3190
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    #@8
    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "chainStyle"
        }
    .end annotation

    #@0
    .line 3674
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    #@8
    return-void
.end method

.method public setHorizontalWeight(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "weight"
        }
    .end annotation

    #@0
    .line 3643
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    #@8
    return-void
.end method

.method public setIntValue(ILjava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "attributeName",
            "value"
        }
    .end annotation

    #@0
    .line 3940
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setIntValue(Ljava/lang/String;I)V
    invoke-static {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$900(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;I)V

    #@7
    return-void
.end method

.method public setLayoutWrapBehavior(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "behavior"
        }
    .end annotation

    #@0
    if-ltz p2, :cond_d

    #@2
    const/4 v0, 0x3

    #@3
    if-gt p2, v0, :cond_d

    #@5
    .line 3473
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@8
    move-result-object p1

    #@9
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@b
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    #@d
    :cond_d
    return-void
.end method

.method public setMargin(III)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "anchor",
            "value"
        }
    .end annotation

    #@0
    .line 3119
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    packed-switch p2, :pswitch_data_32

    #@7
    .line 3143
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string p2, "unknown constraint"

    #@b
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1

    #@f
    .line 3140
    :pswitch_f
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@11
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    #@13
    goto :goto_31

    #@14
    .line 3137
    :pswitch_14
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@16
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    #@18
    goto :goto_31

    #@19
    .line 3134
    :pswitch_19
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1b
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    #@1d
    goto :goto_31

    #@1e
    .line 3131
    :pswitch_1e
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@20
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    #@22
    goto :goto_31

    #@23
    .line 3128
    :pswitch_23
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@25
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    #@27
    goto :goto_31

    #@28
    .line 3125
    :pswitch_28
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2a
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    #@2c
    goto :goto_31

    #@2d
    .line 3122
    :pswitch_2d
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2f
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    #@31
    :goto_31
    return-void

    #@32
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public varargs setReferencedIds(I[I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "referenced"
        }
    .end annotation

    #@0
    .line 3926
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3927
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@8
    return-void
.end method

.method public setRotation(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "rotation"
        }
    .end annotation

    #@0
    .line 3327
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@8
    return-void
.end method

.method public setRotationX(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "rotationX"
        }
    .end annotation

    #@0
    .line 3337
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@8
    return-void
.end method

.method public setRotationY(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "rotationY"
        }
    .end annotation

    #@0
    .line 3347
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@8
    return-void
.end method

.method public setScaleX(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "scaleX"
        }
    .end annotation

    #@0
    .line 3357
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@8
    return-void
.end method

.method public setScaleY(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "scaleY"
        }
    .end annotation

    #@0
    .line 3367
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@8
    return-void
.end method

.method public setStringValue(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "attributeName",
            "value"
        }
    .end annotation

    #@0
    .line 3952
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$1200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public setTransformPivot(IFF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "transformPivotX",
            "transformPivotY"
        }
    .end annotation

    #@0
    .line 3404
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3405
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@8
    .line 3406
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@a
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@c
    return-void
.end method

.method public setTransformPivotX(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "transformPivotX"
        }
    .end annotation

    #@0
    .line 3379
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@8
    return-void
.end method

.method public setTransformPivotY(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "transformPivotY"
        }
    .end annotation

    #@0
    .line 3391
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@8
    return-void
.end method

.method public setTranslation(IFF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "translationX",
            "translationY"
        }
    .end annotation

    #@0
    .line 3437
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    .line 3438
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@8
    .line 3439
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@a
    iput p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@c
    return-void
.end method

.method public setTranslationX(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "translationX"
        }
    .end annotation

    #@0
    .line 3416
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@8
    return-void
.end method

.method public setTranslationY(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "translationY"
        }
    .end annotation

    #@0
    .line 3426
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@8
    return-void
.end method

.method public setTranslationZ(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "translationZ"
        }
    .end annotation

    #@0
    .line 3450
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@8
    return-void
.end method

.method public setValidateOnParse(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validate"
        }
    .end annotation

    #@0
    .line 5337
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mValidate:Z

    #@2
    return-void
.end method

.method public setVerticalBias(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "bias"
        }
    .end annotation

    #@0
    .line 3200
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    #@8
    return-void
.end method

.method public setVerticalChainStyle(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "chainStyle"
        }
    .end annotation

    #@0
    .line 3694
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    #@8
    return-void
.end method

.method public setVerticalWeight(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "weight"
        }
    .end annotation

    #@0
    .line 3654
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    #@8
    return-void
.end method

.method public setVisibility(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "visibility"
        }
    .end annotation

    #@0
    .line 3221
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@8
    return-void
.end method

.method public setVisibilityMode(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "visibilityMode"
        }
    .end annotation

    #@0
    .line 3232
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3
    move-result-object p1

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@6
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@8
    return-void
.end method

.method public writeState(Ljava/io/Writer;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "layout",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-string v0, "\n---------------------------------------------\n"

    #@2
    .line 5411
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5
    and-int/lit8 v1, p3, 0x1

    #@7
    const/4 v2, 0x1

    #@8
    if-ne v1, v2, :cond_13

    #@a
    .line 5413
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$WriteXmlEngine;

    #@c
    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$WriteXmlEngine;-><init>(Landroidx/constraintlayout/widget/ConstraintSet;Ljava/io/Writer;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    #@f
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteXmlEngine;->writeLayout()V

    #@12
    goto :goto_1b

    #@13
    .line 5415
    :cond_13
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;

    #@15
    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;-><init>(Landroidx/constraintlayout/widget/ConstraintSet;Ljava/io/Writer;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    #@18
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeLayout()V

    #@1b
    .line 5417
    :goto_1b
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1e
    return-void
.end method

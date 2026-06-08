.class public Landroidx/constraintlayout/core/motion/MotionWidget;
.super Ljava/lang/Object;
.source "MotionWidget.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;,
        Landroidx/constraintlayout/core/motion/MotionWidget$Motion;
    }
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1

.field public static final GONE_UNSET:I = -0x80000000

.field private static final INTERNAL_MATCH_CONSTRAINT:I = -0x3

.field private static final INTERNAL_MATCH_PARENT:I = -0x1

.field private static final INTERNAL_WRAP_CONTENT:I = -0x2

.field private static final INTERNAL_WRAP_CONTENT_CONSTRAINED:I = -0x4

.field public static final INVISIBLE:I = 0x0

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final MATCH_PARENT:I = -0x1

.field public static final PARENT_ID:I = 0x0

.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VISIBILITY_MODE_IGNORE:I = 0x1

.field public static final VISIBILITY_MODE_NORMAL:I = 0x0

.field public static final VISIBLE:I = 0x4

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mProgress:F

.field mTransitionPathRotate:F

.field motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

.field propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

.field widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@a
    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@c
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@11
    .line 28
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    #@13
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    #@18
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .registers 3

    #@0
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@a
    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@c
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@11
    .line 28
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    #@13
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    #@18
    .line 124
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@1a
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public getAlpha()F
    .registers 2

    #@0
    .line 415
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->alpha:F

    #@4
    return v0
.end method

.method public getBottom()I
    .registers 2

    #@0
    .line 323
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@4
    return v0
.end method

.method public getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 3

    #@0
    .line 459
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getCustomAttributeNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttributeNames()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeight()I
    .registers 3

    #@0
    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@6
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 307
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_8

    #@7
    return v0

    #@8
    .line 311
    :cond_8
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->getId(Ljava/lang/String;)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public getLeft()I
    .registers 2

    #@0
    .line 319
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParent()Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    #@0
    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@4
    return v0
.end method

.method public getPivotY()F
    .registers 2

    #@0
    .line 411
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@4
    return v0
.end method

.method public getRight()I
    .registers 2

    #@0
    .line 327
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@4
    return v0
.end method

.method public getRotationX()F
    .registers 2

    #@0
    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@4
    return v0
.end method

.method public getRotationY()F
    .registers 2

    #@0
    .line 347
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@4
    return v0
.end method

.method public getRotationZ()F
    .registers 2

    #@0
    .line 355
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@4
    return v0
.end method

.method public getScaleX()F
    .registers 2

    #@0
    .line 387
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@4
    return v0
.end method

.method public getScaleY()F
    .registers 2

    #@0
    .line 395
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@4
    return v0
.end method

.method public getTop()I
    .registers 2

    #@0
    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@4
    return v0
.end method

.method public getTranslationX()F
    .registers 2

    #@0
    .line 363
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@4
    return v0
.end method

.method public getTranslationY()F
    .registers 2

    #@0
    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@4
    return v0
.end method

.method public getTranslationZ()F
    .registers 2

    #@0
    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@4
    return v0
.end method

.method public getValueAttributes(I)F
    .registers 2

    #@0
    packed-switch p1, :pswitch_data_44

    #@3
    :pswitch_3
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@5
    return p1

    #@6
    .line 299
    :pswitch_6
    iget p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    #@8
    return p1

    #@9
    .line 297
    :pswitch_9
    iget p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    #@b
    return p1

    #@c
    .line 295
    :pswitch_c
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@e
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@10
    return p1

    #@11
    .line 293
    :pswitch_11
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@13
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@15
    return p1

    #@16
    .line 291
    :pswitch_16
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@18
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@1a
    return p1

    #@1b
    .line 289
    :pswitch_1b
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@1d
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@1f
    return p1

    #@20
    .line 287
    :pswitch_20
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@22
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@24
    return p1

    #@25
    .line 285
    :pswitch_25
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@27
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@29
    return p1

    #@2a
    .line 283
    :pswitch_2a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2c
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@2e
    return p1

    #@2f
    .line 281
    :pswitch_2f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@31
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@33
    return p1

    #@34
    .line 279
    :pswitch_34
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@36
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@38
    return p1

    #@39
    .line 277
    :pswitch_39
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@3b
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@3d
    return p1

    #@3e
    .line 275
    :pswitch_3e
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@40
    iget p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@42
    return p1

    #@43
    nop

    #@44
    :pswitch_data_44
    .packed-switch 0x12f
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_3
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public getVisibility()I
    .registers 2

    #@0
    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    #@4
    return v0
.end method

.method public getWidgetFrame()Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 2

    #@0
    .line 435
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .registers 3

    #@0
    .line 427
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@6
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getX()I
    .registers 2

    #@0
    .line 419
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@4
    return v0
.end method

.method public getY()I
    .registers 2

    #@0
    .line 423
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@4
    return v0
.end method

.method public layout(IIII)V
    .registers 5

    #@0
    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setBounds(IIII)V

    #@3
    return-void
.end method

.method public setBounds(IIII)V
    .registers 8

    #@0
    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    if-nez v0, :cond_f

    #@4
    .line 115
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    #@6
    const/4 v1, 0x0

    #@7
    move-object v2, v1

    #@8
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@d
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@f
    .line 117
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@11
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@13
    .line 118
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@15
    iput p1, p2, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@17
    .line 119
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@19
    iput p3, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@1b
    .line 120
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@1d
    iput p4, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@1f
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .registers 5

    #@0
    .line 443
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    #@5
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .registers 5

    #@0
    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    #@5
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    #@0
    .line 455
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    #@5
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .registers 5

    #@0
    .line 451
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IZ)V

    #@5
    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V
    .registers 5

    #@0
    .line 463
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iget-object p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    #@4
    const/4 v1, 0x0

    #@5
    aget p2, p2, v1

    #@7
    const/16 v1, 0x385

    #@9
    invoke-virtual {v0, p1, v1, p2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    #@c
    return-void
.end method

.method public setPivotX(F)V
    .registers 3

    #@0
    .line 331
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@4
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    #@0
    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@4
    return-void
.end method

.method public setRotationX(F)V
    .registers 3

    #@0
    .line 343
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@4
    return-void
.end method

.method public setRotationY(F)V
    .registers 3

    #@0
    .line 351
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@4
    return-void
.end method

.method public setRotationZ(F)V
    .registers 3

    #@0
    .line 359
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@4
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    #@0
    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@4
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    #@0
    .line 399
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@4
    return-void
.end method

.method public setTranslationX(F)V
    .registers 3

    #@0
    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@4
    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    #@0
    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@4
    return-void
.end method

.method public setTranslationZ(F)V
    .registers 3

    #@0
    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@4
    return-void
.end method

.method public setValue(IF)Z
    .registers 4

    #@0
    .line 134
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    return p1

    #@8
    .line 138
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(IF)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public setValue(II)Z
    .registers 3

    #@0
    int-to-float p2, p2

    #@1
    .line 129
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 3

    #@0
    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(ILjava/lang/String;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public setValue(IZ)Z
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public setValueAttributes(IF)Z
    .registers 3

    #@0
    packed-switch p1, :pswitch_data_44

    #@3
    :pswitch_3
    const/4 p1, 0x0

    #@4
    return p1

    #@5
    .line 260
    :pswitch_5
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    #@7
    goto :goto_41

    #@8
    .line 257
    :pswitch_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    #@a
    goto :goto_41

    #@b
    .line 254
    :pswitch_b
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@d
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@f
    goto :goto_41

    #@10
    .line 251
    :pswitch_10
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@12
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@14
    goto :goto_41

    #@15
    .line 248
    :pswitch_15
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@17
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@19
    goto :goto_41

    #@1a
    .line 245
    :pswitch_1a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@1c
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@1e
    goto :goto_41

    #@1f
    .line 242
    :pswitch_1f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@21
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@23
    goto :goto_41

    #@24
    .line 239
    :pswitch_24
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@26
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@28
    goto :goto_41

    #@29
    .line 236
    :pswitch_29
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2b
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@2d
    goto :goto_41

    #@2e
    .line 233
    :pswitch_2e
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@30
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@32
    goto :goto_41

    #@33
    .line 230
    :pswitch_33
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@35
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@37
    goto :goto_41

    #@38
    .line 227
    :pswitch_38
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@3a
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@3c
    goto :goto_41

    #@3d
    .line 224
    :pswitch_3d
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@3f
    iput p2, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@41
    :goto_41
    const/4 p1, 0x1

    #@42
    return p1

    #@43
    nop

    #@44
    :pswitch_data_44
    .packed-switch 0x12f
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_3
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public setValueMotion(IF)Z
    .registers 3

    #@0
    packed-switch p1, :pswitch_data_16

    #@3
    const/4 p1, 0x0

    #@4
    return p1

    #@5
    .line 207
    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@7
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionPhase:F

    #@9
    goto :goto_13

    #@a
    .line 204
    :pswitch_a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@c
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    #@e
    goto :goto_13

    #@f
    .line 201
    :pswitch_f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@11
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mMotionStagger:F

    #@13
    :goto_13
    const/4 p1, 0x1

    #@14
    return p1

    #@15
    nop

    #@16
    :pswitch_data_16
    .packed-switch 0x258
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public setValueMotion(II)Z
    .registers 3

    #@0
    packed-switch p1, :pswitch_data_2e

    #@3
    const/4 p1, 0x0

    #@4
    return p1

    #@5
    .line 175
    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@7
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorID:I

    #@9
    goto :goto_2c

    #@a
    .line 172
    :pswitch_a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@c
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorType:I

    #@e
    goto :goto_2c

    #@f
    .line 169
    :pswitch_f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@11
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionSteps:I

    #@13
    goto :goto_2c

    #@14
    .line 166
    :pswitch_14
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@16
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPolarRelativeTo:I

    #@18
    goto :goto_2c

    #@19
    .line 163
    :pswitch_19
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@1b
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    #@1d
    goto :goto_2c

    #@1e
    .line 160
    :pswitch_1e
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@20
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    #@22
    goto :goto_2c

    #@23
    .line 157
    :pswitch_23
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@25
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    #@27
    goto :goto_2c

    #@28
    .line 154
    :pswitch_28
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@2a
    iput p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    #@2c
    :goto_2c
    const/4 p1, 0x1

    #@2d
    return p1

    #@2e
    :pswitch_data_2e
    .packed-switch 0x25d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public setValueMotion(ILjava/lang/String;)Z
    .registers 4

    #@0
    const/16 v0, 0x25b

    #@2
    if-eq p1, v0, :cond_f

    #@4
    const/16 v0, 0x25c

    #@6
    if-eq p1, v0, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    return p1

    #@a
    .line 190
    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@c
    iput-object p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    #@e
    goto :goto_13

    #@f
    .line 187
    :cond_f
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    #@11
    iput-object p2, p1, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    #@13
    :goto_13
    const/4 p1, 0x1

    #@14
    return p1
.end method

.method public setVisibility(I)V
    .registers 3

    #@0
    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    #@2
    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    #@4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@7
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@15
    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@21
    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2d
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

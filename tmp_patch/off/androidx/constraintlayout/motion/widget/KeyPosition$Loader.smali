.class Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
.super Ljava/lang/Object;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final CURVE_FIT:I = 0x4

.field private static final DRAW_PATH:I = 0x5

.field private static final FRAME_POSITION:I = 0x2

.field private static final PATH_MOTION_ARC:I = 0xa

.field private static final PERCENT_HEIGHT:I = 0xc

.field private static final PERCENT_WIDTH:I = 0xb

.field private static final PERCENT_X:I = 0x6

.field private static final PERCENT_Y:I = 0x7

.field private static final SIZE_PERCENT:I = 0x8

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TYPE:I = 0x9

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 269
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7
    .line 272
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_motionTarget:I

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@d
    .line 273
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_framePosition:I

    #@11
    const/4 v2, 0x2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@15
    .line 274
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_transitionEasing:I

    #@19
    const/4 v2, 0x3

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@1d
    .line 275
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@1f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_curveFit:I

    #@21
    const/4 v2, 0x4

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@25
    .line 276
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@27
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_drawPath:I

    #@29
    const/4 v2, 0x5

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@2d
    .line 277
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@2f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentX:I

    #@31
    const/4 v2, 0x6

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@35
    .line 278
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@37
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentY:I

    #@39
    const/4 v2, 0x7

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3d
    .line 279
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@3f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_keyPositionType:I

    #@41
    const/16 v2, 0x9

    #@43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@46
    .line 280
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@48
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_sizePercent:I

    #@4a
    const/16 v2, 0x8

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4f
    .line 281
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@51
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentWidth:I

    #@53
    const/16 v2, 0xb

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@58
    .line 282
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@5a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentHeight:I

    #@5c
    const/16 v2, 0xc

    #@5e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@61
    .line 283
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@63
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_pathMotionArc:I

    #@65
    const/16 v2, 0xa

    #@67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@6a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .registers 2

    #@0
    .line 255
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    #@3
    return-void
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "a"
        }
    .end annotation

    #@0
    .line 287
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    const-string v3, "KeyPosition"

    #@8
    const/4 v4, -0x1

    #@9
    if-ge v2, v0, :cond_ef

    #@b
    .line 289
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@e
    move-result v5

    #@f
    .line 290
    sget-object v6, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@11
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    #@14
    move-result v6

    #@15
    const/4 v7, 0x3

    #@16
    packed-switch v6, :pswitch_data_fa

    #@19
    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    const-string v6, "unused attribute 0x"

    #@1d
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string v6, "   "

    #@2a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    sget-object v6, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@30
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    #@33
    move-result v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto/16 :goto_eb

    #@41
    .line 337
    :pswitch_41
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@43
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@46
    move-result v3

    #@47
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@49
    goto/16 :goto_eb

    #@4b
    .line 334
    :pswitch_4b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@4d
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@50
    move-result v3

    #@51
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@53
    goto/16 :goto_eb

    #@55
    .line 316
    :pswitch_55
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@57
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5a
    move-result v3

    #@5b
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    #@5d
    goto/16 :goto_eb

    #@5f
    .line 340
    :pswitch_5f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@61
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@64
    move-result v3

    #@65
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    #@67
    goto/16 :goto_eb

    #@69
    .line 331
    :pswitch_69
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@6b
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@6e
    move-result v3

    #@6f
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    #@71
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    #@73
    goto/16 :goto_eb

    #@75
    .line 328
    :pswitch_75
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@77
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@7a
    move-result v3

    #@7b
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    #@7d
    goto/16 :goto_eb

    #@7f
    .line 325
    :pswitch_7f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@81
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@84
    move-result v3

    #@85
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    #@87
    goto :goto_eb

    #@88
    .line 322
    :pswitch_88
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@8a
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8d
    move-result v3

    #@8e
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    #@90
    goto :goto_eb

    #@91
    .line 319
    :pswitch_91
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    #@93
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@96
    move-result v3

    #@97
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    #@99
    goto :goto_eb

    #@9a
    .line 309
    :pswitch_9a
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@9d
    move-result-object v3

    #@9e
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@a0
    if-ne v3, v7, :cond_a9

    #@a2
    .line 310
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@a8
    goto :goto_eb

    #@a9
    .line 312
    :cond_a9
    sget-object v3, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    #@ab
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@ae
    move-result v4

    #@af
    aget-object v3, v3, v4

    #@b1
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    #@b3
    goto :goto_eb

    #@b4
    .line 306
    :pswitch_b4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    #@b6
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b9
    move-result v3

    #@ba
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    #@bc
    goto :goto_eb

    #@bd
    .line 292
    :pswitch_bd
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@bf
    if-eqz v3, :cond_d4

    #@c1
    .line 293
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    #@c3
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c6
    move-result v3

    #@c7
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    #@c9
    .line 294
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    #@cb
    if-ne v3, v4, :cond_eb

    #@cd
    .line 295
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

    #@d3
    goto :goto_eb

    #@d4
    .line 298
    :cond_d4
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@d7
    move-result-object v3

    #@d8
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@da
    if-ne v3, v7, :cond_e3

    #@dc
    .line 299
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@df
    move-result-object v3

    #@e0
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

    #@e2
    goto :goto_eb

    #@e3
    .line 301
    :cond_e3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    #@e5
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e8
    move-result v3

    #@e9
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    #@eb
    :cond_eb
    :goto_eb
    add-int/lit8 v2, v2, 0x1

    #@ed
    goto/16 :goto_6

    #@ef
    .line 348
    :cond_ef
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    #@f1
    if-ne p0, v4, :cond_f8

    #@f3
    const-string p0, "no frame position"

    #@f5
    .line 349
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    :cond_f8
    return-void

    #@f9
    nop

    #@fa
    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_b4
        :pswitch_9a
        :pswitch_91
        :pswitch_88
        :pswitch_7f
        :pswitch_75
        :pswitch_69
        :pswitch_5f
        :pswitch_55
        :pswitch_4b
        :pswitch_41
    .end packed-switch
.end method

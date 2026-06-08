.class Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;
.super Ljava/lang/Object;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x1

.field private static final ANDROID_ELEVATION:I = 0x2

.field private static final ANDROID_ROTATION:I = 0x4

.field private static final ANDROID_ROTATION_X:I = 0x5

.field private static final ANDROID_ROTATION_Y:I = 0x6

.field private static final ANDROID_SCALE_X:I = 0x7

.field private static final ANDROID_SCALE_Y:I = 0xe

.field private static final ANDROID_TRANSLATION_X:I = 0xf

.field private static final ANDROID_TRANSLATION_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_Z:I = 0x11

.field private static final CURVE_FIT:I = 0xd

.field private static final FRAME_POSITION:I = 0xc

.field private static final PROGRESS:I = 0x12

.field private static final TARGET_ID:I = 0xa

.field private static final TRANSITION_EASING:I = 0x9

.field private static final TRANSITION_PATH_ROTATE:I = 0x8

.field private static final WAVE_OFFSET:I = 0x15

.field private static final WAVE_PERIOD:I = 0x14

.field private static final WAVE_SHAPE:I = 0x13

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 353
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7
    .line 356
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_alpha:I

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@d
    .line 357
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_elevation:I

    #@11
    const/4 v2, 0x2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@15
    .line 358
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_rotation:I

    #@19
    const/4 v2, 0x4

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@1d
    .line 359
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@1f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_rotationX:I

    #@21
    const/4 v2, 0x5

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@25
    .line 360
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@27
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_rotationY:I

    #@29
    const/4 v2, 0x6

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@2d
    .line 361
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@2f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_scaleX:I

    #@31
    const/4 v2, 0x7

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@35
    .line 362
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@37
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_transitionPathRotate:I

    #@39
    const/16 v2, 0x8

    #@3b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3e
    .line 363
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@40
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_transitionEasing:I

    #@42
    const/16 v2, 0x9

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@47
    .line 364
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@49
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_motionTarget:I

    #@4b
    const/16 v2, 0xa

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@50
    .line 365
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@52
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_framePosition:I

    #@54
    const/16 v2, 0xc

    #@56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@59
    .line 366
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@5b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_curveFit:I

    #@5d
    const/16 v2, 0xd

    #@5f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@62
    .line 367
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@64
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_scaleY:I

    #@66
    const/16 v2, 0xe

    #@68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@6b
    .line 368
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@6d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_translationX:I

    #@6f
    const/16 v2, 0xf

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@74
    .line 369
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@76
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_translationY:I

    #@78
    const/16 v2, 0x10

    #@7a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@7d
    .line 370
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_android_translationZ:I

    #@81
    const/16 v2, 0x11

    #@83
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@86
    .line 371
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@88
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_motionProgress:I

    #@8a
    const/16 v2, 0x12

    #@8c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@8f
    .line 372
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@91
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_wavePeriod:I

    #@93
    const/16 v2, 0x14

    #@95
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@98
    .line 373
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@9a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_waveOffset:I

    #@9c
    const/16 v2, 0x15

    #@9e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@a1
    .line 374
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@a3
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle_waveShape:I

    #@a5
    const/16 v2, 0x13

    #@a7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@aa
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static read(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Landroid/content/res/TypedArray;)V
    .registers 7
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
    .line 378
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_179

    #@7
    .line 380
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@a
    move-result v2

    #@b
    .line 381
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@d
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@10
    move-result v3

    #@11
    const/4 v4, 0x3

    #@12
    packed-switch v3, :pswitch_data_17a

    #@15
    .line 463
    :pswitch_15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    const-string v4, "unused attribute 0x"

    #@19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string v4, "   "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@2c
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@2f
    move-result v2

    #@30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    const-string v3, "KeyTimeCycle"

    #@3a
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    goto/16 :goto_175

    #@3f
    .line 423
    :pswitch_3f
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@42
    move-result-object v3

    #@43
    .line 424
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@45
    const/4 v4, 0x5

    #@46
    if-ne v3, v4, :cond_55

    #@48
    .line 425
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@4b
    move-result v3

    #@4c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@4f
    move-result v2

    #@50
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@53
    goto/16 :goto_175

    #@55
    .line 427
    :cond_55
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@58
    move-result v3

    #@59
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5c
    move-result v2

    #@5d
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@60
    goto/16 :goto_175

    #@62
    .line 420
    :pswitch_62
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@65
    move-result v3

    #@66
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@69
    move-result v2

    #@6a
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@6d
    goto/16 :goto_175

    #@6f
    .line 412
    :pswitch_6f
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@72
    move-result-object v3

    #@73
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@75
    if-ne v3, v4, :cond_84

    #@77
    .line 413
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;

    #@7e
    const/4 v2, 0x7

    #@7f
    .line 414
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I

    #@82
    goto/16 :goto_175

    #@84
    .line 416
    :cond_84
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I

    #@87
    move-result v3

    #@88
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8b
    move-result v2

    #@8c
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I

    #@8f
    goto/16 :goto_175

    #@91
    .line 460
    :pswitch_91
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@94
    move-result v3

    #@95
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@98
    move-result v2

    #@99
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@9c
    goto/16 :goto_175

    #@9e
    .line 456
    :pswitch_9e
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@a1
    move-result v3

    #@a2
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@a5
    move-result v2

    #@a6
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@a9
    goto/16 :goto_175

    #@ab
    .line 452
    :pswitch_ab
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@ae
    move-result v3

    #@af
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@b2
    move-result v2

    #@b3
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@b6
    goto/16 :goto_175

    #@b8
    .line 449
    :pswitch_b8
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1400(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@bb
    move-result v3

    #@bc
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@bf
    move-result v2

    #@c0
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@c3
    goto/16 :goto_175

    #@c5
    .line 443
    :pswitch_c5
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@c8
    move-result v3

    #@c9
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@cc
    move-result v2

    #@cd
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@d0
    goto/16 :goto_175

    #@d2
    .line 409
    :pswitch_d2
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I

    #@d5
    move-result v3

    #@d6
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@d9
    move-result v2

    #@da
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I

    #@dd
    goto/16 :goto_175

    #@df
    .line 397
    :pswitch_df
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@e1
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e4
    move-result v2

    #@e5
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@e7
    goto/16 :goto_175

    #@e9
    .line 383
    :pswitch_e9
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@eb
    if-eqz v3, :cond_102

    #@ed
    .line 384
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTargetId:I

    #@ef
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f2
    move-result v3

    #@f3
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTargetId:I

    #@f5
    .line 385
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTargetId:I

    #@f7
    const/4 v4, -0x1

    #@f8
    if-ne v3, v4, :cond_175

    #@fa
    .line 386
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@fd
    move-result-object v2

    #@fe
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTargetString:Ljava/lang/String;

    #@100
    goto/16 :goto_175

    #@102
    .line 389
    :cond_102
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@105
    move-result-object v3

    #@106
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@108
    if-ne v3, v4, :cond_111

    #@10a
    .line 390
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@10d
    move-result-object v2

    #@10e
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTargetString:Ljava/lang/String;

    #@110
    goto :goto_175

    #@111
    .line 392
    :cond_111
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTargetId:I

    #@113
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@116
    move-result v2

    #@117
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTargetId:I

    #@119
    goto :goto_175

    #@11a
    .line 440
    :pswitch_11a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@11d
    move-result-object v2

    #@11e
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;

    #@121
    goto :goto_175

    #@122
    .line 446
    :pswitch_122
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@125
    move-result v3

    #@126
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@129
    move-result v2

    #@12a
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@12d
    goto :goto_175

    #@12e
    .line 431
    :pswitch_12e
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$800(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@131
    move-result v3

    #@132
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@135
    move-result v2

    #@136
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$802(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@139
    goto :goto_175

    #@13a
    .line 437
    :pswitch_13a
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@13d
    move-result v3

    #@13e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@141
    move-result v2

    #@142
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$1002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@145
    goto :goto_175

    #@146
    .line 434
    :pswitch_146
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$900(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@149
    move-result v3

    #@14a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@14d
    move-result v2

    #@14e
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$902(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@151
    goto :goto_175

    #@152
    .line 406
    :pswitch_152
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@155
    move-result v3

    #@156
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@159
    move-result v2

    #@15a
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@15d
    goto :goto_175

    #@15e
    .line 403
    :pswitch_15e
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$100(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@161
    move-result v3

    #@162
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@165
    move-result v2

    #@166
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@169
    goto :goto_175

    #@16a
    .line 400
    :pswitch_16a
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F

    #@16d
    move-result v3

    #@16e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@171
    move-result v2

    #@172
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->access$002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F

    #@175
    :cond_175
    :goto_175
    add-int/lit8 v1, v1, 0x1

    #@177
    goto/16 :goto_5

    #@179
    :cond_179
    return-void

    #@17a
    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_16a
        :pswitch_15e
        :pswitch_15
        :pswitch_152
        :pswitch_146
        :pswitch_13a
        :pswitch_12e
        :pswitch_122
        :pswitch_11a
        :pswitch_e9
        :pswitch_15
        :pswitch_df
        :pswitch_d2
        :pswitch_c5
        :pswitch_b8
        :pswitch_ab
        :pswitch_9e
        :pswitch_91
        :pswitch_6f
        :pswitch_62
        :pswitch_3f
    .end packed-switch
.end method

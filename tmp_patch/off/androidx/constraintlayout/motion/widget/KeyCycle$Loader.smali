.class Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;
.super Ljava/lang/Object;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x9

.field private static final ANDROID_ELEVATION:I = 0xa

.field private static final ANDROID_ROTATION:I = 0xb

.field private static final ANDROID_ROTATION_X:I = 0xc

.field private static final ANDROID_ROTATION_Y:I = 0xd

.field private static final ANDROID_SCALE_X:I = 0xf

.field private static final ANDROID_SCALE_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_X:I = 0x11

.field private static final ANDROID_TRANSLATION_Y:I = 0x12

.field private static final ANDROID_TRANSLATION_Z:I = 0x13

.field private static final CURVE_FIT:I = 0x4

.field private static final FRAME_POSITION:I = 0x2

.field private static final PROGRESS:I = 0x14

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TRANSITION_PATH_ROTATE:I = 0xe

.field private static final WAVE_OFFSET:I = 0x7

.field private static final WAVE_PERIOD:I = 0x6

.field private static final WAVE_PHASE:I = 0x15

.field private static final WAVE_SHAPE:I = 0x5

.field private static final WAVE_VARIES_BY:I = 0x8

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 281
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7
    .line 284
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_motionTarget:I

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@d
    .line 285
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_framePosition:I

    #@11
    const/4 v2, 0x2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@15
    .line 286
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_transitionEasing:I

    #@19
    const/4 v2, 0x3

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@1d
    .line 287
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@1f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_curveFit:I

    #@21
    const/4 v2, 0x4

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@25
    .line 288
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@27
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveShape:I

    #@29
    const/4 v2, 0x5

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@2d
    .line 289
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@2f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_wavePeriod:I

    #@31
    const/4 v2, 0x6

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@35
    .line 290
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@37
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveOffset:I

    #@39
    const/4 v2, 0x7

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3d
    .line 291
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@3f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveVariesBy:I

    #@41
    const/16 v2, 0x8

    #@43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@46
    .line 292
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@48
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_alpha:I

    #@4a
    const/16 v2, 0x9

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4f
    .line 293
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@51
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_elevation:I

    #@53
    const/16 v2, 0xa

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@58
    .line 294
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@5a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotation:I

    #@5c
    const/16 v2, 0xb

    #@5e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@61
    .line 295
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@63
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotationX:I

    #@65
    const/16 v2, 0xc

    #@67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@6a
    .line 296
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@6c
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotationY:I

    #@6e
    const/16 v2, 0xd

    #@70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@73
    .line 297
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@75
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_transitionPathRotate:I

    #@77
    const/16 v2, 0xe

    #@79
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@7c
    .line 298
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_scaleX:I

    #@80
    const/16 v2, 0xf

    #@82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@85
    .line 299
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@87
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_scaleY:I

    #@89
    const/16 v2, 0x10

    #@8b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@8e
    .line 300
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@90
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationX:I

    #@92
    const/16 v2, 0x11

    #@94
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@97
    .line 301
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@99
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationY:I

    #@9b
    const/16 v2, 0x12

    #@9d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@a0
    .line 302
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@a2
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationZ:I

    #@a4
    const/16 v2, 0x13

    #@a6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@a9
    .line 303
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@ab
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_motionProgress:I

    #@ad
    const/16 v2, 0x14

    #@af
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@b2
    .line 304
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@b4
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_wavePhase:I

    #@b6
    const/16 v2, 0x15

    #@b8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@bb
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V
    .registers 2

    #@0
    .line 259
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V

    #@3
    return-void
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V
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
    .line 308
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_198

    #@7
    .line 310
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@a
    move-result v2

    #@b
    .line 311
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@d
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@10
    move-result v3

    #@11
    const/4 v4, 0x3

    #@12
    packed-switch v3, :pswitch_data_19a

    #@15
    .line 399
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
    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

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
    const-string v3, "KeyCycle"

    #@3a
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    goto/16 :goto_194

    #@3f
    .line 396
    :pswitch_3f
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$2000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@42
    move-result v3

    #@43
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@46
    move-result v2

    #@47
    const/high16 v3, 0x43b40000    # 360.0f

    #@49
    div-float/2addr v2, v3

    #@4a
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$2002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@4d
    goto/16 :goto_194

    #@4f
    .line 393
    :pswitch_4f
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@52
    move-result v3

    #@53
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@56
    move-result v2

    #@57
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@5a
    goto/16 :goto_194

    #@5c
    .line 389
    :pswitch_5c
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@5f
    move-result v3

    #@60
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@63
    move-result v2

    #@64
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@67
    goto/16 :goto_194

    #@69
    .line 385
    :pswitch_69
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1700(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@6c
    move-result v3

    #@6d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@70
    move-result v2

    #@71
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1702(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@74
    goto/16 :goto_194

    #@76
    .line 382
    :pswitch_76
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@79
    move-result v3

    #@7a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@7d
    move-result v2

    #@7e
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@81
    goto/16 :goto_194

    #@83
    .line 379
    :pswitch_83
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@86
    move-result v3

    #@87
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@8a
    move-result v2

    #@8b
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@8e
    goto/16 :goto_194

    #@90
    .line 376
    :pswitch_90
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1400(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@93
    move-result v3

    #@94
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@97
    move-result v2

    #@98
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1402(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@9b
    goto/16 :goto_194

    #@9d
    .line 373
    :pswitch_9d
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1300(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@a0
    move-result v3

    #@a1
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@a4
    move-result v2

    #@a5
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1302(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@a8
    goto/16 :goto_194

    #@aa
    .line 370
    :pswitch_aa
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1200(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@ad
    move-result v3

    #@ae
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@b1
    move-result v2

    #@b2
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1202(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@b5
    goto/16 :goto_194

    #@b7
    .line 367
    :pswitch_b7
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1100(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@ba
    move-result v3

    #@bb
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@be
    move-result v2

    #@bf
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1102(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@c2
    goto/16 :goto_194

    #@c4
    .line 364
    :pswitch_c4
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@c7
    move-result v3

    #@c8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@cb
    move-result v2

    #@cc
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@cf
    goto/16 :goto_194

    #@d1
    .line 361
    :pswitch_d1
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@d4
    move-result v3

    #@d5
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@d8
    move-result v2

    #@d9
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@dc
    goto/16 :goto_194

    #@de
    .line 358
    :pswitch_de
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@e1
    move-result v3

    #@e2
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@e5
    move-result v2

    #@e6
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@e9
    goto/16 :goto_194

    #@eb
    .line 355
    :pswitch_eb
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$700(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    #@ee
    move-result v3

    #@ef
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f2
    move-result v2

    #@f3
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$702(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    #@f6
    goto/16 :goto_194

    #@f8
    .line 347
    :pswitch_f8
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@fb
    move-result-object v3

    #@fc
    .line 348
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@fe
    const/4 v4, 0x5

    #@ff
    if-ne v3, v4, :cond_10e

    #@101
    .line 349
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@104
    move-result v3

    #@105
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@108
    move-result v2

    #@109
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@10c
    goto/16 :goto_194

    #@10e
    .line 351
    :cond_10e
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@111
    move-result v3

    #@112
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@115
    move-result v2

    #@116
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@119
    goto/16 :goto_194

    #@11b
    .line 344
    :pswitch_11b
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    #@11e
    move-result v3

    #@11f
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@122
    move-result v2

    #@123
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    #@126
    goto/16 :goto_194

    #@128
    .line 336
    :pswitch_128
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@12b
    move-result-object v3

    #@12c
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@12e
    if-ne v3, v4, :cond_13c

    #@130
    .line 337
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@133
    move-result-object v2

    #@134
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$302(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;

    #@137
    const/4 v2, 0x7

    #@138
    .line 338
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    #@13b
    goto :goto_194

    #@13c
    .line 340
    :cond_13c
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$400(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    #@13f
    move-result v3

    #@140
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@143
    move-result v2

    #@144
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    #@147
    goto :goto_194

    #@148
    .line 333
    :pswitch_148
    # getter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$200(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    #@14b
    move-result v3

    #@14c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@14f
    move-result v2

    #@150
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$202(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    #@153
    goto :goto_194

    #@154
    .line 330
    :pswitch_154
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@157
    move-result-object v2

    #@158
    # setter for: Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$102(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;

    #@15b
    goto :goto_194

    #@15c
    .line 327
    :pswitch_15c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@15e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@161
    move-result v2

    #@162
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@164
    goto :goto_194

    #@165
    .line 313
    :pswitch_165
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@167
    if-eqz v3, :cond_17d

    #@169
    .line 314
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    #@16b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@16e
    move-result v3

    #@16f
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    #@171
    .line 315
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    #@173
    const/4 v4, -0x1

    #@174
    if-ne v3, v4, :cond_194

    #@176
    .line 316
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@179
    move-result-object v2

    #@17a
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetString:Ljava/lang/String;

    #@17c
    goto :goto_194

    #@17d
    .line 319
    :cond_17d
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@180
    move-result-object v3

    #@181
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@183
    if-ne v3, v4, :cond_18c

    #@185
    .line 320
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@188
    move-result-object v2

    #@189
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetString:Ljava/lang/String;

    #@18b
    goto :goto_194

    #@18c
    .line 322
    :cond_18c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    #@18e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@191
    move-result v2

    #@192
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTargetId:I

    #@194
    :cond_194
    :goto_194
    add-int/lit8 v1, v1, 0x1

    #@196
    goto/16 :goto_5

    #@198
    :cond_198
    return-void

    #@199
    nop

    #@19a
    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_165
        :pswitch_15c
        :pswitch_154
        :pswitch_148
        :pswitch_128
        :pswitch_11b
        :pswitch_f8
        :pswitch_eb
        :pswitch_de
        :pswitch_d1
        :pswitch_c4
        :pswitch_b7
        :pswitch_aa
        :pswitch_9d
        :pswitch_90
        :pswitch_83
        :pswitch_76
        :pswitch_69
        :pswitch_5c
        :pswitch_4f
        :pswitch_3f
    .end packed-switch
.end method

.class Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;
.super Ljava/lang/Object;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x1

.field private static final ANDROID_ELEVATION:I = 0x2

.field private static final ANDROID_PIVOT_X:I = 0x13

.field private static final ANDROID_PIVOT_Y:I = 0x14

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

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 363
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7
    .line 366
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_alpha:I

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@d
    .line 367
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_elevation:I

    #@11
    const/4 v2, 0x2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@15
    .line 368
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_rotation:I

    #@19
    const/4 v2, 0x4

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@1d
    .line 369
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@1f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_rotationX:I

    #@21
    const/4 v2, 0x5

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@25
    .line 370
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@27
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_rotationY:I

    #@29
    const/4 v2, 0x6

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@2d
    .line 371
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@2f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_transformPivotX:I

    #@31
    const/16 v2, 0x13

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@36
    .line 372
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@38
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_transformPivotY:I

    #@3a
    const/16 v2, 0x14

    #@3c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3f
    .line 373
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@41
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_scaleX:I

    #@43
    const/4 v2, 0x7

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@47
    .line 374
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@49
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_transitionPathRotate:I

    #@4b
    const/16 v2, 0x8

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@50
    .line 375
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@52
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_transitionEasing:I

    #@54
    const/16 v2, 0x9

    #@56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@59
    .line 376
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@5b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_motionTarget:I

    #@5d
    const/16 v2, 0xa

    #@5f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@62
    .line 377
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@64
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_framePosition:I

    #@66
    const/16 v2, 0xc

    #@68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@6b
    .line 378
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@6d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_curveFit:I

    #@6f
    const/16 v2, 0xd

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@74
    .line 379
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@76
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_scaleY:I

    #@78
    const/16 v2, 0xe

    #@7a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@7d
    .line 380
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_translationX:I

    #@81
    const/16 v2, 0xf

    #@83
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@86
    .line 381
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@88
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_translationY:I

    #@8a
    const/16 v2, 0x10

    #@8c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@8f
    .line 382
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@91
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_translationZ:I

    #@93
    const/16 v2, 0x11

    #@95
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@98
    .line 383
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@9a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_motionProgress:I

    #@9c
    const/16 v2, 0x12

    #@9e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@a1
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static read(Landroidx/constraintlayout/motion/widget/KeyAttributes;Landroid/content/res/TypedArray;)V
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
    .line 387
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_141

    #@7
    .line 389
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@a
    move-result v2

    #@b
    .line 390
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@d
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@10
    move-result v3

    #@11
    packed-switch v3, :pswitch_data_142

    #@14
    .line 459
    :pswitch_14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    const-string v4, "unused attribute 0x"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string v4, "   "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@2b
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@2e
    move-result v2

    #@2f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    const-string v3, "KeyAttribute"

    #@39
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto/16 :goto_13d

    #@3e
    .line 433
    :pswitch_3e
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$800(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@41
    move-result v3

    #@42
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@45
    move-result v2

    #@46
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$802(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@49
    goto/16 :goto_13d

    #@4b
    .line 430
    :pswitch_4b
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$700(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@4e
    move-result v3

    #@4f
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@52
    move-result v2

    #@53
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$702(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@56
    goto/16 :goto_13d

    #@58
    .line 456
    :pswitch_58
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@5b
    move-result v3

    #@5c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5f
    move-result v2

    #@60
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@63
    goto/16 :goto_13d

    #@65
    .line 452
    :pswitch_65
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@68
    move-result v3

    #@69
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@6c
    move-result v2

    #@6d
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@70
    goto/16 :goto_13d

    #@72
    .line 448
    :pswitch_72
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@75
    move-result v3

    #@76
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@79
    move-result v2

    #@7a
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1302(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@7d
    goto/16 :goto_13d

    #@7f
    .line 445
    :pswitch_7f
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@82
    move-result v3

    #@83
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@86
    move-result v2

    #@87
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@8a
    goto/16 :goto_13d

    #@8c
    .line 439
    :pswitch_8c
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@8f
    move-result v3

    #@90
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@93
    move-result v2

    #@94
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@97
    goto/16 :goto_13d

    #@99
    .line 418
    :pswitch_99
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)I

    #@9c
    move-result v3

    #@9d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@a0
    move-result v2

    #@a1
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$302(Landroidx/constraintlayout/motion/widget/KeyAttributes;I)I

    #@a4
    goto/16 :goto_13d

    #@a6
    .line 406
    :pswitch_a6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@a8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ab
    move-result v2

    #@ac
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@ae
    goto/16 :goto_13d

    #@b0
    .line 392
    :pswitch_b0
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@b2
    if-eqz v3, :cond_c9

    #@b4
    .line 393
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTargetId:I

    #@b6
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b9
    move-result v3

    #@ba
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTargetId:I

    #@bc
    .line 394
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTargetId:I

    #@be
    const/4 v4, -0x1

    #@bf
    if-ne v3, v4, :cond_13d

    #@c1
    .line 395
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTargetString:Ljava/lang/String;

    #@c7
    goto/16 :goto_13d

    #@c9
    .line 398
    :cond_c9
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@cc
    move-result-object v3

    #@cd
    iget v3, v3, Landroid/util/TypedValue;->type:I

    #@cf
    const/4 v4, 0x3

    #@d0
    if-ne v3, v4, :cond_d9

    #@d2
    .line 399
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d5
    move-result-object v2

    #@d6
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTargetString:Ljava/lang/String;

    #@d8
    goto :goto_13d

    #@d9
    .line 401
    :cond_d9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTargetId:I

    #@db
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@de
    move-result v2

    #@df
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTargetId:I

    #@e1
    goto :goto_13d

    #@e2
    .line 436
    :pswitch_e2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$902(Landroidx/constraintlayout/motion/widget/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;

    #@e9
    goto :goto_13d

    #@ea
    .line 442
    :pswitch_ea
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@ed
    move-result v3

    #@ee
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@f1
    move-result v2

    #@f2
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@f5
    goto :goto_13d

    #@f6
    .line 421
    :pswitch_f6
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@f9
    move-result v3

    #@fa
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@fd
    move-result v2

    #@fe
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@101
    goto :goto_13d

    #@102
    .line 427
    :pswitch_102
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$600(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@105
    move-result v3

    #@106
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@109
    move-result v2

    #@10a
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$602(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@10d
    goto :goto_13d

    #@10e
    .line 424
    :pswitch_10e
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@111
    move-result v3

    #@112
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@115
    move-result v2

    #@116
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@119
    goto :goto_13d

    #@11a
    .line 415
    :pswitch_11a
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@11d
    move-result v3

    #@11e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@121
    move-result v2

    #@122
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@125
    goto :goto_13d

    #@126
    .line 412
    :pswitch_126
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@129
    move-result v3

    #@12a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@12d
    move-result v2

    #@12e
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@131
    goto :goto_13d

    #@132
    .line 409
    :pswitch_132
    # getter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    #@135
    move-result v3

    #@136
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@139
    move-result v2

    #@13a
    # setter for: Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    #@13d
    :cond_13d
    :goto_13d
    add-int/lit8 v1, v1, 0x1

    #@13f
    goto/16 :goto_5

    #@141
    :cond_141
    return-void

    #@142
    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_132
        :pswitch_126
        :pswitch_14
        :pswitch_11a
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_e2
        :pswitch_b0
        :pswitch_14
        :pswitch_a6
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_72
        :pswitch_65
        :pswitch_58
        :pswitch_4b
        :pswitch_3e
    .end packed-switch
.end method

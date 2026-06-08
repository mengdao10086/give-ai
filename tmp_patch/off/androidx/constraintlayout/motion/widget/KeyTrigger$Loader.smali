.class Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;
.super Ljava/lang/Object;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final COLLISION:I = 0x9

.field private static final CROSS:I = 0x4

.field private static final FRAME_POS:I = 0x8

.field private static final NEGATIVE_CROSS:I = 0x1

.field private static final POSITIVE_CROSS:I = 0x2

.field private static final POST_LAYOUT:I = 0xa

.field private static final TARGET_ID:I = 0x7

.field private static final TRIGGER_ID:I = 0x6

.field private static final TRIGGER_RECEIVER:I = 0xb

.field private static final TRIGGER_SLACK:I = 0x5

.field private static final VT_CROSS:I = 0xc

.field private static final VT_NEGATIVE_CROSS:I = 0xd

.field private static final VT_POSITIVE_CROSS:I = 0xe

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 347
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@7
    .line 350
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_framePosition:I

    #@9
    const/16 v2, 0x8

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@e
    .line 351
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@10
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_onCross:I

    #@12
    const/4 v2, 0x4

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@16
    .line 352
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@18
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_onNegativeCross:I

    #@1a
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@1e
    .line 353
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@20
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_onPositiveCross:I

    #@22
    const/4 v2, 0x2

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@26
    .line 354
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@28
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_motionTarget:I

    #@2a
    const/4 v2, 0x7

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@2e
    .line 355
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@30
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_triggerId:I

    #@32
    const/4 v2, 0x6

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@36
    .line 356
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@38
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_triggerSlack:I

    #@3a
    const/4 v2, 0x5

    #@3b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3e
    .line 357
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@40
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_motion_triggerOnCollision:I

    #@42
    const/16 v2, 0x9

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@47
    .line 358
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@49
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_motion_postLayoutCollision:I

    #@4b
    const/16 v2, 0xa

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@50
    .line 359
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@52
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_triggerReceiver:I

    #@54
    const/16 v2, 0xb

    #@56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@59
    .line 360
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@5b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_viewTransitionOnCross:I

    #@5d
    const/16 v2, 0xc

    #@5f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@62
    .line 361
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@64
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_viewTransitionOnNegativeCross:I

    #@66
    const/16 v2, 0xd

    #@68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@6b
    .line 362
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@6d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_viewTransitionOnPositiveCross:I

    #@6f
    const/16 v2, 0xe

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@74
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static read(Landroidx/constraintlayout/motion/widget/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "a",
            "context"
        }
    .end annotation

    #@0
    .line 366
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@3
    move-result p2

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, p2, :cond_f9

    #@7
    .line 368
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@a
    move-result v1

    #@b
    .line 369
    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@d
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    #@10
    move-result v2

    #@11
    packed-switch v2, :pswitch_data_fa

    #@14
    .line 422
    :pswitch_14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    const-string v3, "unused attribute 0x"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string v3, "   "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    #@2b
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    const-string v2, "KeyTrigger"

    #@39
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto/16 :goto_f5

    #@3e
    .line 416
    :pswitch_3e
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    #@40
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@43
    move-result v1

    #@44
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    #@46
    goto/16 :goto_f5

    #@48
    .line 413
    :pswitch_48
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    #@4a
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4d
    move-result v1

    #@4e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    #@50
    goto/16 :goto_f5

    #@52
    .line 419
    :pswitch_52
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    #@54
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@57
    move-result v1

    #@58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    #@5a
    goto/16 :goto_f5

    #@5c
    .line 410
    :pswitch_5c
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$700(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I

    #@5f
    move-result v2

    #@60
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@63
    move-result v1

    #@64
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$702(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I

    #@67
    goto/16 :goto_f5

    #@69
    .line 407
    :pswitch_69
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$600(Landroidx/constraintlayout/motion/widget/KeyTrigger;)Z

    #@6c
    move-result v2

    #@6d
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@70
    move-result v1

    #@71
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$602(Landroidx/constraintlayout/motion/widget/KeyTrigger;Z)Z

    #@74
    goto/16 :goto_f5

    #@76
    .line 404
    :pswitch_76
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$500(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I

    #@79
    move-result v2

    #@7a
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7d
    move-result v1

    #@7e
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$502(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I

    #@81
    goto/16 :goto_f5

    #@83
    .line 371
    :pswitch_83
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFramePosition:I

    #@85
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@88
    move-result v1

    #@89
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFramePosition:I

    #@8b
    .line 372
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFramePosition:I

    #@8d
    int-to-float v1, v1

    #@8e
    const/high16 v2, 0x3f000000    # 0.5f

    #@90
    add-float/2addr v1, v2

    #@91
    const/high16 v2, 0x42c80000    # 100.0f

    #@93
    div-float/2addr v1, v2

    #@94
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$002(Landroidx/constraintlayout/motion/widget/KeyTrigger;F)F

    #@97
    goto :goto_f5

    #@98
    .line 375
    :pswitch_98
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@9a
    if-eqz v2, :cond_b0

    #@9c
    .line 376
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

    #@9e
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a1
    move-result v2

    #@a2
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

    #@a4
    .line 377
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

    #@a6
    const/4 v3, -0x1

    #@a7
    if-ne v2, v3, :cond_f5

    #@a9
    .line 378
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetString:Ljava/lang/String;

    #@af
    goto :goto_f5

    #@b0
    .line 381
    :cond_b0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@b3
    move-result-object v2

    #@b4
    iget v2, v2, Landroid/util/TypedValue;->type:I

    #@b6
    const/4 v3, 0x3

    #@b7
    if-ne v2, v3, :cond_c0

    #@b9
    .line 382
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetString:Ljava/lang/String;

    #@bf
    goto :goto_f5

    #@c0
    .line 384
    :cond_c0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

    #@c2
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c5
    move-result v1

    #@c6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

    #@c8
    goto :goto_f5

    #@c9
    .line 401
    :pswitch_c9
    # getter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$400(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I

    #@cc
    move-result v2

    #@cd
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d0
    move-result v1

    #@d1
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$402(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I

    #@d4
    goto :goto_f5

    #@d5
    .line 398
    :pswitch_d5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@d7
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@da
    move-result v1

    #@db
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    #@dd
    goto :goto_f5

    #@de
    .line 395
    :pswitch_de
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@e1
    move-result-object v1

    #@e2
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$302(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    #@e5
    goto :goto_f5

    #@e6
    .line 392
    :pswitch_e6
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$202(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    #@ed
    goto :goto_f5

    #@ee
    .line 389
    :pswitch_ee
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    # setter for: Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$102(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    #@f5
    :cond_f5
    :goto_f5
    add-int/lit8 v0, v0, 0x1

    #@f7
    goto/16 :goto_5

    #@f9
    :cond_f9
    return-void

    #@fa
    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e6
        :pswitch_14
        :pswitch_de
        :pswitch_d5
        :pswitch_c9
        :pswitch_98
        :pswitch_83
        :pswitch_76
        :pswitch_69
        :pswitch_5c
        :pswitch_52
        :pswitch_48
        :pswitch_3e
    .end packed-switch
.end method

.class public Landroidx/constraintlayout/motion/widget/ViewTransition;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
    }
.end annotation


# static fields
.field static final ANTICIPATE:I = 0x6

.field static final BOUNCE:I = 0x4

.field public static final CONSTRAINT_OVERRIDE:Ljava/lang/String; = "ConstraintOverride"

.field public static final CUSTOM_ATTRIBUTE:Ljava/lang/String; = "CustomAttribute"

.field public static final CUSTOM_METHOD:Ljava/lang/String; = "CustomMethod"

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field public static final KEY_FRAME_SET_TAG:Ljava/lang/String; = "KeyFrameSet"

.field static final LINEAR:I = 0x3

.field public static final ONSTATE_ACTION_DOWN:I = 0x1

.field public static final ONSTATE_ACTION_DOWN_UP:I = 0x3

.field public static final ONSTATE_ACTION_UP:I = 0x2

.field public static final ONSTATE_SHARED_VALUE_SET:I = 0x4

.field public static final ONSTATE_SHARED_VALUE_UNSET:I = 0x5

.field static final OVERSHOOT:I = 0x5

.field private static final SPLINE_STRING:I = -0x1

.field private static TAG:Ljava/lang/String; = "ViewTransition"

.field private static final UNSET:I = -0x1

.field static final VIEWTRANSITIONMODE_ALLSTATES:I = 0x1

.field static final VIEWTRANSITIONMODE_CURRENTSTATE:I = 0x0

.field static final VIEWTRANSITIONMODE_NOSTATE:I = 0x2

.field public static final VIEW_TRANSITION_TAG:Ljava/lang/String; = "ViewTransition"


# instance fields
.field private mClearsTag:I

.field mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

.field mContext:Landroid/content/Context;

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisabled:Z

.field private mDuration:I

.field private mId:I

.field private mIfTagNotSet:I

.field private mIfTagSet:I

.field mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

.field private mOnStateTransition:I

.field private mPathMotionArc:I

.field private mSetsTag:I

.field private mSharedValueCurrent:I

.field private mSharedValueID:I

.field private mSharedValueTarget:I

.field private mTargetId:I

.field private mTargetString:Ljava/lang/String;

.field private mUpDuration:I

.field mViewTransitionMode:I

.field set:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
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
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 77
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    #@6
    const/4 v1, 0x0

    #@7
    .line 78
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    #@9
    .line 79
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    #@b
    .line 86
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    #@d
    .line 87
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    #@f
    .line 95
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@11
    const/4 v2, 0x0

    #@12
    .line 96
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    #@14
    .line 97
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    #@16
    .line 107
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    #@18
    .line 108
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    #@1a
    .line 109
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    #@1c
    .line 110
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    #@1e
    .line 115
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    #@20
    .line 116
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    #@22
    .line 117
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    #@24
    .line 213
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    #@26
    .line 217
    :try_start_26
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@29
    move-result v2
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2a} :catch_ec
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_e7

    #@2a
    :goto_2a
    const/4 v3, 0x1

    #@2b
    if-eq v2, v3, :cond_f0

    #@2d
    const-string v4, "ViewTransition"

    #@2f
    const/4 v5, 0x3

    #@30
    const/4 v6, 0x2

    #@31
    if-eq v2, v6, :cond_42

    #@33
    if-eq v2, v5, :cond_37

    #@35
    goto/16 :goto_e1

    #@37
    .line 246
    :cond_37
    :try_start_37
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_e1

    #@41
    return-void

    #@42
    .line 224
    :cond_42
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 225
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@49
    move-result v7

    #@4a
    const/4 v8, 0x4

    #@4b
    sparse-switch v7, :sswitch_data_f2

    #@4e
    goto :goto_7f

    #@4f
    :sswitch_4f
    const-string v4, "CustomAttribute"

    #@51
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_7f

    #@57
    move v4, v5

    #@58
    goto :goto_80

    #@59
    :sswitch_59
    const-string v4, "CustomMethod"

    #@5b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_7f

    #@61
    move v4, v8

    #@62
    goto :goto_80

    #@63
    :sswitch_63
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_7f

    #@69
    move v4, v1

    #@6a
    goto :goto_80

    #@6b
    :sswitch_6b
    const-string v4, "KeyFrameSet"

    #@6d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_7f

    #@73
    move v4, v3

    #@74
    goto :goto_80

    #@75
    :sswitch_75
    const-string v4, "ConstraintOverride"

    #@77
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_7f

    #@7d
    move v4, v6

    #@7e
    goto :goto_80

    #@7f
    :cond_7f
    :goto_7f
    move v4, v0

    #@80
    :goto_80
    if-eqz v4, :cond_de

    #@82
    if-eq v4, v3, :cond_d6

    #@84
    if-eq v4, v6, :cond_cf

    #@86
    if-eq v4, v5, :cond_c7

    #@88
    if-eq v4, v8, :cond_c7

    #@8a
    .line 240
    sget-object v3, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    #@8c
    new-instance v4, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    const-string v5, " unknown tag "

    #@9b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 241
    sget-object v2, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    #@ac
    new-instance v3, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string v4, ".xml:"

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@ba
    move-result v4

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v3

    #@c3
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    goto :goto_e1

    #@c7
    .line 237
    :cond_c7
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@c9
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@cb
    invoke-static {p1, p2, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    #@ce
    goto :goto_e1

    #@cf
    .line 233
    :cond_cf
    invoke-static {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@d2
    move-result-object v2

    #@d3
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@d5
    goto :goto_e1

    #@d6
    .line 230
    :cond_d6
    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@d8
    invoke-direct {v2, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@db
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@dd
    goto :goto_e1

    #@de
    .line 227
    :cond_de
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@e1
    .line 219
    :cond_e1
    :goto_e1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@e4
    move-result v2
    :try_end_e5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_e5} :catch_ec
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_e5} :catch_e7

    #@e5
    goto/16 :goto_2a

    #@e7
    :catch_e7
    move-exception p1

    #@e8
    .line 257
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@eb
    goto :goto_f0

    #@ec
    :catch_ec
    move-exception p1

    #@ed
    .line 255
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@f0
    :cond_f0
    :goto_f0
    return-void

    #@f1
    nop

    #@f2
    :sswitch_data_f2
    .sparse-switch
        -0x74f4db17 -> :sswitch_75
        -0x49df9cec -> :sswitch_6b
        0x3b205fa -> :sswitch_63
        0x15d883d2 -> :sswitch_59
        0x6acd460b -> :sswitch_4f
    .end sparse-switch
.end method

.method private parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
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
    .line 262
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object p2

    #@4
    .line 263
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition:[I

    #@6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object p1

    #@a
    .line 264
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@d
    move-result p2

    #@e
    const/4 v0, 0x0

    #@f
    :goto_f
    if-ge v0, p2, :cond_141

    #@11
    .line 266
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@14
    move-result v1

    #@15
    .line 267
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_android_id:I

    #@17
    if-ne v1, v2, :cond_23

    #@19
    .line 268
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    #@1b
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    #@21
    goto/16 :goto_13d

    #@23
    .line 269
    :cond_23
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionTarget:I

    #@25
    const/4 v3, 0x3

    #@26
    const/4 v4, -0x1

    #@27
    if-ne v1, v2, :cond_59

    #@29
    .line 270
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@2b
    if-eqz v2, :cond_3f

    #@2d
    .line 271
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    #@2f
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@32
    move-result v2

    #@33
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    #@35
    if-ne v2, v4, :cond_13d

    #@37
    .line 273
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    #@3d
    goto/16 :goto_13d

    #@3f
    .line 276
    :cond_3f
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@42
    move-result-object v2

    #@43
    iget v2, v2, Landroid/util/TypedValue;->type:I

    #@45
    if-ne v2, v3, :cond_4f

    #@47
    .line 277
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    #@4d
    goto/16 :goto_13d

    #@4f
    .line 279
    :cond_4f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    #@51
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@54
    move-result v1

    #@55
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    #@57
    goto/16 :goto_13d

    #@59
    .line 282
    :cond_59
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_onStateTransition:I

    #@5b
    if-ne v1, v2, :cond_67

    #@5d
    .line 283
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    #@5f
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@62
    move-result v1

    #@63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    #@65
    goto/16 :goto_13d

    #@67
    .line 284
    :cond_67
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_transitionDisable:I

    #@69
    if-ne v1, v2, :cond_75

    #@6b
    .line 285
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    #@6d
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@70
    move-result v1

    #@71
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    #@73
    goto/16 :goto_13d

    #@75
    .line 286
    :cond_75
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_pathMotionArc:I

    #@77
    if-ne v1, v2, :cond_83

    #@79
    .line 287
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    #@7b
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@7e
    move-result v1

    #@7f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    #@81
    goto/16 :goto_13d

    #@83
    .line 288
    :cond_83
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_duration:I

    #@85
    if-ne v1, v2, :cond_91

    #@87
    .line 289
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    #@89
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8c
    move-result v1

    #@8d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    #@8f
    goto/16 :goto_13d

    #@91
    .line 290
    :cond_91
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_upDuration:I

    #@93
    if-ne v1, v2, :cond_9f

    #@95
    .line 291
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    #@97
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@9a
    move-result v1

    #@9b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    #@9d
    goto/16 :goto_13d

    #@9f
    .line 292
    :cond_9f
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_viewTransitionMode:I

    #@a1
    if-ne v1, v2, :cond_ad

    #@a3
    .line 293
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    #@a5
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@a8
    move-result v1

    #@a9
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    #@ab
    goto/16 :goto_13d

    #@ad
    .line 294
    :cond_ad
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionInterpolator:I

    #@af
    if-ne v1, v2, :cond_f0

    #@b1
    .line 295
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@b4
    move-result-object v2

    #@b5
    .line 296
    iget v5, v2, Landroid/util/TypedValue;->type:I

    #@b7
    const/4 v6, -0x2

    #@b8
    const/4 v7, 0x1

    #@b9
    if-ne v5, v7, :cond_c7

    #@bb
    .line 297
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@be
    move-result v1

    #@bf
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    #@c1
    if-eq v1, v4, :cond_13d

    #@c3
    .line 299
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@c5
    goto/16 :goto_13d

    #@c7
    .line 301
    :cond_c7
    iget v2, v2, Landroid/util/TypedValue;->type:I

    #@c9
    if-ne v2, v3, :cond_e7

    #@cb
    .line 302
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@ce
    move-result-object v2

    #@cf
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    #@d1
    if-eqz v2, :cond_e4

    #@d3
    const-string v3, "/"

    #@d5
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d8
    move-result v2

    #@d9
    if-lez v2, :cond_e4

    #@db
    .line 304
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@de
    move-result v1

    #@df
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    #@e1
    .line 305
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@e3
    goto :goto_13d

    #@e4
    .line 307
    :cond_e4
    iput v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@e6
    goto :goto_13d

    #@e7
    .line 310
    :cond_e7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@e9
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@ec
    move-result v1

    #@ed
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@ef
    goto :goto_13d

    #@f0
    .line 312
    :cond_f0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_setsTag:I

    #@f2
    if-ne v1, v2, :cond_fd

    #@f4
    .line 313
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    #@f6
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f9
    move-result v1

    #@fa
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    #@fc
    goto :goto_13d

    #@fd
    .line 314
    :cond_fd
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_clearsTag:I

    #@ff
    if-ne v1, v2, :cond_10a

    #@101
    .line 315
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    #@103
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@106
    move-result v1

    #@107
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    #@109
    goto :goto_13d

    #@10a
    .line 316
    :cond_10a
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagSet:I

    #@10c
    if-ne v1, v2, :cond_117

    #@10e
    .line 317
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    #@110
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@113
    move-result v1

    #@114
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    #@116
    goto :goto_13d

    #@117
    .line 318
    :cond_117
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagNotSet:I

    #@119
    if-ne v1, v2, :cond_124

    #@11b
    .line 319
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    #@11d
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@120
    move-result v1

    #@121
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    #@123
    goto :goto_13d

    #@124
    .line 320
    :cond_124
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValueId:I

    #@126
    if-ne v1, v2, :cond_131

    #@128
    .line 321
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    #@12a
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12d
    move-result v1

    #@12e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    #@130
    goto :goto_13d

    #@131
    .line 322
    :cond_131
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValue:I

    #@133
    if-ne v1, v2, :cond_13d

    #@135
    .line 323
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    #@137
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@13a
    move-result v1

    #@13b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    #@13d
    :cond_13d
    :goto_13d
    add-int/lit8 v0, v0, 0x1

    #@13f
    goto/16 :goto_f

    #@141
    .line 326
    :cond_141
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@144
    return-void
.end method

.method private updateTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transition",
            "view"
        }
    .end annotation

    #@0
    .line 533
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_8

    #@5
    .line 534
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    #@8
    .line 536
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    #@a
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setPathMotionArc(I)V

    #@d
    .line 537
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@f
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    #@11
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    #@13
    invoke-virtual {p1, v0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setInterpolatorInfo(ILjava/lang/String;I)V

    #@16
    .line 538
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@19
    move-result p2

    #@1a
    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@1c
    if-eqz v0, :cond_46

    #@1e
    .line 540
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    #@21
    move-result-object v0

    #@22
    .line 541
    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@24
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>()V

    #@27
    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v0

    #@2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_43

    #@31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    #@37
    .line 543
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/Key;->clone()Landroidx/constraintlayout/motion/widget/Key;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/motion/widget/Key;->setViewId(I)Landroidx/constraintlayout/motion/widget/Key;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@42
    goto :goto_2b

    #@43
    .line 546
    :cond_43
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->addKeyFrame(Landroidx/constraintlayout/motion/widget/KeyFrames;)V

    #@46
    :cond_46
    return-void
.end method


# virtual methods
.method applyIndependentTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "motionLayout",
            "view"
        }
    .end annotation

    #@0
    .line 330
    new-instance v6, Landroidx/constraintlayout/motion/widget/MotionController;

    #@2
    invoke-direct {v6, p3}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    #@5
    .line 331
    invoke-virtual {v6, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->setBothStates(Landroid/view/View;)V

    #@8
    .line 332
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@a
    invoke-virtual {p3, v6}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addAllFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@d
    .line 333
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@14
    move-result v2

    #@15
    iget p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    #@17
    int-to-float v3, p3

    #@18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1b
    move-result-wide v4

    #@1c
    move-object v0, v6

    #@1d
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    #@20
    .line 334
    new-instance v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    #@22
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    #@24
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    #@26
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    #@28
    .line 336
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@2b
    move-result-object p2

    #@2c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    #@2f
    move-result-object p2

    #@30
    iget v7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    #@32
    iget v8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    #@34
    move-object v1, p1

    #@35
    move-object v2, v6

    #@36
    move-object v6, p2

    #@37
    invoke-direct/range {v0 .. v8}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V

    #@3a
    return-void
.end method

.method varargs applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "layout",
            "fromId",
            "current",
            "views"
        }
    .end annotation

    #@0
    .line 475
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 478
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    #@7
    const/4 v1, 0x2

    #@8
    const/4 v2, 0x0

    #@9
    if-ne v0, v1, :cond_11

    #@b
    .line 479
    aget-object p3, p5, v2

    #@d
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyIndependentTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    #@10
    return-void

    #@11
    :cond_11
    const/4 p1, 0x1

    #@12
    if-ne v0, p1, :cond_49

    #@14
    .line 483
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    #@17
    move-result-object p1

    #@18
    move v0, v2

    #@19
    .line 484
    :goto_19
    array-length v1, p1

    #@1a
    if-ge v0, v1, :cond_49

    #@1c
    .line 485
    aget v1, p1, v0

    #@1e
    if-ne v1, p3, :cond_21

    #@20
    goto :goto_46

    #@21
    .line 489
    :cond_21
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@24
    move-result-object v1

    #@25
    .line 490
    array-length v3, p5

    #@26
    move v4, v2

    #@27
    :goto_27
    if-ge v4, v3, :cond_46

    #@29
    aget-object v5, p5, v4

    #@2b
    .line 491
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    #@2e
    move-result v5

    #@2f
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@32
    move-result-object v5

    #@33
    .line 492
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@35
    if-eqz v6, :cond_43

    #@37
    .line 493
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    #@3a
    .line 494
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@3c
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@3e
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@40
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@43
    :cond_43
    add-int/lit8 v4, v4, 0x1

    #@45
    goto :goto_27

    #@46
    :cond_46
    :goto_46
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_19

    #@49
    .line 500
    :cond_49
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    #@4b
    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@4e
    .line 501
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@51
    .line 502
    array-length v0, p5

    #@52
    move v1, v2

    #@53
    :goto_53
    if-ge v1, v0, :cond_72

    #@55
    aget-object v3, p5, v1

    #@57
    .line 503
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@5a
    move-result v3

    #@5b
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@5e
    move-result-object v3

    #@5f
    .line 504
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@61
    if-eqz v4, :cond_6f

    #@63
    .line 505
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    #@66
    .line 506
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@68
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@6a
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@6c
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@6f
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_53

    #@72
    .line 510
    :cond_72
    invoke-virtual {p2, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    #@75
    .line 511
    sget p1, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    #@77
    invoke-virtual {p2, p1, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    #@7a
    .line 512
    sget p1, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    #@7c
    const/4 p4, -0x1

    #@7d
    invoke-virtual {p2, p1, p4, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    #@80
    .line 513
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@82
    iget-object v0, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@84
    sget v1, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    #@86
    invoke-direct {p1, p4, v0, v1, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    #@89
    .line 514
    array-length p3, p5

    #@8a
    :goto_8a
    if-ge v2, p3, :cond_94

    #@8c
    aget-object p4, p5, v2

    #@8e
    .line 515
    invoke-direct {p0, p1, p4}, Landroidx/constraintlayout/motion/widget/ViewTransition;->updateTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V

    #@91
    add-int/lit8 v2, v2, 0x1

    #@93
    goto :goto_8a

    #@94
    .line 517
    :cond_94
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@97
    .line 518
    new-instance p1, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;

    #@99
    invoke-direct {p1, p0, p5}, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    #@9c
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd(Ljava/lang/Runnable;)V

    #@9f
    return-void
.end method

.method checkTags(Landroid/view/View;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 607
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, -0x1

    #@5
    if-ne v0, v3, :cond_9

    #@7
    :goto_7
    move v0, v2

    #@8
    goto :goto_11

    #@9
    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_10

    #@f
    goto :goto_7

    #@10
    :cond_10
    move v0, v1

    #@11
    .line 608
    :goto_11
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    #@13
    if-ne v4, v3, :cond_17

    #@15
    :goto_15
    move p1, v2

    #@16
    goto :goto_1f

    #@17
    :cond_17
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@1a
    move-result-object p1

    #@1b
    if-nez p1, :cond_1e

    #@1d
    goto :goto_15

    #@1e
    :cond_1e
    move p1, v1

    #@1f
    :goto_1f
    if-eqz v0, :cond_24

    #@21
    if-eqz p1, :cond_24

    #@23
    move v1, v2

    #@24
    :cond_24
    return v1
.end method

.method getId()I
    .registers 2

    #@0
    .line 551
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    #@2
    return v0
.end method

.method getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 182
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    #@2
    const/4 v1, -0x2

    #@3
    if-eq v0, v1, :cond_4b

    #@5
    const/4 p1, -0x1

    #@6
    if-eq v0, p1, :cond_3f

    #@8
    if-eqz v0, :cond_39

    #@a
    const/4 p1, 0x1

    #@b
    if-eq v0, p1, :cond_33

    #@d
    const/4 p1, 0x2

    #@e
    if-eq v0, p1, :cond_2d

    #@10
    const/4 p1, 0x4

    #@11
    if-eq v0, p1, :cond_27

    #@13
    const/4 p1, 0x5

    #@14
    if-eq v0, p1, :cond_21

    #@16
    const/4 p1, 0x6

    #@17
    if-eq v0, p1, :cond_1b

    #@19
    const/4 p1, 0x0

    #@1a
    return-object p1

    #@1b
    .line 203
    :cond_1b
    new-instance p1, Landroid/view/animation/AnticipateInterpolator;

    #@1d
    invoke-direct {p1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    #@20
    return-object p1

    #@21
    .line 205
    :cond_21
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    #@23
    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    #@26
    return-object p1

    #@27
    .line 207
    :cond_27
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    #@29
    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    #@2c
    return-object p1

    #@2d
    .line 199
    :cond_2d
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    #@2f
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@32
    return-object p1

    #@33
    .line 197
    :cond_33
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    #@35
    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@38
    return-object p1

    #@39
    .line 195
    :cond_39
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@3b
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@3e
    return-object p1

    #@3f
    .line 184
    :cond_3f
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    #@41
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@44
    move-result-object p1

    #@45
    .line 185
    new-instance v0, Landroidx/constraintlayout/motion/widget/ViewTransition$1;

    #@47
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition$1;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;Landroidx/constraintlayout/core/motion/utils/Easing;)V

    #@4a
    return-object v0

    #@4b
    .line 192
    :cond_4b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    #@4d
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@50
    move-result-object p1

    #@51
    return-object p1
.end method

.method public getSharedValue()I
    .registers 2

    #@0
    .line 151
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    #@2
    return v0
.end method

.method public getSharedValueCurrent()I
    .registers 2

    #@0
    .line 120
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    #@2
    return v0
.end method

.method public getSharedValueID()I
    .registers 2

    #@0
    .line 167
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    #@2
    return v0
.end method

.method public getStateTransition()I
    .registers 2

    #@0
    .line 133
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    #@2
    return v0
.end method

.method isEnabled()Z
    .registers 2

    #@0
    .line 598
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    #@2
    xor-int/lit8 v0, v0, 0x1

    #@4
    return v0
.end method

.method synthetic lambda$applyTransition$0$androidx-constraintlayout-motion-widget-ViewTransition([Landroid/view/View;)V
    .registers 10

    #@0
    .line 519
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    if-eq v0, v2, :cond_1c

    #@6
    .line 520
    array-length v0, p1

    #@7
    move v3, v1

    #@8
    :goto_8
    if-ge v3, v0, :cond_1c

    #@a
    aget-object v4, p1, v3

    #@c
    .line 521
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    #@e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@11
    move-result-wide v6

    #@12
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v6

    #@16
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_8

    #@1c
    .line 524
    :cond_1c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    #@1e
    if-eq v0, v2, :cond_2e

    #@20
    .line 525
    array-length v0, p1

    #@21
    :goto_21
    if-ge v1, v0, :cond_2e

    #@23
    aget-object v2, p1, v1

    #@25
    .line 526
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    #@27
    const/4 v4, 0x0

    #@28
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_21

    #@2e
    :cond_2e
    return-void
.end method

.method matchesView(Landroid/view/View;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 562
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    #@6
    const/4 v2, -0x1

    #@7
    if-ne v1, v2, :cond_e

    #@9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    #@b
    if-nez v1, :cond_e

    #@d
    return v0

    #@e
    .line 565
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_15

    #@14
    return v0

    #@15
    .line 568
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@18
    move-result v1

    #@19
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    #@1b
    const/4 v3, 0x1

    #@1c
    if-ne v1, v2, :cond_1f

    #@1e
    return v3

    #@1f
    .line 571
    :cond_1f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    #@21
    if-nez v1, :cond_24

    #@23
    return v0

    #@24
    .line 574
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@27
    move-result-object v1

    #@28
    .line 575
    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@2a
    if-eqz v1, :cond_3f

    #@2c
    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2f
    move-result-object p1

    #@30
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@32
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    #@34
    if-eqz p1, :cond_3f

    #@36
    .line 577
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    #@38
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@3b
    move-result p1

    #@3c
    if-eqz p1, :cond_3f

    #@3e
    return v3

    #@3f
    :cond_3f
    return v0
.end method

.method setEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    #@0
    xor-int/lit8 p1, p1, 0x1

    #@2
    .line 602
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    #@4
    return-void
.end method

.method setId(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 555
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    #@2
    return-void
.end method

.method public setSharedValue(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValue"
        }
    .end annotation

    #@0
    .line 158
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    #@2
    return-void
.end method

.method public setSharedValueCurrent(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueCurrent"
        }
    .end annotation

    #@0
    .line 124
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    #@2
    return-void
.end method

.method public setSharedValueID(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueID"
        }
    .end annotation

    #@0
    .line 174
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    #@2
    return-void
.end method

.method public setStateTransition(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateTransition"
        }
    .end annotation

    #@0
    .line 142
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    #@2
    return-void
.end method

.method supports(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    #@0
    .line 585
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-ne v0, v2, :cond_a

    #@6
    if-nez p1, :cond_9

    #@8
    move v1, v2

    #@9
    :cond_9
    return v1

    #@a
    :cond_a
    const/4 v3, 0x2

    #@b
    if-ne v0, v3, :cond_11

    #@d
    if-ne p1, v2, :cond_10

    #@f
    move v1, v2

    #@10
    :cond_10
    return v1

    #@11
    :cond_11
    const/4 v3, 0x3

    #@12
    if-ne v0, v3, :cond_17

    #@14
    if-nez p1, :cond_17

    #@16
    move v1, v2

    #@17
    :cond_17
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "ViewTransition("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    #@9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    #@b
    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, ")"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

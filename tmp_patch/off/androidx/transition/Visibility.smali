.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "android:visibility:visibility"

    #@2
    const-string v1, "android:visibility:parent"

    #@4
    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    #@a
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 100
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x3

    #@4
    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    #@6
    .line 107
    sget-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    #@8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object p1

    #@c
    .line 109
    check-cast p2, Landroid/content/res/XmlResourceParser;

    #@e
    const-string v0, "transitionVisibilityMode"

    #@10
    const/4 v1, 0x0

    #@11
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@14
    move-result p2

    #@15
    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@18
    if-eqz p2, :cond_1d

    #@1a
    .line 114
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    #@1d
    :cond_1d
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 5

    #@0
    .line 150
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@5
    move-result v0

    #@6
    .line 151
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    const-string v2, "android:visibility:visibility"

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 152
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@13
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@15
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v1

    #@19
    const-string v2, "android:visibility:parent"

    #@1b
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    const/4 v0, 0x2

    #@1f
    new-array v0, v0, [I

    #@21
    .line 154
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@23
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@26
    .line 155
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@28
    const-string v1, "android:visibility:screenLocation"

    #@2a
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .registers 10

    #@0
    .line 195
    new-instance v0, Landroidx/transition/Visibility$VisibilityInfo;

    #@2
    invoke-direct {v0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 196
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@8
    .line 197
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@a
    const-string v2, "android:visibility:parent"

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, -0x1

    #@e
    const-string v5, "android:visibility:visibility"

    #@10
    if-eqz p1, :cond_33

    #@12
    .line 198
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@14
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_33

    #@1a
    .line 199
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1c
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Ljava/lang/Integer;

    #@22
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@25
    move-result v6

    #@26
    iput v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@28
    .line 200
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2a
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    check-cast v6, Landroid/view/ViewGroup;

    #@30
    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    #@32
    goto :goto_37

    #@33
    .line 202
    :cond_33
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@35
    .line 203
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    #@37
    :goto_37
    if-eqz p2, :cond_5a

    #@39
    .line 205
    iget-object v6, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@3b
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_5a

    #@41
    .line 206
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@43
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Ljava/lang/Integer;

    #@49
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@4c
    move-result v3

    #@4d
    iput v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@4f
    .line 207
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@51
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, Landroid/view/ViewGroup;

    #@57
    iput-object v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    #@59
    goto :goto_5e

    #@5a
    .line 209
    :cond_5a
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@5c
    .line 210
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    #@5e
    :goto_5e
    const/4 v2, 0x1

    #@5f
    if-eqz p1, :cond_9a

    #@61
    if-eqz p2, :cond_9a

    #@63
    .line 213
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@65
    iget p2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@67
    if-ne p1, p2, :cond_70

    #@69
    iget-object p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    #@6b
    iget-object p2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    #@6d
    if-ne p1, p2, :cond_70

    #@6f
    return-object v0

    #@70
    .line 217
    :cond_70
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@72
    iget p2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@74
    if-eq p1, p2, :cond_88

    #@76
    .line 218
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@78
    if-nez p1, :cond_7f

    #@7a
    .line 219
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@7c
    .line 220
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@7e
    goto :goto_af

    #@7f
    .line 221
    :cond_7f
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@81
    if-nez p1, :cond_af

    #@83
    .line 222
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@85
    .line 223
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@87
    goto :goto_af

    #@88
    .line 227
    :cond_88
    iget-object p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    #@8a
    if-nez p1, :cond_91

    #@8c
    .line 228
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@8e
    .line 229
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@90
    goto :goto_af

    #@91
    .line 230
    :cond_91
    iget-object p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    #@93
    if-nez p1, :cond_af

    #@95
    .line 231
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@97
    .line 232
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@99
    goto :goto_af

    #@9a
    :cond_9a
    if-nez p1, :cond_a5

    #@9c
    .line 236
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@9e
    if-nez p1, :cond_a5

    #@a0
    .line 237
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@a2
    .line 238
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@a4
    goto :goto_af

    #@a5
    :cond_a5
    if-nez p2, :cond_af

    #@a7
    .line 239
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@a9
    if-nez p1, :cond_af

    #@ab
    .line 240
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@ad
    .line 241
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@af
    :cond_af
    :goto_af
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 165
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 160
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12

    #@0
    .line 250
    invoke-direct {p0, p2, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    #@3
    move-result-object v0

    #@4
    .line 251
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@6
    if-eqz v1, :cond_2e

    #@8
    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    #@a
    if-nez v1, :cond_10

    #@c
    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    #@e
    if-eqz v1, :cond_2e

    #@10
    .line 253
    :cond_10
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    #@12
    if-eqz v1, :cond_21

    #@14
    .line 254
    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@16
    iget v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@18
    move-object v2, p0

    #@19
    move-object v3, p1

    #@1a
    move-object v4, p2

    #@1b
    move-object v6, p3

    #@1c
    invoke-virtual/range {v2 .. v7}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    #@1f
    move-result-object p1

    #@20
    return-object p1

    #@21
    .line 257
    :cond_21
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@23
    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@25
    move-object v0, p0

    #@26
    move-object v1, p1

    #@27
    move-object v2, p2

    #@28
    move-object v4, p3

    #@29
    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    #@2c
    move-result-object p1

    #@2d
    return-object p1

    #@2e
    :cond_2e
    const/4 p1, 0x0

    #@2f
    return-object p1
.end method

.method public getMode()I
    .registers 2

    #@0
    .line 140
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 146
    sget-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_6

    #@3
    if-nez p2, :cond_6

    #@5
    return v0

    #@6
    :cond_6
    if-eqz p1, :cond_1b

    #@8
    if-eqz p2, :cond_1b

    #@a
    .line 510
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@c
    const-string v2, "android:visibility:visibility"

    #@e
    .line 511
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@14
    .line 512
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eq v1, v2, :cond_1b

    #@1a
    return v0

    #@1b
    .line 517
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    #@1e
    move-result-object p1

    #@1f
    .line 518
    iget-boolean p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@21
    if-eqz p2, :cond_2c

    #@23
    iget p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    #@25
    if-eqz p2, :cond_2b

    #@27
    iget p1, p1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    #@29
    if-nez p1, :cond_2c

    #@2b
    :cond_2b
    const/4 v0, 0x1

    #@2c
    :cond_2c
    return v0
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 187
    :cond_4
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string v2, "android:visibility:visibility"

    #@8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/Integer;

    #@e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v1

    #@12
    .line 188
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@14
    const-string v2, "android:visibility:parent"

    #@16
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    check-cast p1, Landroid/view/View;

    #@1c
    if-nez v1, :cond_21

    #@1e
    if-eqz p1, :cond_21

    #@20
    const/4 v0, 0x1

    #@21
    :cond_21
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 8

    #@0
    .line 283
    iget p3, p0, Landroidx/transition/Visibility;->mMode:I

    #@2
    const/4 p5, 0x1

    #@3
    and-int/2addr p3, p5

    #@4
    const/4 v0, 0x0

    #@5
    if-ne p3, p5, :cond_2d

    #@7
    if-nez p4, :cond_a

    #@9
    goto :goto_2d

    #@a
    :cond_a
    if-nez p2, :cond_26

    #@c
    .line 287
    iget-object p3, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@e
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object p3

    #@12
    check-cast p3, Landroid/view/View;

    #@14
    const/4 p5, 0x0

    #@15
    .line 288
    invoke-virtual {p0, p3, p5}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@18
    move-result-object v1

    #@19
    .line 290
    invoke-virtual {p0, p3, p5}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@1c
    move-result-object p3

    #@1d
    .line 292
    invoke-direct {p0, v1, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    #@20
    move-result-object p3

    #@21
    .line 293
    iget-boolean p3, p3, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@23
    if-eqz p3, :cond_26

    #@25
    return-object v0

    #@26
    .line 297
    :cond_26
    iget-object p3, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@28
    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@2b
    move-result-object p1

    #@2c
    return-object p1

    #@2d
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 16

    #@0
    .line 340
    iget p3, p0, Landroidx/transition/Visibility;->mMode:I

    #@2
    const/4 v0, 0x2

    #@3
    and-int/2addr p3, v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eq p3, v0, :cond_8

    #@7
    return-object v1

    #@8
    :cond_8
    if-nez p2, :cond_b

    #@a
    return-object v1

    #@b
    .line 349
    :cond_b
    iget-object p3, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@d
    if-eqz p4, :cond_12

    #@f
    .line 350
    iget-object v2, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@11
    goto :goto_13

    #@12
    :cond_12
    move-object v2, v1

    #@13
    .line 355
    :goto_13
    sget v3, Landroidx/transition/R$id;->save_overlay_view:I

    #@15
    invoke-virtual {p3, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/view/View;

    #@1b
    const/4 v4, 0x0

    #@1c
    const/4 v5, 0x1

    #@1d
    if-eqz v3, :cond_23

    #@1f
    move-object v2, v1

    #@20
    move v6, v5

    #@21
    goto/16 :goto_89

    #@23
    :cond_23
    if-eqz v2, :cond_36

    #@25
    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@28
    move-result-object v3

    #@29
    if-nez v3, :cond_2c

    #@2b
    goto :goto_36

    #@2c
    :cond_2c
    const/4 v3, 0x4

    #@2d
    if-ne p5, v3, :cond_30

    #@2f
    goto :goto_32

    #@30
    :cond_30
    if-ne p3, v2, :cond_3b

    #@32
    :goto_32
    move-object v3, v2

    #@33
    move v6, v4

    #@34
    move-object v2, v1

    #@35
    goto :goto_3e

    #@36
    :cond_36
    :goto_36
    if-eqz v2, :cond_3b

    #@38
    move-object v3, v1

    #@39
    move v6, v4

    #@3a
    goto :goto_3e

    #@3b
    :cond_3b
    move-object v2, v1

    #@3c
    move-object v3, v2

    #@3d
    move v6, v5

    #@3e
    :goto_3e
    if-eqz v6, :cond_85

    #@40
    .line 390
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object v6

    #@44
    if-nez v6, :cond_47

    #@46
    goto :goto_81

    #@47
    .line 393
    :cond_47
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4a
    move-result-object v6

    #@4b
    instance-of v6, v6, Landroid/view/View;

    #@4d
    if-eqz v6, :cond_85

    #@4f
    .line 394
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@52
    move-result-object v6

    #@53
    check-cast v6, Landroid/view/View;

    #@55
    .line 395
    invoke-virtual {p0, v6, v5}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@58
    move-result-object v7

    #@59
    .line 396
    invoke-virtual {p0, v6, v5}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@5c
    move-result-object v8

    #@5d
    .line 399
    invoke-direct {p0, v7, v8}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    #@60
    move-result-object v7

    #@61
    .line 400
    iget-boolean v7, v7, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    #@63
    if-nez v7, :cond_6a

    #@65
    .line 401
    invoke-static {p1, p3, v6}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    #@68
    move-result-object v2

    #@69
    goto :goto_85

    #@6a
    .line 404
    :cond_6a
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    #@6d
    move-result v7

    #@6e
    .line 405
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@71
    move-result-object v6

    #@72
    if-nez v6, :cond_85

    #@74
    const/4 v6, -0x1

    #@75
    if-eq v7, v6, :cond_85

    #@77
    .line 406
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@7a
    move-result-object v6

    #@7b
    if-eqz v6, :cond_85

    #@7d
    iget-boolean v6, p0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    #@7f
    if-eqz v6, :cond_85

    #@81
    :goto_81
    move-object v2, v3

    #@82
    move v6, v4

    #@83
    move-object v3, p3

    #@84
    goto :goto_89

    #@85
    :cond_85
    :goto_85
    move v6, v4

    #@86
    move-object v9, v3

    #@87
    move-object v3, v2

    #@88
    move-object v2, v9

    #@89
    :goto_89
    if-eqz v3, :cond_dd

    #@8b
    if-nez v6, :cond_bf

    #@8d
    .line 421
    iget-object p5, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@8f
    const-string v1, "android:visibility:screenLocation"

    #@91
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    move-result-object p5

    #@95
    check-cast p5, [I

    #@97
    check-cast p5, [I

    #@99
    .line 422
    aget v1, p5, v4

    #@9b
    .line 423
    aget p5, p5, v5

    #@9d
    new-array v0, v0, [I

    #@9f
    .line 425
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@a2
    aget v2, v0, v4

    #@a4
    sub-int/2addr v1, v2

    #@a5
    .line 426
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@a8
    move-result v2

    #@a9
    sub-int/2addr v1, v2

    #@aa
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@ad
    aget v0, v0, v5

    #@af
    sub-int/2addr p5, v0

    #@b0
    .line 427
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@b3
    move-result v0

    #@b4
    sub-int/2addr p5, v0

    #@b5
    invoke-virtual {v3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@b8
    .line 428
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@bb
    move-result-object p5

    #@bc
    invoke-interface {p5, v3}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    #@bf
    .line 430
    :cond_bf
    invoke-virtual {p0, p1, v3, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@c2
    move-result-object p2

    #@c3
    if-nez v6, :cond_dc

    #@c5
    if-nez p2, :cond_cf

    #@c7
    .line 433
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@ca
    move-result-object p1

    #@cb
    invoke-interface {p1, v3}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    #@ce
    goto :goto_dc

    #@cf
    .line 435
    :cond_cf
    sget p4, Landroidx/transition/R$id;->save_overlay_view:I

    #@d1
    invoke-virtual {p3, p4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@d4
    .line 438
    new-instance p4, Landroidx/transition/Visibility$1;

    #@d6
    invoke-direct {p4, p0, p1, v3, p3}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    #@d9
    invoke-virtual {p0, p4}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@dc
    :cond_dc
    :goto_dc
    return-object p2

    #@dd
    :cond_dd
    if-eqz v2, :cond_ff

    #@df
    .line 467
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@e2
    move-result p3

    #@e3
    .line 468
    invoke-static {v2, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@e6
    .line 469
    invoke-virtual {p0, p1, v2, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@e9
    move-result-object p1

    #@ea
    if-eqz p1, :cond_fb

    #@ec
    .line 471
    new-instance p2, Landroidx/transition/Visibility$DisappearListener;

    #@ee
    invoke-direct {p2, v2, p5, v5}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    #@f1
    .line 473
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@f4
    .line 474
    invoke-static {p1, p2}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    #@f7
    .line 475
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@fa
    goto :goto_fe

    #@fb
    .line 477
    :cond_fb
    invoke-static {v2, p3}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@fe
    :goto_fe
    return-object p1

    #@ff
    :cond_ff
    return-object v1
.end method

.method public setMode(I)V
    .registers 3

    #@0
    and-int/lit8 v0, p1, -0x4

    #@2
    if-nez v0, :cond_7

    #@4
    .line 129
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    #@6
    return-void

    #@7
    .line 127
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

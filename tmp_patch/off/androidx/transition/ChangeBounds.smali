.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const-string v0, "android:changeBounds:windowX"

    #@2
    const-string v1, "android:changeBounds:windowY"

    #@4
    const-string v2, "android:changeBounds:bounds"

    #@6
    const-string v3, "android:changeBounds:clip"

    #@8
    const-string v4, "android:changeBounds:parent"

    #@a
    .line 61
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    #@10
    .line 69
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    #@12
    const-class v1, Landroid/graphics/PointF;

    #@14
    const-string v2, "boundsOrigin"

    #@16
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@19
    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    #@1b
    .line 87
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    #@1d
    const-class v1, Landroid/graphics/PointF;

    #@1f
    const-string v2, "topLeft"

    #@21
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@24
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    #@26
    .line 100
    new-instance v0, Landroidx/transition/ChangeBounds$3;

    #@28
    const-class v1, Landroid/graphics/PointF;

    #@2a
    const-string v3, "bottomRight"

    #@2c
    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@2f
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    #@31
    .line 113
    new-instance v0, Landroidx/transition/ChangeBounds$4;

    #@33
    const-class v1, Landroid/graphics/PointF;

    #@35
    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@38
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    #@3a
    .line 130
    new-instance v0, Landroidx/transition/ChangeBounds$5;

    #@3c
    const-class v1, Landroid/graphics/PointF;

    #@3e
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@41
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    #@43
    .line 147
    new-instance v0, Landroidx/transition/ChangeBounds$6;

    #@45
    const-class v1, Landroid/graphics/PointF;

    #@47
    const-string v2, "position"

    #@49
    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@4c
    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@4e
    .line 168
    new-instance v0, Landroidx/transition/RectEvaluator;

    #@50
    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    #@53
    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    #@55
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 170
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    .line 164
    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    #@8
    const/4 v0, 0x0

    #@9
    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    #@b
    .line 166
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    #@d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 176
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    .line 164
    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    #@8
    const/4 v0, 0x0

    #@9
    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    #@b
    .line 166
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    #@d
    .line 178
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    #@f
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12
    move-result-object p1

    #@13
    .line 179
    check-cast p2, Landroid/content/res/XmlResourceParser;

    #@15
    const-string v1, "resizeClip"

    #@17
    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    #@1a
    move-result p2

    #@1b
    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 182
    invoke-virtual {p0, p2}, Landroidx/transition/ChangeBounds;->setResizeClip(Z)V

    #@21
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 9

    #@0
    .line 220
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 222
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_14

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_14

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_77

    #@14
    .line 223
    :cond_14
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@16
    new-instance v2, Landroid/graphics/Rect;

    #@18
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@1f
    move-result v4

    #@20
    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@23
    move-result v5

    #@24
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@27
    move-result v6

    #@28
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2b
    const-string v3, "android:changeBounds:bounds"

    #@2d
    .line 223
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 225
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@32
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@34
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@37
    move-result-object v2

    #@38
    const-string v3, "android:changeBounds:parent"

    #@3a
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 226
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    #@3f
    if-eqz v1, :cond_68

    #@41
    .line 227
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@43
    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    #@45
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    #@48
    .line 228
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@4a
    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    #@4c
    const/4 v3, 0x0

    #@4d
    aget v2, v2, v3

    #@4f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v2

    #@53
    const-string v3, "android:changeBounds:windowX"

    #@55
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 229
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@5a
    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    #@5c
    const/4 v3, 0x1

    #@5d
    aget v2, v2, v3

    #@5f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v2

    #@63
    const-string v3, "android:changeBounds:windowY"

    #@65
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 231
    :cond_68
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    #@6a
    if-eqz v1, :cond_77

    #@6c
    .line 232
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6e
    const-string v1, "android:changeBounds:clip"

    #@70
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    #@73
    move-result-object v0

    #@74
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    :cond_77
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    #@0
    .line 249
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_15

    #@5
    .line 250
    invoke-virtual {p0, p1, v1}, Landroidx/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@8
    move-result-object v0

    #@9
    const/4 v2, 0x0

    #@a
    if-nez v0, :cond_11

    #@c
    if-ne p1, p2, :cond_f

    #@e
    goto :goto_15

    #@f
    :cond_f
    move v1, v2

    #@10
    goto :goto_15

    #@11
    .line 254
    :cond_11
    iget-object p1, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@13
    if-ne p2, p1, :cond_f

    #@15
    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 244
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 239
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 22

    #@0
    move-object/from16 v8, p0

    #@2
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    if-eqz v0, :cond_25d

    #@8
    if-nez v1, :cond_c

    #@a
    goto/16 :goto_25d

    #@c
    .line 267
    :cond_c
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@e
    .line 268
    iget-object v4, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@10
    const-string v5, "android:changeBounds:parent"

    #@12
    .line 269
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/view/ViewGroup;

    #@18
    .line 270
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Landroid/view/ViewGroup;

    #@1e
    if-eqz v3, :cond_25b

    #@20
    if-nez v4, :cond_24

    #@22
    goto/16 :goto_25b

    #@24
    .line 274
    :cond_24
    iget-object v9, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@26
    .line 275
    invoke-direct {v8, v3, v4}, Landroidx/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1b7

    #@2c
    .line 276
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2e
    const-string v5, "android:changeBounds:bounds"

    #@30
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Landroid/graphics/Rect;

    #@36
    .line 277
    iget-object v6, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@38
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Landroid/graphics/Rect;

    #@3e
    .line 278
    iget v6, v3, Landroid/graphics/Rect;->left:I

    #@40
    .line 279
    iget v7, v5, Landroid/graphics/Rect;->left:I

    #@42
    .line 280
    iget v11, v3, Landroid/graphics/Rect;->top:I

    #@44
    .line 281
    iget v12, v5, Landroid/graphics/Rect;->top:I

    #@46
    .line 282
    iget v13, v3, Landroid/graphics/Rect;->right:I

    #@48
    .line 283
    iget v14, v5, Landroid/graphics/Rect;->right:I

    #@4a
    .line 284
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@4c
    .line 285
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    #@4e
    sub-int v5, v13, v6

    #@50
    sub-int v2, v3, v11

    #@52
    sub-int v10, v14, v7

    #@54
    sub-int v4, v15, v12

    #@56
    .line 290
    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@58
    move-object/from16 v16, v9

    #@5a
    const-string v9, "android:changeBounds:clip"

    #@5c
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Landroid/graphics/Rect;

    #@62
    .line 291
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@64
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    move-object v9, v1

    #@69
    check-cast v9, Landroid/graphics/Rect;

    #@6b
    if-eqz v5, :cond_6f

    #@6d
    if-nez v2, :cond_73

    #@6f
    :cond_6f
    if-eqz v10, :cond_82

    #@71
    if-eqz v4, :cond_82

    #@73
    :cond_73
    if-ne v6, v7, :cond_7a

    #@75
    if-eq v11, v12, :cond_78

    #@77
    goto :goto_7a

    #@78
    :cond_78
    const/4 v1, 0x0

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    :goto_7a
    const/4 v1, 0x1

    #@7b
    :goto_7b
    if-ne v13, v14, :cond_7f

    #@7d
    if-eq v3, v15, :cond_83

    #@7f
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    #@81
    goto :goto_83

    #@82
    :cond_82
    const/4 v1, 0x0

    #@83
    :cond_83
    :goto_83
    if-eqz v0, :cond_8b

    #@85
    .line 297
    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v17

    #@89
    if-eqz v17, :cond_8f

    #@8b
    :cond_8b
    if-nez v0, :cond_91

    #@8d
    if-eqz v9, :cond_91

    #@8f
    :cond_8f
    add-int/lit8 v1, v1, 0x1

    #@91
    :cond_91
    if-lez v1, :cond_1f0

    #@93
    move-object/from16 p1, v9

    #@95
    .line 303
    iget-boolean v9, v8, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    #@97
    move-object/from16 p2, v0

    #@99
    const/4 v0, 0x2

    #@9a
    if-nez v9, :cond_12c

    #@9c
    move-object/from16 v9, v16

    #@9e
    .line 304
    invoke-static {v9, v6, v11, v13, v3}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    #@a1
    if-ne v1, v0, :cond_ff

    #@a3
    if-ne v5, v10, :cond_bb

    #@a5
    if-ne v2, v4, :cond_bb

    #@a7
    .line 308
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    #@aa
    move-result-object v0

    #@ab
    int-to-float v1, v6

    #@ac
    int-to-float v2, v11

    #@ad
    int-to-float v3, v7

    #@ae
    int-to-float v4, v12

    #@af
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@b2
    move-result-object v0

    #@b3
    .line 310
    sget-object v1, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@b5
    invoke-static {v9, v1, v0}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@b8
    move-result-object v0

    #@b9
    goto/16 :goto_19c

    #@bb
    .line 313
    :cond_bb
    new-instance v1, Landroidx/transition/ChangeBounds$ViewBounds;

    #@bd
    invoke-direct {v1, v9}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    #@c0
    .line 314
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    #@c3
    move-result-object v2

    #@c4
    int-to-float v4, v6

    #@c5
    int-to-float v5, v11

    #@c6
    int-to-float v6, v7

    #@c7
    int-to-float v7, v12

    #@c8
    invoke-virtual {v2, v4, v5, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@cb
    move-result-object v2

    #@cc
    .line 316
    sget-object v4, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    #@ce
    .line 317
    invoke-static {v1, v4, v2}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@d1
    move-result-object v2

    #@d2
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    #@d5
    move-result-object v4

    #@d6
    int-to-float v5, v13

    #@d7
    int-to-float v3, v3

    #@d8
    int-to-float v6, v14

    #@d9
    int-to-float v7, v15

    #@da
    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@dd
    move-result-object v3

    #@de
    .line 321
    sget-object v4, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    #@e0
    invoke-static {v1, v4, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@e3
    move-result-object v3

    #@e4
    .line 323
    new-instance v4, Landroid/animation/AnimatorSet;

    #@e6
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    #@e9
    new-array v0, v0, [Landroid/animation/Animator;

    #@eb
    const/4 v5, 0x0

    #@ec
    aput-object v2, v0, v5

    #@ee
    const/4 v2, 0x1

    #@ef
    aput-object v3, v0, v2

    #@f1
    .line 324
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@f4
    .line 326
    new-instance v0, Landroidx/transition/ChangeBounds$7;

    #@f6
    invoke-direct {v0, v8, v1}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    #@f9
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@fc
    move-object v0, v4

    #@fd
    goto/16 :goto_19c

    #@ff
    :cond_ff
    if-ne v6, v7, :cond_118

    #@101
    if-eq v11, v12, :cond_104

    #@103
    goto :goto_118

    #@104
    .line 339
    :cond_104
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    #@107
    move-result-object v0

    #@108
    int-to-float v1, v13

    #@109
    int-to-float v2, v3

    #@10a
    int-to-float v3, v14

    #@10b
    int-to-float v4, v15

    #@10c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@10f
    move-result-object v0

    #@110
    .line 341
    sget-object v1, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    #@112
    invoke-static {v9, v1, v0}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@115
    move-result-object v0

    #@116
    goto/16 :goto_19c

    #@118
    .line 334
    :cond_118
    :goto_118
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    #@11b
    move-result-object v0

    #@11c
    int-to-float v1, v6

    #@11d
    int-to-float v2, v11

    #@11e
    int-to-float v3, v7

    #@11f
    int-to-float v4, v12

    #@120
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@123
    move-result-object v0

    #@124
    .line 336
    sget-object v1, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    #@126
    invoke-static {v9, v1, v0}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@129
    move-result-object v0

    #@12a
    goto/16 :goto_19c

    #@12c
    :cond_12c
    move-object/from16 v9, v16

    #@12e
    .line 345
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    #@131
    move-result v1

    #@132
    .line 346
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@135
    move-result v3

    #@136
    add-int/2addr v1, v6

    #@137
    add-int/2addr v3, v11

    #@138
    .line 348
    invoke-static {v9, v6, v11, v1, v3}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    #@13b
    if-ne v6, v7, :cond_142

    #@13d
    if-eq v11, v12, :cond_140

    #@13f
    goto :goto_142

    #@140
    :cond_140
    const/4 v11, 0x0

    #@141
    goto :goto_155

    #@142
    .line 353
    :cond_142
    :goto_142
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    #@145
    move-result-object v1

    #@146
    int-to-float v3, v6

    #@147
    int-to-float v6, v11

    #@148
    int-to-float v11, v7

    #@149
    int-to-float v13, v12

    #@14a
    invoke-virtual {v1, v3, v6, v11, v13}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@14d
    move-result-object v1

    #@14e
    .line 355
    sget-object v3, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@150
    invoke-static {v9, v3, v1}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@153
    move-result-object v1

    #@154
    move-object v11, v1

    #@155
    :goto_155
    if-nez p2, :cond_15e

    #@157
    .line 360
    new-instance v1, Landroid/graphics/Rect;

    #@159
    const/4 v3, 0x0

    #@15a
    invoke-direct {v1, v3, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@15d
    goto :goto_161

    #@15e
    :cond_15e
    const/4 v3, 0x0

    #@15f
    move-object/from16 v1, p2

    #@161
    :goto_161
    if-nez p1, :cond_169

    #@163
    .line 363
    new-instance v2, Landroid/graphics/Rect;

    #@165
    invoke-direct {v2, v3, v3, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@168
    goto :goto_16b

    #@169
    :cond_169
    move-object/from16 v2, p1

    #@16b
    .line 366
    :goto_16b
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@16e
    move-result v4

    #@16f
    if-nez v4, :cond_197

    #@171
    .line 367
    invoke-static {v9, v1}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    #@174
    .line 368
    sget-object v4, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    #@176
    new-array v0, v0, [Ljava/lang/Object;

    #@178
    aput-object v1, v0, v3

    #@17a
    const/4 v1, 0x1

    #@17b
    aput-object v2, v0, v1

    #@17d
    const-string v1, "clipBounds"

    #@17f
    invoke-static {v9, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@182
    move-result-object v10

    #@183
    .line 370
    new-instance v13, Landroidx/transition/ChangeBounds$8;

    #@185
    move-object v0, v13

    #@186
    move-object/from16 v1, p0

    #@188
    move-object v2, v9

    #@189
    move-object/from16 v3, p1

    #@18b
    move v4, v7

    #@18c
    move v5, v12

    #@18d
    move v6, v14

    #@18e
    move v7, v15

    #@18f
    invoke-direct/range {v0 .. v7}, Landroidx/transition/ChangeBounds$8;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    #@192
    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@195
    move-object v2, v10

    #@196
    goto :goto_198

    #@197
    :cond_197
    const/4 v2, 0x0

    #@198
    .line 388
    :goto_198
    invoke-static {v11, v2}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@19b
    move-result-object v0

    #@19c
    .line 391
    :goto_19c
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@19f
    move-result-object v1

    #@1a0
    instance-of v1, v1, Landroid/view/ViewGroup;

    #@1a2
    if-eqz v1, :cond_1b6

    #@1a4
    .line 392
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1a7
    move-result-object v1

    #@1a8
    check-cast v1, Landroid/view/ViewGroup;

    #@1aa
    const/4 v2, 0x1

    #@1ab
    .line 393
    invoke-static {v1, v2}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    #@1ae
    .line 394
    new-instance v2, Landroidx/transition/ChangeBounds$9;

    #@1b0
    invoke-direct {v2, v8, v1}, Landroidx/transition/ChangeBounds$9;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    #@1b3
    .line 421
    invoke-virtual {v8, v2}, Landroidx/transition/ChangeBounds;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@1b6
    :cond_1b6
    return-object v0

    #@1b7
    .line 426
    :cond_1b7
    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1b9
    const-string v3, "android:changeBounds:windowX"

    #@1bb
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1be
    move-result-object v2

    #@1bf
    check-cast v2, Ljava/lang/Integer;

    #@1c1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1c4
    move-result v2

    #@1c5
    .line 427
    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1c7
    const-string v4, "android:changeBounds:windowY"

    #@1c9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1cc
    move-result-object v0

    #@1cd
    check-cast v0, Ljava/lang/Integer;

    #@1cf
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1d2
    move-result v0

    #@1d3
    .line 428
    iget-object v5, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1d5
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d8
    move-result-object v3

    #@1d9
    check-cast v3, Ljava/lang/Integer;

    #@1db
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1de
    move-result v3

    #@1df
    .line 429
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1e1
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e4
    move-result-object v1

    #@1e5
    check-cast v1, Ljava/lang/Integer;

    #@1e7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1ea
    move-result v1

    #@1eb
    if-ne v2, v3, :cond_1f2

    #@1ed
    if-eq v0, v1, :cond_1f0

    #@1ef
    goto :goto_1f2

    #@1f0
    :cond_1f0
    const/4 v0, 0x0

    #@1f1
    return-object v0

    #@1f2
    .line 432
    :cond_1f2
    :goto_1f2
    iget-object v4, v8, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    #@1f4
    move-object/from16 v5, p1

    #@1f6
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    #@1f9
    .line 433
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    #@1fc
    move-result v4

    #@1fd
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    #@200
    move-result v6

    #@201
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@203
    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@206
    move-result-object v4

    #@207
    .line 435
    new-instance v6, Landroid/graphics/Canvas;

    #@209
    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@20c
    .line 436
    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@20f
    .line 437
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    #@211
    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@214
    .line 439
    invoke-static {v9}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    #@217
    move-result v7

    #@218
    const/4 v4, 0x0

    #@219
    .line 440
    invoke-static {v9, v4}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    #@21c
    .line 441
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    #@21f
    move-result-object v4

    #@220
    invoke-interface {v4, v6}, Landroidx/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    #@223
    .line 442
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    #@226
    move-result-object v4

    #@227
    iget-object v10, v8, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    #@229
    const/4 v11, 0x0

    #@22a
    aget v12, v10, v11

    #@22c
    sub-int/2addr v2, v12

    #@22d
    int-to-float v2, v2

    #@22e
    const/4 v11, 0x1

    #@22f
    aget v10, v10, v11

    #@231
    sub-int/2addr v0, v10

    #@232
    int-to-float v0, v0

    #@233
    sub-int/2addr v3, v12

    #@234
    int-to-float v3, v3

    #@235
    sub-int/2addr v1, v10

    #@236
    int-to-float v1, v1

    #@237
    invoke-virtual {v4, v2, v0, v3, v1}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@23a
    move-result-object v0

    #@23b
    .line 445
    sget-object v1, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    #@23d
    invoke-static {v1, v0}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@240
    move-result-object v0

    #@241
    new-array v1, v11, [Landroid/animation/PropertyValuesHolder;

    #@243
    const/4 v2, 0x0

    #@244
    aput-object v0, v1, v2

    #@246
    .line 447
    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@249
    move-result-object v10

    #@24a
    .line 448
    new-instance v11, Landroidx/transition/ChangeBounds$10;

    #@24c
    move-object v0, v11

    #@24d
    move-object/from16 v1, p0

    #@24f
    move-object/from16 v2, p1

    #@251
    move-object v3, v6

    #@252
    move-object v4, v9

    #@253
    move v5, v7

    #@254
    invoke-direct/range {v0 .. v5}, Landroidx/transition/ChangeBounds$10;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    #@257
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@25a
    return-object v10

    #@25b
    :cond_25b
    :goto_25b
    const/4 v0, 0x0

    #@25c
    return-object v0

    #@25d
    :cond_25d
    :goto_25d
    const/4 v0, 0x0

    #@25e
    return-object v0
.end method

.method public getResizeClip()Z
    .registers 2

    #@0
    .line 216
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 188
    sget-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setResizeClip(Z)V
    .registers 2

    #@0
    .line 205
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    #@2
    return-void
.end method

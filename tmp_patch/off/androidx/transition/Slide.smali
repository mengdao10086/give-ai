.class public Landroidx/transition/Slide;
.super Landroidx/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Slide$CalculateSlideVertical;,
        Landroidx/transition/Slide$CalculateSlideHorizontal;,
        Landroidx/transition/Slide$CalculateSlide;,
        Landroidx/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@7
    .line 56
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@9
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@c
    sput-object v0, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@e
    .line 93
    new-instance v0, Landroidx/transition/Slide$1;

    #@10
    invoke-direct {v0}, Landroidx/transition/Slide$1;-><init>()V

    #@13
    sput-object v0, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

    #@15
    .line 100
    new-instance v0, Landroidx/transition/Slide$2;

    #@17
    invoke-direct {v0}, Landroidx/transition/Slide$2;-><init>()V

    #@1a
    sput-object v0, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

    #@1c
    .line 115
    new-instance v0, Landroidx/transition/Slide$3;

    #@1e
    invoke-direct {v0}, Landroidx/transition/Slide$3;-><init>()V

    #@21
    sput-object v0, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

    #@23
    .line 122
    new-instance v0, Landroidx/transition/Slide$4;

    #@25
    invoke-direct {v0}, Landroidx/transition/Slide$4;-><init>()V

    #@28
    sput-object v0, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

    #@2a
    .line 129
    new-instance v0, Landroidx/transition/Slide$5;

    #@2c
    invoke-direct {v0}, Landroidx/transition/Slide$5;-><init>()V

    #@2f
    sput-object v0, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

    #@31
    .line 144
    new-instance v0, Landroidx/transition/Slide$6;

    #@33
    invoke-direct {v0}, Landroidx/transition/Slide$6;-><init>()V

    #@36
    sput-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    #@38
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 155
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    #@3
    .line 58
    sget-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    #@5
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@7
    const/16 v0, 0x50

    #@9
    .line 59
    iput v0, p0, Landroidx/transition/Slide;->mSlideEdge:I

    #@b
    .line 156
    invoke-virtual {p0, v0}, Landroidx/transition/Slide;->setSlideEdge(I)V

    #@e
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 162
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    #@3
    .line 58
    sget-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    #@5
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@7
    const/16 v0, 0x50

    #@9
    .line 59
    iput v0, p0, Landroidx/transition/Slide;->mSlideEdge:I

    #@b
    .line 163
    invoke-virtual {p0, p1}, Landroidx/transition/Slide;->setSlideEdge(I)V

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    .line 169
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 58
    sget-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    #@5
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@7
    const/16 v0, 0x50

    #@9
    .line 59
    iput v0, p0, Landroidx/transition/Slide;->mSlideEdge:I

    #@b
    .line 170
    sget-object v1, Landroidx/transition/Styleable;->SLIDE:[I

    #@d
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object p1

    #@11
    .line 171
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    #@13
    const-string v1, "slideEdge"

    #@15
    const/4 v2, 0x0

    #@16
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@19
    move-result p2

    #@1a
    .line 173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    .line 175
    invoke-virtual {p0, p2}, Landroidx/transition/Slide;->setSlideEdge(I)V

    #@20
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 4

    #@0
    .line 179
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [I

    #@5
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    .line 182
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    const-string v0, "android:slide:screenPosition"

    #@c
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 193
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    #@3
    .line 194
    invoke-direct {p0, p1}, Landroidx/transition/Slide;->captureValues(Landroidx/transition/TransitionValues;)V

    #@6
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 187
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    #@3
    .line 188
    invoke-direct {p0, p1}, Landroidx/transition/Slide;->captureValues(Landroidx/transition/TransitionValues;)V

    #@6
    return-void
.end method

.method public getSlideEdge()I
    .registers 2

    #@0
    .line 244
    iget v0, p0, Landroidx/transition/Slide;->mSlideEdge:I

    #@2
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 15

    #@0
    if-nez p4, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 253
    :cond_4
    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string v0, "android:slide:screenPosition"

    #@8
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p3

    #@c
    check-cast p3, [I

    #@e
    check-cast p3, [I

    #@10
    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@13
    move-result v6

    #@14
    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@17
    move-result v7

    #@18
    .line 256
    iget-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@1a
    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@1d
    move-result v4

    #@1e
    .line 257
    iget-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@20
    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@23
    move-result v5

    #@24
    const/4 p1, 0x0

    #@25
    .line 258
    aget v2, p3, p1

    #@27
    const/4 p1, 0x1

    #@28
    aget v3, p3, p1

    #@2a
    sget-object v8, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@2c
    move-object v0, p2

    #@2d
    move-object v1, p4

    #@2e
    move-object v9, p0

    #@2f
    .line 259
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    #@32
    move-result-object p1

    #@33
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 15

    #@0
    if-nez p3, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 269
    :cond_4
    iget-object p4, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string v0, "android:slide:screenPosition"

    #@8
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p4

    #@c
    check-cast p4, [I

    #@e
    check-cast p4, [I

    #@10
    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@13
    move-result v4

    #@14
    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@17
    move-result v5

    #@18
    .line 272
    iget-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@1a
    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@1d
    move-result v6

    #@1e
    .line 273
    iget-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@20
    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@23
    move-result v7

    #@24
    const/4 p1, 0x0

    #@25
    .line 274
    aget v2, p4, p1

    #@27
    const/4 p1, 0x1

    #@28
    aget v3, p4, p1

    #@2a
    sget-object v8, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@2c
    move-object v0, p2

    #@2d
    move-object v1, p3

    #@2e
    move-object v9, p0

    #@2f
    .line 275
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    #@32
    move-result-object p1

    #@33
    return-object p1
.end method

.method public setSlideEdge(I)V
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    if-eq p1, v0, :cond_39

    #@3
    const/4 v0, 0x5

    #@4
    if-eq p1, v0, :cond_34

    #@6
    const/16 v0, 0x30

    #@8
    if-eq p1, v0, :cond_2f

    #@a
    const/16 v0, 0x50

    #@c
    if-eq p1, v0, :cond_2a

    #@e
    const v0, 0x800003

    #@11
    if-eq p1, v0, :cond_25

    #@13
    const v0, 0x800005

    #@16
    if-ne p1, v0, :cond_1d

    #@18
    .line 223
    sget-object v0, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

    #@1a
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@1c
    goto :goto_3d

    #@1d
    .line 226
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string v0, "Invalid slide direction"

    #@21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw p1

    #@25
    .line 220
    :cond_25
    sget-object v0, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

    #@27
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@29
    goto :goto_3d

    #@2a
    .line 217
    :cond_2a
    sget-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    #@2c
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@2e
    goto :goto_3d

    #@2f
    .line 211
    :cond_2f
    sget-object v0, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

    #@31
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@33
    goto :goto_3d

    #@34
    .line 214
    :cond_34
    sget-object v0, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

    #@36
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@38
    goto :goto_3d

    #@39
    .line 208
    :cond_39
    sget-object v0, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

    #@3b
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    #@3d
    .line 228
    :goto_3d
    iput p1, p0, Landroidx/transition/Slide;->mSlideEdge:I

    #@3f
    .line 229
    new-instance v0, Landroidx/transition/SidePropagation;

    #@41
    invoke-direct {v0}, Landroidx/transition/SidePropagation;-><init>()V

    #@44
    .line 230
    invoke-virtual {v0, p1}, Landroidx/transition/SidePropagation;->setSide(I)V

    #@47
    .line 231
    invoke-virtual {p0, v0}, Landroidx/transition/Slide;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    #@4a
    return-void
.end method

.class public Landroidx/constraintlayout/utils/widget/MotionLabel;
.super Landroid/view/View;
.source "MotionLabel.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/FloatLayout;


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field static TAG:Ljava/lang/String; = "MotionLabel"


# instance fields
.field private mAutoSize:Z

.field private mAutoSizeTextType:I

.field mBackgroundPanX:F

.field mBackgroundPanY:F

.field private mBaseTextSize:F

.field private mDeltaLeft:F

.field private mFloatHeight:F

.field private mFloatWidth:F

.field private mFontFamily:Ljava/lang/String;

.field private mGravity:I

.field private mLayout:Landroid/text/Layout;

.field mNotBuilt:Z

.field mOutlinePositionMatrix:Landroid/graphics/Matrix;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field mPaint:Landroid/text/TextPaint;

.field mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field mRotate:F

.field private mRound:F

.field private mRoundPercent:F

.field private mStyleIndex:I

.field mTempPaint:Landroid/graphics/Paint;

.field mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextBackground:Landroid/graphics/drawable/Drawable;

.field private mTextBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextFillColor:I

.field private mTextOutlineColor:I

.field private mTextOutlineThickness:F

.field private mTextPanX:F

.field private mTextPanY:F

.field private mTextShader:Landroid/graphics/BitmapShader;

.field private mTextShaderMatrix:Landroid/graphics/Matrix;

.field private mTextSize:F

.field private mTextureEffect:I

.field private mTextureHeight:F

.field private mTextureWidth:F

.field private mTransformed:Ljava/lang/CharSequence;

.field private mTypefaceIndex:I

.field private mUseOutline:Z

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field mZoom:F

.field paintCache:Landroid/graphics/Paint;

.field paintTextSize:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 116
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@3
    .line 68
    new-instance v0, Landroid/text/TextPaint;

    #@5
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@a
    .line 69
    new-instance v0, Landroid/graphics/Path;

    #@c
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@11
    const v0, 0xffff

    #@14
    .line 70
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@16
    .line 71
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@18
    const/4 v0, 0x0

    #@19
    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@1b
    const/4 v1, 0x0

    #@1c
    .line 73
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@1e
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@20
    .line 74
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@22
    const/high16 v3, 0x42400000    # 48.0f

    #@24
    .line 78
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@26
    .line 80
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@28
    .line 83
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@2a
    const-string v3, "Hello World"

    #@2c
    .line 84
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 85
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    #@31
    .line 86
    new-instance v4, Landroid/graphics/Rect;

    #@33
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@36
    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@38
    .line 88
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@3a
    .line 89
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@3c
    .line 90
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@3e
    .line 91
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@40
    const v3, 0x800033

    #@43
    .line 98
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    #@45
    .line 99
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    #@47
    .line 100
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    #@49
    .line 108
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@4b
    .line 109
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@4d
    .line 110
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@4f
    .line 111
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@51
    .line 112
    new-instance v1, Landroid/graphics/Paint;

    #@53
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@56
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    #@58
    .line 113
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    #@5a
    .line 827
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@5c
    .line 828
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@5e
    .line 829
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@60
    .line 830
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@62
    const/4 v0, 0x0

    #@63
    .line 117
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 68
    new-instance v0, Landroid/text/TextPaint;

    #@5
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@a
    .line 69
    new-instance v0, Landroid/graphics/Path;

    #@c
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@11
    const v0, 0xffff

    #@14
    .line 70
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@16
    .line 71
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@18
    const/4 v0, 0x0

    #@19
    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@1b
    const/4 v1, 0x0

    #@1c
    .line 73
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@1e
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@20
    .line 74
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@22
    const/high16 v3, 0x42400000    # 48.0f

    #@24
    .line 78
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@26
    .line 80
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@28
    .line 83
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@2a
    const-string v3, "Hello World"

    #@2c
    .line 84
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 85
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    #@31
    .line 86
    new-instance v4, Landroid/graphics/Rect;

    #@33
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@36
    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@38
    .line 88
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@3a
    .line 89
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@3c
    .line 90
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@3e
    .line 91
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@40
    const v3, 0x800033

    #@43
    .line 98
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    #@45
    .line 99
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    #@47
    .line 100
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    #@49
    .line 108
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@4b
    .line 109
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@4d
    .line 110
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@4f
    .line 111
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@51
    .line 112
    new-instance v1, Landroid/graphics/Paint;

    #@53
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@56
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    #@58
    .line 113
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    #@5a
    .line 827
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@5c
    .line 828
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@5e
    .line 829
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@60
    .line 830
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@62
    .line 122
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    #@0
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 68
    new-instance p3, Landroid/text/TextPaint;

    #@5
    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    #@8
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@a
    .line 69
    new-instance p3, Landroid/graphics/Path;

    #@c
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    #@f
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@11
    const p3, 0xffff

    #@14
    .line 70
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@16
    .line 71
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@18
    const/4 p3, 0x0

    #@19
    .line 72
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 73
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@1e
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@20
    .line 74
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@22
    const/high16 v2, 0x42400000    # 48.0f

    #@24
    .line 78
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@26
    .line 80
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@28
    .line 83
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@2a
    const-string v2, "Hello World"

    #@2c
    .line 84
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 85
    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    #@31
    .line 86
    new-instance v3, Landroid/graphics/Rect;

    #@33
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@36
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@38
    .line 88
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@3a
    .line 89
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@3c
    .line 90
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@3e
    .line 91
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@40
    const v2, 0x800033

    #@43
    .line 98
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    #@45
    .line 99
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    #@47
    .line 100
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    #@49
    .line 108
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@4b
    .line 109
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@4d
    .line 110
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@4f
    .line 111
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@51
    .line 112
    new-instance v0, Landroid/graphics/Paint;

    #@53
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@56
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    #@58
    .line 113
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    #@5a
    .line 827
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@5c
    .line 828
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@5e
    .line 829
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@60
    .line 830
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@62
    .line 127
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@65
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/MotionLabel;)F
    .registers 1

    #@0
    .line 66
    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@2
    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/MotionLabel;)F
    .registers 1

    #@0
    .line 66
    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@2
    return p0
.end method

.method private adjustTexture(FFFF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    #@0
    .line 264
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    sub-float/2addr p3, p1

    #@6
    .line 268
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@8
    sub-float/2addr p4, p2

    #@9
    .line 269
    iput p4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@b
    .line 270
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    #@e
    return-void
.end method

.method private getHorizontalOffset()F
    .registers 7

    #@0
    .line 325
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    if-eqz v0, :cond_c

    #@a
    move v0, v1

    #@b
    goto :goto_11

    #@c
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@10
    div-float/2addr v0, v2

    #@11
    .line 327
    :goto_11
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@13
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@15
    const/4 v4, 0x0

    #@16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@19
    move-result v5

    #@1a
    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    #@1d
    move-result v2

    #@1e
    mul-float/2addr v0, v2

    #@1f
    .line 328
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@21
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2d

    #@27
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredWidth()I

    #@2a
    move-result v2

    #@2b
    int-to-float v2, v2

    #@2c
    goto :goto_2f

    #@2d
    :cond_2d
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@2f
    .line 329
    :goto_2f
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    #@32
    move-result v3

    #@33
    int-to-float v3, v3

    #@34
    sub-float/2addr v2, v3

    #@35
    .line 330
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    #@38
    move-result v3

    #@39
    int-to-float v3, v3

    #@3a
    sub-float/2addr v2, v3

    #@3b
    sub-float/2addr v2, v0

    #@3c
    .line 331
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@3e
    add-float/2addr v0, v1

    #@3f
    mul-float/2addr v2, v0

    #@40
    const/high16 v0, 0x40000000    # 2.0f

    #@42
    div-float/2addr v2, v0

    #@43
    return v2
.end method

.method private getVerticalOffset()F
    .registers 7

    #@0
    .line 335
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    if-eqz v0, :cond_c

    #@a
    move v0, v1

    #@b
    goto :goto_11

    #@c
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@10
    div-float/2addr v0, v2

    #@11
    .line 337
    :goto_11
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@13
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    #@16
    move-result-object v2

    #@17
    .line 339
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@19
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_25

    #@1f
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredHeight()I

    #@22
    move-result v3

    #@23
    int-to-float v3, v3

    #@24
    goto :goto_27

    #@25
    :cond_25
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@27
    .line 340
    :goto_27
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    #@2a
    move-result v4

    #@2b
    int-to-float v4, v4

    #@2c
    sub-float/2addr v3, v4

    #@2d
    .line 341
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    #@30
    move-result v4

    #@31
    int-to-float v4, v4

    #@32
    sub-float/2addr v3, v4

    #@33
    .line 343
    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    #@35
    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    #@37
    sub-float/2addr v4, v5

    #@38
    mul-float/2addr v4, v0

    #@39
    sub-float/2addr v3, v4

    #@3a
    .line 344
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@3c
    sub-float/2addr v1, v4

    #@3d
    mul-float/2addr v3, v1

    #@3e
    const/high16 v1, 0x40000000    # 2.0f

    #@40
    div-float/2addr v3, v1

    #@41
    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    #@43
    mul-float/2addr v0, v1

    #@44
    sub-float/2addr v3, v0

    #@45
    return v3
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 131
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setUpTheme(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    if-eqz p2, :cond_169

    #@5
    .line 134
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getContext()Landroid/content/Context;

    #@8
    move-result-object p1

    #@9
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel:[I

    #@b
    .line 135
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e
    move-result-object p1

    #@f
    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@12
    move-result p2

    #@13
    const/4 v0, 0x0

    #@14
    move v1, v0

    #@15
    :goto_15
    if-ge v1, p2, :cond_166

    #@17
    .line 140
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1a
    move-result v2

    #@1b
    .line 141
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_text:I

    #@1d
    if-ne v2, v3, :cond_28

    #@1f
    .line 142
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setText(Ljava/lang/CharSequence;)V

    #@26
    goto/16 :goto_162

    #@28
    .line 143
    :cond_28
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_fontFamily:I

    #@2a
    if-ne v2, v3, :cond_34

    #@2c
    .line 144
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFontFamily:Ljava/lang/String;

    #@32
    goto/16 :goto_162

    #@34
    .line 145
    :cond_34
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_scaleFromTextSize:I

    #@36
    if-ne v2, v3, :cond_44

    #@38
    .line 146
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@3a
    float-to-int v3, v3

    #@3b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3e
    move-result v2

    #@3f
    int-to-float v2, v2

    #@40
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@42
    goto/16 :goto_162

    #@44
    .line 147
    :cond_44
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textSize:I

    #@46
    if-ne v2, v3, :cond_54

    #@48
    .line 148
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@4a
    float-to-int v3, v3

    #@4b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4e
    move-result v2

    #@4f
    int-to-float v2, v2

    #@50
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@52
    goto/16 :goto_162

    #@54
    .line 149
    :cond_54
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textStyle:I

    #@56
    if-ne v2, v3, :cond_62

    #@58
    .line 150
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    #@5a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5d
    move-result v2

    #@5e
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    #@60
    goto/16 :goto_162

    #@62
    .line 151
    :cond_62
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_typeface:I

    #@64
    if-ne v2, v3, :cond_70

    #@66
    .line 152
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    #@68
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6b
    move-result v2

    #@6c
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    #@6e
    goto/16 :goto_162

    #@70
    .line 153
    :cond_70
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textColor:I

    #@72
    if-ne v2, v3, :cond_7e

    #@74
    .line 154
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@76
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    #@79
    move-result v2

    #@7a
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@7c
    goto/16 :goto_162

    #@7e
    .line 155
    :cond_7e
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRound:I

    #@80
    if-ne v2, v3, :cond_91

    #@82
    .line 156
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@84
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@87
    move-result v2

    #@88
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@8a
    .line 158
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@8c
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRound(F)V

    #@8f
    goto/16 :goto_162

    #@91
    .line 160
    :cond_91
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRoundPercent:I

    #@93
    if-ne v2, v3, :cond_a4

    #@95
    .line 161
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@97
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@9a
    move-result v2

    #@9b
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@9d
    .line 163
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@9f
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    #@a2
    goto/16 :goto_162

    #@a4
    .line 165
    :cond_a4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_gravity:I

    #@a6
    if-ne v2, v3, :cond_b2

    #@a8
    const/4 v3, -0x1

    #@a9
    .line 166
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ac
    move-result v2

    #@ad
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setGravity(I)V

    #@b0
    goto/16 :goto_162

    #@b2
    .line 167
    :cond_b2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_autoSizeTextType:I

    #@b4
    if-ne v2, v3, :cond_be

    #@b6
    .line 168
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b9
    move-result v2

    #@ba
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    #@bc
    goto/16 :goto_162

    #@be
    .line 169
    :cond_be
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineColor:I

    #@c0
    const/4 v4, 0x1

    #@c1
    if-ne v2, v3, :cond_cf

    #@c3
    .line 170
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@c5
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@c8
    move-result v2

    #@c9
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@cb
    .line 171
    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@cd
    goto/16 :goto_162

    #@cf
    .line 172
    :cond_cf
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineThickness:I

    #@d1
    if-ne v2, v3, :cond_df

    #@d3
    .line 173
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@d5
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@d8
    move-result v2

    #@d9
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@db
    .line 174
    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@dd
    goto/16 :goto_162

    #@df
    .line 175
    :cond_df
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackground:I

    #@e1
    if-ne v2, v3, :cond_ed

    #@e3
    .line 176
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@e6
    move-result-object v2

    #@e7
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    #@e9
    .line 177
    iput-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@eb
    goto/16 :goto_162

    #@ed
    .line 178
    :cond_ed
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanX:I

    #@ef
    if-ne v2, v3, :cond_fb

    #@f1
    .line 179
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@f3
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@f6
    move-result v2

    #@f7
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@f9
    goto/16 :goto_162

    #@fb
    .line 180
    :cond_fb
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanY:I

    #@fd
    if-ne v2, v3, :cond_108

    #@ff
    .line 181
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@101
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@104
    move-result v2

    #@105
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@107
    goto :goto_162

    #@108
    .line 182
    :cond_108
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanX:I

    #@10a
    if-ne v2, v3, :cond_115

    #@10c
    .line 183
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@10e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@111
    move-result v2

    #@112
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@114
    goto :goto_162

    #@115
    .line 184
    :cond_115
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanY:I

    #@117
    if-ne v2, v3, :cond_122

    #@119
    .line 185
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@11b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@11e
    move-result v2

    #@11f
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@121
    goto :goto_162

    #@122
    .line 186
    :cond_122
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundRotate:I

    #@124
    if-ne v2, v3, :cond_12f

    #@126
    .line 187
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@128
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@12b
    move-result v2

    #@12c
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@12e
    goto :goto_162

    #@12f
    .line 188
    :cond_12f
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundZoom:I

    #@131
    if-ne v2, v3, :cond_13c

    #@133
    .line 189
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@135
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@138
    move-result v2

    #@139
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@13b
    goto :goto_162

    #@13c
    .line 190
    :cond_13c
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureHeight:I

    #@13e
    if-ne v2, v3, :cond_149

    #@140
    .line 191
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@142
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@145
    move-result v2

    #@146
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@148
    goto :goto_162

    #@149
    .line 192
    :cond_149
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureWidth:I

    #@14b
    if-ne v2, v3, :cond_156

    #@14d
    .line 193
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@14f
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@152
    move-result v2

    #@153
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@155
    goto :goto_162

    #@156
    .line 194
    :cond_156
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureEffect:I

    #@158
    if-ne v2, v3, :cond_162

    #@15a
    .line 195
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    #@15c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@15f
    move-result v2

    #@160
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    #@162
    :cond_162
    :goto_162
    add-int/lit8 v1, v1, 0x1

    #@164
    goto/16 :goto_15

    #@166
    .line 198
    :cond_166
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@169
    .line 201
    :cond_169
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setupTexture()V

    #@16c
    .line 202
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setupPath()V

    #@16f
    return-void
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "familyName",
            "typefaceIndex",
            "styleIndex"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_c

    #@2
    .line 580
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_d

    #@8
    .line 582
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    #@b
    return-void

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :cond_d
    const/4 v0, 0x2

    #@e
    const/4 v1, 0x1

    #@f
    if-eq p2, v1, :cond_1d

    #@11
    if-eq p2, v0, :cond_1a

    #@13
    const/4 v2, 0x3

    #@14
    if-eq p2, v2, :cond_17

    #@16
    goto :goto_1f

    #@17
    .line 594
    :cond_17
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@19
    goto :goto_1f

    #@1a
    .line 591
    :cond_1a
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@1c
    goto :goto_1f

    #@1d
    .line 588
    :cond_1d
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@1f
    :goto_1f
    const/4 p2, 0x0

    #@20
    const/4 v2, 0x0

    #@21
    if-lez p3, :cond_51

    #@23
    if-nez p1, :cond_2a

    #@25
    .line 600
    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@28
    move-result-object p1

    #@29
    goto :goto_2e

    #@2a
    .line 602
    :cond_2a
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@2d
    move-result-object p1

    #@2e
    .line 604
    :goto_2e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    #@31
    if-eqz p1, :cond_38

    #@33
    .line 606
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    #@36
    move-result p1

    #@37
    goto :goto_39

    #@38
    :cond_38
    move p1, v2

    #@39
    :goto_39
    not-int p1, p1

    #@3a
    and-int/2addr p1, p3

    #@3b
    .line 608
    iget-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@3d
    and-int/lit8 v3, p1, 0x1

    #@3f
    if-eqz v3, :cond_42

    #@41
    goto :goto_43

    #@42
    :cond_42
    move v1, v2

    #@43
    :goto_43
    invoke-virtual {p3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@46
    .line 609
    iget-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@48
    and-int/2addr p1, v0

    #@49
    if-eqz p1, :cond_4d

    #@4b
    const/high16 p2, -0x41800000    # -0.25f

    #@4d
    :cond_4d
    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@50
    goto :goto_5e

    #@51
    .line 611
    :cond_51
    iget-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@53
    invoke-virtual {p3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@56
    .line 612
    iget-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@58
    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@5b
    .line 613
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    #@5e
    :goto_5e
    return-void
.end method

.method private setUpTheme(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 348
    new-instance p2, Landroid/util/TypedValue;

    #@2
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8
    move-result-object p1

    #@9
    .line 350
    sget v0, Landroidx/appcompat/R$attr;->colorPrimary:I

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@f
    .line 351
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@11
    iget p2, p2, Landroid/util/TypedValue;->data:I

    #@13
    iput p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@15
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    #@18
    return-void
.end method

.method private setupTexture()V
    .registers 6

    #@0
    .line 227
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8d

    #@4
    .line 228
    new-instance v0, Landroid/graphics/Matrix;

    #@6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    #@b
    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@10
    move-result v0

    #@11
    .line 230
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    #@13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@16
    move-result v1

    #@17
    const/16 v2, 0x80

    #@19
    if-gtz v0, :cond_2e

    #@1b
    .line 232
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2e

    #@21
    .line 234
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@23
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2b

    #@29
    move v0, v2

    #@2a
    goto :goto_2e

    #@2b
    :cond_2b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@2d
    float-to-int v0, v0

    #@2e
    :cond_2e
    :goto_2e
    if-gtz v1, :cond_43

    #@30
    .line 239
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_43

    #@36
    .line 241
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@38
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3f

    #@3e
    goto :goto_42

    #@3f
    :cond_3f
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@41
    float-to-int v2, v1

    #@42
    :goto_42
    move v1, v2

    #@43
    .line 246
    :cond_43
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    #@45
    if-eqz v2, :cond_4b

    #@47
    .line 247
    div-int/lit8 v0, v0, 0x2

    #@49
    .line 248
    div-int/lit8 v1, v1, 0x2

    #@4b
    .line 250
    :cond_4b
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@4d
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    #@53
    .line 251
    new-instance v0, Landroid/graphics/Canvas;

    #@55
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    #@57
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@5a
    .line 253
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    #@5c
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    #@5f
    move-result v2

    #@60
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    #@63
    move-result v3

    #@64
    const/4 v4, 0x0

    #@65
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@68
    .line 254
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    #@6a
    const/4 v2, 0x1

    #@6b
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    #@6e
    .line 255
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackground:Landroid/graphics/drawable/Drawable;

    #@70
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@73
    .line 256
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureEffect:I

    #@75
    if-eqz v0, :cond_80

    #@77
    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    #@79
    const/4 v1, 0x4

    #@7a
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    #@7d
    move-result-object v0

    #@7e
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    #@80
    .line 259
    :cond_80
    new-instance v0, Landroid/graphics/BitmapShader;

    #@82
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    #@84
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@86
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@88
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@8b
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    #@8d
    :cond_8d
    return-void
.end method

.method private updateShaderMatrix()V
    .registers 12

    #@0
    .line 929
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_b

    #@9
    move v0, v1

    #@a
    goto :goto_d

    #@b
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@d
    .line 930
    :goto_d
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@f
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_17

    #@15
    move v2, v1

    #@16
    goto :goto_19

    #@17
    :cond_17
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@19
    .line 931
    :goto_19
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@1b
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_24

    #@21
    const/high16 v3, 0x3f800000    # 1.0f

    #@23
    goto :goto_26

    #@24
    :cond_24
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@26
    .line 932
    :goto_26
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@28
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2f

    #@2e
    goto :goto_31

    #@2f
    :cond_2f
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@31
    .line 934
    :goto_31
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    #@33
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    #@36
    .line 935
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    #@38
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    #@3b
    move-result v4

    #@3c
    int-to-float v4, v4

    #@3d
    .line 936
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBackgroundBitmap:Landroid/graphics/Bitmap;

    #@3f
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    #@42
    move-result v5

    #@43
    int-to-float v5, v5

    #@44
    .line 937
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@46
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_4f

    #@4c
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@4e
    goto :goto_51

    #@4f
    :cond_4f
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@51
    .line 938
    :goto_51
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@53
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    #@56
    move-result v7

    #@57
    if-eqz v7, :cond_5c

    #@59
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@5b
    goto :goto_5e

    #@5c
    :cond_5c
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@5e
    :goto_5e
    mul-float v8, v4, v7

    #@60
    mul-float v9, v5, v6

    #@62
    cmpg-float v8, v8, v9

    #@64
    if-gez v8, :cond_69

    #@66
    div-float v8, v6, v4

    #@68
    goto :goto_6b

    #@69
    :cond_69
    div-float v8, v7, v5

    #@6b
    :goto_6b
    mul-float/2addr v3, v8

    #@6c
    .line 941
    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    #@6e
    invoke-virtual {v8, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@71
    mul-float/2addr v4, v3

    #@72
    sub-float v8, v6, v4

    #@74
    mul-float/2addr v3, v5

    #@75
    sub-float v5, v7, v3

    #@77
    .line 944
    iget v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@79
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    #@7c
    move-result v9

    #@7d
    const/high16 v10, 0x40000000    # 2.0f

    #@7f
    if-nez v9, :cond_84

    #@81
    .line 945
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@83
    div-float/2addr v5, v10

    #@84
    .line 947
    :cond_84
    iget v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@86
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    #@89
    move-result v9

    #@8a
    if-nez v9, :cond_8f

    #@8c
    .line 948
    iget v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@8e
    div-float/2addr v8, v10

    #@8f
    :cond_8f
    mul-float/2addr v0, v8

    #@90
    add-float/2addr v0, v6

    #@91
    sub-float/2addr v0, v4

    #@92
    const/high16 v4, 0x3f000000    # 0.5f

    #@94
    mul-float/2addr v0, v4

    #@95
    mul-float/2addr v2, v5

    #@96
    add-float/2addr v2, v7

    #@97
    sub-float/2addr v2, v3

    #@98
    mul-float/2addr v2, v4

    #@99
    .line 953
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    #@9b
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@9e
    .line 954
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    #@a0
    div-float/2addr v6, v10

    #@a1
    div-float/2addr v7, v10

    #@a2
    invoke-virtual {v0, v1, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    #@a5
    .line 955
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    #@a7
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShaderMatrix:Landroid/graphics/Matrix;

    #@a9
    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@ac
    return-void
.end method


# virtual methods
.method blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapOriginal",
            "factor"
        }
    .end annotation

    #@0
    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    .line 207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@a
    move-result v0

    #@b
    .line 208
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@e
    move-result v1

    #@f
    .line 210
    div-int/lit8 v0, v0, 0x2

    #@11
    .line 211
    div-int/lit8 v1, v1, 0x2

    #@13
    const/4 v2, 0x1

    #@14
    .line 213
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@17
    move-result-object p1

    #@18
    const/4 v3, 0x0

    #@19
    :goto_19
    if-ge v3, p2, :cond_2d

    #@1b
    const/16 v4, 0x20

    #@1d
    if-lt v0, v4, :cond_2d

    #@1f
    if-ge v1, v4, :cond_22

    #@21
    goto :goto_2d

    #@22
    .line 219
    :cond_22
    div-int/lit8 v0, v0, 0x2

    #@24
    .line 220
    div-int/lit8 v1, v1, 0x2

    #@26
    .line 221
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@29
    move-result-object p1

    #@2a
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    :goto_2d
    return-object p1
.end method

.method buildShape(F)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    #@0
    .line 375
    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    if-nez v0, :cond_b

    #@6
    cmpl-float v0, p1, v1

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 378
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@d
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    #@10
    .line 379
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@12
    .line 380
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@15
    move-result v5

    #@16
    .line 381
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@18
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@1a
    const/4 v9, 0x0

    #@1b
    invoke-virtual {v0, v3, v9, v5, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@1e
    .line 382
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v6, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@25
    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    #@28
    cmpl-float v0, p1, v1

    #@2a
    if-eqz v0, :cond_59

    #@2c
    .line 384
    sget-object v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const-string v2, " scale "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 385
    new-instance v0, Landroid/graphics/Matrix;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@51
    .line 386
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@54
    .line 387
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@56
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@59
    .line 389
    :cond_59
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@5b
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@5d
    add-int/lit8 v0, v0, -0x1

    #@5f
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@61
    .line 390
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@63
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@65
    add-int/lit8 v0, v0, 0x1

    #@67
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@69
    .line 391
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@6b
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@6d
    add-int/lit8 v0, v0, 0x1

    #@6f
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@71
    .line 392
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@73
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@75
    add-int/lit8 v0, v0, -0x1

    #@77
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@79
    .line 394
    new-instance p1, Landroid/graphics/RectF;

    #@7b
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@7e
    .line 395
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    #@81
    move-result v0

    #@82
    int-to-float v0, v0

    #@83
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    #@85
    .line 396
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    #@88
    move-result v0

    #@89
    int-to-float v0, v0

    #@8a
    iput v0, p1, Landroid/graphics/RectF;->right:F

    #@8c
    .line 397
    iput-boolean v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    #@8e
    return-void
.end method

.method public getRound()F
    .registers 2

    #@0
    .line 803
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@2
    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    #@0
    .line 794
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@2
    return v0
.end method

.method public getScaleFromTextSize()F
    .registers 2

    #@0
    .line 1043
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@2
    return v0
.end method

.method public getTextBackgroundPanX()F
    .registers 2

    #@0
    .line 842
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@2
    return v0
.end method

.method public getTextBackgroundPanY()F
    .registers 2

    #@0
    .line 855
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@2
    return v0
.end method

.method public getTextBackgroundRotate()F
    .registers 2

    #@0
    .line 873
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@2
    return v0
.end method

.method public getTextBackgroundZoom()F
    .registers 2

    #@0
    .line 864
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@2
    return v0
.end method

.method public getTextOutlineColor()I
    .registers 2

    #@0
    .line 823
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@2
    return v0
.end method

.method public getTextPanX()F
    .registers 2

    #@0
    .line 964
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@2
    return v0
.end method

.method public getTextPanY()F
    .registers 2

    #@0
    .line 983
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@2
    return v0
.end method

.method public getTextureHeight()F
    .registers 2

    #@0
    .line 1002
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@2
    return v0
.end method

.method public getTextureWidth()F
    .registers 2

    #@0
    .line 1022
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@2
    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 634
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public layout(FFFF)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    add-float v1, p1, v0

    #@4
    float-to-int v1, v1

    #@5
    int-to-float v2, v1

    #@6
    sub-float v2, p1, v2

    #@8
    .line 444
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mDeltaLeft:F

    #@a
    add-float v2, p3, v0

    #@c
    float-to-int v2, v2

    #@d
    sub-int v3, v2, v1

    #@f
    add-float v4, p4, v0

    #@11
    float-to-int v4, v4

    #@12
    add-float/2addr v0, p2

    #@13
    float-to-int v0, v0

    #@14
    sub-int v5, v4, v0

    #@16
    sub-float v6, p3, p1

    #@18
    .line 447
    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@1a
    sub-float v7, p4, p2

    #@1c
    .line 448
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@1e
    .line 449
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->adjustTexture(FFFF)V

    #@21
    .line 450
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredHeight()I

    #@24
    move-result p1

    #@25
    if-ne p1, v5, :cond_32

    #@27
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getMeasuredWidth()I

    #@2a
    move-result p1

    #@2b
    if-eq p1, v3, :cond_2e

    #@2d
    goto :goto_32

    #@2e
    .line 456
    :cond_2e
    invoke-super {p0, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    #@31
    goto :goto_42

    #@32
    :cond_32
    :goto_32
    const/high16 p1, 0x40000000    # 2.0f

    #@34
    .line 451
    invoke-static {v3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@37
    move-result p2

    #@38
    .line 452
    invoke-static {v5, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3b
    move-result p1

    #@3c
    .line 453
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->measure(II)V

    #@3f
    .line 454
    invoke-super {p0, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    #@42
    .line 458
    :goto_42
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    #@44
    if-eqz p1, :cond_d5

    #@46
    .line 459
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@48
    if-nez p1, :cond_67

    #@4a
    .line 460
    new-instance p1, Landroid/graphics/Paint;

    #@4c
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@4f
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@51
    .line 461
    new-instance p1, Landroid/graphics/Rect;

    #@53
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@56
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@58
    .line 462
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@5a
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@5c
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    #@5f
    .line 463
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@61
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    #@64
    move-result p1

    #@65
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    #@67
    .line 465
    :cond_67
    iput v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@69
    .line 466
    iput v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@6b
    .line 468
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@6d
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@6f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@72
    move-result p3

    #@73
    iget-object p4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@75
    const/4 v0, 0x0

    #@76
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@79
    .line 469
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@7b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@7e
    move-result p1

    #@7f
    .line 470
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@81
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@84
    move-result p2

    #@85
    int-to-float p2, p2

    #@86
    const p3, 0x3fa66666    # 1.3f

    #@89
    mul-float/2addr p2, p3

    #@8a
    .line 471
    iget p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@8c
    int-to-float p3, p3

    #@8d
    sub-float/2addr v6, p3

    #@8e
    iget p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@90
    int-to-float p3, p3

    #@91
    sub-float/2addr v6, p3

    #@92
    .line 472
    iget p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@94
    int-to-float p3, p3

    #@95
    sub-float/2addr v7, p3

    #@96
    iget p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@98
    int-to-float p3, p3

    #@99
    sub-float/2addr v7, p3

    #@9a
    int-to-float p1, p1

    #@9b
    mul-float p3, p1, v7

    #@9d
    mul-float p4, p2, v6

    #@9f
    cmpl-float p3, p3, p4

    #@a1
    if-lez p3, :cond_ad

    #@a3
    .line 474
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@a5
    iget p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    #@a7
    mul-float/2addr p3, v6

    #@a8
    div-float/2addr p3, p1

    #@a9
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    #@ac
    goto :goto_b6

    #@ad
    .line 476
    :cond_ad
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@af
    iget p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    #@b1
    mul-float/2addr p3, v7

    #@b2
    div-float/2addr p3, p2

    #@b3
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    #@b6
    .line 478
    :goto_b6
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@b8
    if-nez p1, :cond_c2

    #@ba
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@bc
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@bf
    move-result p1

    #@c0
    if-nez p1, :cond_d5

    #@c2
    .line 479
    :cond_c2
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@c4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@c7
    move-result p1

    #@c8
    if-eqz p1, :cond_cd

    #@ca
    const/high16 p1, 0x3f800000    # 1.0f

    #@cc
    goto :goto_d2

    #@cd
    :cond_cd
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@cf
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@d1
    div-float/2addr p1, p2

    #@d2
    :goto_d2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    #@d5
    :cond_d5
    return-void
.end method

.method public layout(IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    #@0
    .line 406
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    #@3
    .line 407
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_e

    #@b
    const/high16 v1, 0x3f800000    # 1.0f

    #@d
    goto :goto_13

    #@e
    .line 408
    :cond_e
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@10
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@12
    div-float/2addr v1, v2

    #@13
    :goto_13
    sub-int v2, p3, p1

    #@15
    int-to-float v2, v2

    #@16
    .line 409
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@18
    sub-int v2, p4, p2

    #@1a
    int-to-float v2, v2

    #@1b
    .line 410
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@1d
    .line 411
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    #@1f
    if-eqz v2, :cond_a5

    #@21
    .line 413
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@23
    if-nez v2, :cond_42

    #@25
    .line 414
    new-instance v2, Landroid/graphics/Paint;

    #@27
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@2a
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@2c
    .line 415
    new-instance v2, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@33
    .line 416
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@35
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@37
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    #@3a
    .line 417
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@3c
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    #@3f
    move-result v2

    #@40
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    #@42
    .line 420
    :cond_42
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempPaint:Landroid/graphics/Paint;

    #@44
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@49
    move-result v4

    #@4a
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@4c
    const/4 v6, 0x0

    #@4d
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@50
    .line 421
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@52
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@55
    move-result v2

    #@56
    .line 422
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTempRect:Landroid/graphics/Rect;

    #@58
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@5b
    move-result v3

    #@5c
    int-to-float v3, v3

    #@5d
    const v4, 0x3fa66666    # 1.3f

    #@60
    mul-float/2addr v3, v4

    #@61
    float-to-int v3, v3

    #@62
    .line 424
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatWidth:F

    #@64
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@66
    int-to-float v5, v5

    #@67
    sub-float/2addr v4, v5

    #@68
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@6a
    int-to-float v5, v5

    #@6b
    sub-float/2addr v4, v5

    #@6c
    .line 425
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFloatHeight:F

    #@6e
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@70
    int-to-float v6, v6

    #@71
    sub-float/2addr v5, v6

    #@72
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@74
    int-to-float v6, v6

    #@75
    sub-float/2addr v5, v6

    #@76
    if-eqz v0, :cond_96

    #@78
    int-to-float v2, v2

    #@79
    mul-float v6, v2, v5

    #@7b
    int-to-float v3, v3

    #@7c
    mul-float v7, v3, v4

    #@7e
    cmpl-float v6, v6, v7

    #@80
    if-lez v6, :cond_8c

    #@82
    .line 428
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@84
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    #@86
    mul-float/2addr v5, v4

    #@87
    div-float/2addr v5, v2

    #@88
    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    #@8b
    goto :goto_a5

    #@8c
    .line 430
    :cond_8c
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@8e
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintTextSize:F

    #@90
    mul-float/2addr v4, v5

    #@91
    div-float/2addr v4, v3

    #@92
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    #@95
    goto :goto_a5

    #@96
    :cond_96
    int-to-float v1, v2

    #@97
    mul-float v2, v1, v5

    #@99
    int-to-float v3, v3

    #@9a
    mul-float v6, v3, v4

    #@9c
    cmpl-float v2, v2, v6

    #@9e
    if-lez v2, :cond_a3

    #@a0
    div-float/2addr v4, v1

    #@a1
    move v1, v4

    #@a2
    goto :goto_a5

    #@a3
    :cond_a3
    div-float/2addr v5, v3

    #@a4
    move v1, v5

    #@a5
    .line 436
    :cond_a5
    :goto_a5
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@a7
    if-nez v2, :cond_ab

    #@a9
    if-nez v0, :cond_b5

    #@ab
    :cond_ab
    int-to-float p1, p1

    #@ac
    int-to-float p2, p2

    #@ad
    int-to-float p3, p3

    #@ae
    int-to-float p4, p4

    #@af
    .line 437
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->adjustTexture(FFFF)V

    #@b2
    .line 438
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    #@b5
    :cond_b5
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 486
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    if-eqz v0, :cond_c

    #@a
    move v0, v1

    #@b
    goto :goto_11

    #@c
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@10
    div-float/2addr v0, v2

    #@11
    .line 487
    :goto_11
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@14
    .line 488
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@16
    if-nez v2, :cond_37

    #@18
    cmpl-float v1, v0, v1

    #@1a
    if-nez v1, :cond_37

    #@1c
    .line 489
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@1e
    int-to-float v0, v0

    #@1f
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    #@22
    move-result v1

    #@23
    add-float/2addr v0, v1

    #@24
    .line 490
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@26
    int-to-float v1, v1

    #@27
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    #@2a
    move-result v2

    #@2b
    add-float/2addr v1, v2

    #@2c
    .line 491
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@2e
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mDeltaLeft:F

    #@30
    add-float/2addr v3, v0

    #@31
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@33
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@36
    return-void

    #@37
    .line 494
    :cond_37
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mNotBuilt:Z

    #@39
    if-eqz v1, :cond_3e

    #@3b
    .line 495
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    #@3e
    .line 497
    :cond_3e
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@40
    if-nez v1, :cond_49

    #@42
    .line 498
    new-instance v1, Landroid/graphics/Matrix;

    #@44
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@47
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@49
    .line 500
    :cond_49
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@4b
    if-eqz v1, :cond_e9

    #@4d
    .line 501
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    #@4f
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@51
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    #@54
    .line 502
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@56
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    #@59
    .line 503
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@5b
    int-to-float v1, v1

    #@5c
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    #@5f
    move-result v2

    #@60
    add-float/2addr v1, v2

    #@61
    .line 504
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@63
    int-to-float v2, v2

    #@64
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    #@67
    move-result v3

    #@68
    add-float/2addr v2, v3

    #@69
    .line 505
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@6b
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@6e
    .line 506
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@70
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    #@73
    .line 507
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@75
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@77
    invoke-virtual {v0, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@7a
    .line 509
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    #@7c
    if-eqz v0, :cond_8c

    #@7e
    .line 510
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@80
    const/4 v3, 0x1

    #@81
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    #@84
    .line 511
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@86
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    #@88
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@8b
    goto :goto_93

    #@8c
    .line 513
    :cond_8c
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@8e
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@90
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    #@93
    .line 515
    :goto_93
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@95
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@97
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@9a
    .line 516
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@9c
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@9e
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    #@a1
    .line 517
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@a3
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@a5
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@a8
    .line 518
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextShader:Landroid/graphics/BitmapShader;

    #@aa
    if-eqz v0, :cond_b2

    #@ac
    .line 519
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@ae
    const/4 v3, 0x0

    #@af
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@b2
    .line 521
    :cond_b2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@b4
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@b6
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    #@b9
    .line 522
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@bb
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@bd
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@c0
    .line 523
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@c2
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@c4
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    #@c7
    .line 524
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@c9
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@cb
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@ce
    .line 526
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@d0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    #@d3
    .line 527
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@d5
    neg-float v0, v1

    #@d6
    neg-float v1, v2

    #@d7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@da
    .line 528
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@dc
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@de
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@e1
    .line 529
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@e3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->paintCache:Landroid/graphics/Paint;

    #@e5
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    #@e8
    goto :goto_139

    #@e9
    .line 531
    :cond_e9
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@eb
    int-to-float v0, v0

    #@ec
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    #@ef
    move-result v1

    #@f0
    add-float/2addr v0, v1

    #@f1
    .line 532
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@f3
    int-to-float v1, v1

    #@f4
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    #@f7
    move-result v2

    #@f8
    add-float/2addr v1, v2

    #@f9
    .line 533
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@fb
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    #@fe
    .line 534
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@100
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@103
    .line 535
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@105
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@107
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@10a
    .line 536
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@10c
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@10e
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    #@111
    .line 537
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@113
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@115
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@118
    .line 538
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@11a
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@11c
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    #@11f
    .line 539
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@121
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@123
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@126
    .line 540
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@128
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    #@12b
    .line 541
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@12d
    neg-float v0, v0

    #@12e
    neg-float v1, v1

    #@12f
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@132
    .line 542
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@134
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mOutlinePositionMatrix:Landroid/graphics/Matrix;

    #@136
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    #@139
    :goto_139
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    #@0
    .line 639
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    .line 640
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v1

    #@8
    .line 641
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result p1

    #@c
    .line 642
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result p2

    #@10
    const/4 v2, 0x0

    #@11
    .line 646
    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    #@13
    .line 648
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    #@16
    move-result v3

    #@17
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@19
    .line 649
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    #@1c
    move-result v3

    #@1d
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@1f
    .line 650
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    #@22
    move-result v3

    #@23
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@25
    .line 651
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    #@28
    move-result v3

    #@29
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@2b
    const/high16 v3, 0x40000000    # 2.0f

    #@2d
    if-ne v0, v3, :cond_3a

    #@2f
    if-eq v1, v3, :cond_32

    #@31
    goto :goto_3a

    #@32
    .line 670
    :cond_32
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSizeTextType:I

    #@34
    if-eqz v0, :cond_75

    #@36
    const/4 v0, 0x1

    #@37
    .line 671
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mAutoSize:Z

    #@39
    goto :goto_75

    #@3a
    .line 653
    :cond_3a
    :goto_3a
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@3c
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@3e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@41
    move-result v6

    #@42
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@44
    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@47
    const v2, 0x3f7fff58    # 0.99999f

    #@4a
    if-eq v0, v3, :cond_55

    #@4c
    .line 656
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextBounds:Landroid/graphics/Rect;

    #@4e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@51
    move-result p1

    #@52
    int-to-float p1, p1

    #@53
    add-float/2addr p1, v2

    #@54
    float-to-int p1, p1

    #@55
    .line 658
    :cond_55
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@57
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@59
    add-int/2addr v0, v4

    #@5a
    add-int/2addr p1, v0

    #@5b
    if-eq v1, v3, :cond_75

    #@5d
    .line 661
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@5f
    const/4 v3, 0x0

    #@60
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@63
    move-result v0

    #@64
    int-to-float v0, v0

    #@65
    add-float/2addr v0, v2

    #@66
    float-to-int v0, v0

    #@67
    const/high16 v2, -0x80000000

    #@69
    if-ne v1, v2, :cond_6f

    #@6b
    .line 663
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@6e
    move-result v0

    #@6f
    .line 667
    :cond_6f
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@71
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@73
    add-int/2addr p2, v1

    #@74
    add-int/2addr p2, v0

    #@75
    .line 676
    :cond_75
    :goto_75
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setMeasuredDimension(II)V

    #@78
    return-void
.end method

.method public setGravity(I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    #@0
    const v0, 0x800007

    #@3
    and-int v1, p1, v0

    #@5
    const v2, 0x800003

    #@8
    if-nez v1, :cond_b

    #@a
    or-int/2addr p1, v2

    #@b
    :cond_b
    and-int/lit8 v1, p1, 0x70

    #@d
    if-nez v1, :cond_11

    #@f
    or-int/lit8 p1, p1, 0x30

    #@11
    .line 290
    :cond_11
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    #@13
    if-eq p1, v1, :cond_18

    #@15
    .line 295
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@18
    .line 298
    :cond_18
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mGravity:I

    #@1a
    and-int/lit8 v1, p1, 0x70

    #@1c
    const/4 v3, 0x0

    #@1d
    const/high16 v4, 0x3f800000    # 1.0f

    #@1f
    const/high16 v5, -0x40800000    # -1.0f

    #@21
    const/16 v6, 0x30

    #@23
    if-eq v1, v6, :cond_2f

    #@25
    const/16 v6, 0x50

    #@27
    if-eq v1, v6, :cond_2c

    #@29
    .line 307
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@2b
    goto :goto_31

    #@2c
    .line 304
    :cond_2c
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@2e
    goto :goto_31

    #@2f
    .line 301
    :cond_2f
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@31
    :goto_31
    and-int/2addr p1, v0

    #@32
    const/4 v0, 0x3

    #@33
    if-eq p1, v0, :cond_45

    #@35
    const/4 v0, 0x5

    #@36
    if-eq p1, v0, :cond_42

    #@38
    if-eq p1, v2, :cond_45

    #@3a
    const v0, 0x800005

    #@3d
    if-eq p1, v0, :cond_42

    #@3f
    .line 320
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@41
    goto :goto_47

    #@42
    .line 317
    :cond_42
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@44
    goto :goto_47

    #@45
    .line 313
    :cond_45
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@47
    :goto_47
    return-void
.end method

.method public setRound(F)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    #@0
    .line 738
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 739
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@8
    .line 740
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@a
    const/high16 v0, -0x40800000    # -1.0f

    #@c
    .line 741
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@e
    .line 742
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    #@11
    return-void

    #@12
    .line 745
    :cond_12
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@14
    cmpl-float v0, v0, p1

    #@16
    const/4 v1, 0x1

    #@17
    const/4 v2, 0x0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    move v0, v1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v0, v2

    #@1d
    .line 746
    :goto_1d
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@1f
    const/4 v3, 0x0

    #@20
    cmpl-float p1, p1, v3

    #@22
    if-eqz p1, :cond_6b

    #@24
    .line 749
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@26
    if-nez p1, :cond_2f

    #@28
    .line 750
    new-instance p1, Landroid/graphics/Path;

    #@2a
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@2d
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@2f
    .line 752
    :cond_2f
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@31
    if-nez p1, :cond_3a

    #@33
    .line 753
    new-instance p1, Landroid/graphics/RectF;

    #@35
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@38
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@3a
    .line 756
    :cond_3a
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@3c
    if-nez p1, :cond_48

    #@3e
    .line 757
    new-instance p1, Landroidx/constraintlayout/utils/widget/MotionLabel$2;

    #@40
    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/MotionLabel$2;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;)V

    #@43
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@45
    .line 765
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@48
    .line 767
    :cond_48
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    #@4b
    .line 770
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    #@4e
    move-result p1

    #@4f
    .line 771
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    #@52
    move-result v1

    #@53
    .line 772
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@55
    int-to-float p1, p1

    #@56
    int-to-float v1, v1

    #@57
    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    #@5a
    .line 773
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@5c
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    #@5f
    .line 774
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@61
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@63
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRound:F

    #@65
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@67
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    #@6a
    goto :goto_6e

    #@6b
    .line 777
    :cond_6b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    #@6e
    :goto_6e
    if-eqz v0, :cond_73

    #@70
    .line 782
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidateOutline()V

    #@73
    :cond_73
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    #@0
    .line 689
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v0, :cond_a

    #@8
    move v0, v1

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v0, v2

    #@b
    .line 690
    :goto_b
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@d
    const/4 v3, 0x0

    #@e
    cmpl-float p1, p1, v3

    #@10
    if-eqz p1, :cond_62

    #@12
    .line 692
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@14
    if-nez p1, :cond_1d

    #@16
    .line 693
    new-instance p1, Landroid/graphics/Path;

    #@18
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@1b
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@1d
    .line 695
    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@1f
    if-nez p1, :cond_28

    #@21
    .line 696
    new-instance p1, Landroid/graphics/RectF;

    #@23
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@26
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@28
    .line 699
    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@2a
    if-nez p1, :cond_36

    #@2c
    .line 700
    new-instance p1, Landroidx/constraintlayout/utils/widget/MotionLabel$1;

    #@2e
    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/MotionLabel$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;)V

    #@31
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@33
    .line 709
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@36
    .line 711
    :cond_36
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    #@39
    .line 713
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    #@3c
    move-result p1

    #@3d
    .line 714
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    #@40
    move-result v1

    #@41
    .line 715
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v2

    #@45
    int-to-float v2, v2

    #@46
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRoundPercent:F

    #@48
    mul-float/2addr v2, v4

    #@49
    const/high16 v4, 0x40000000    # 2.0f

    #@4b
    div-float/2addr v2, v4

    #@4c
    .line 716
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@4e
    int-to-float p1, p1

    #@4f
    int-to-float v1, v1

    #@50
    invoke-virtual {v4, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    #@53
    .line 717
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@55
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    #@58
    .line 718
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPath:Landroid/graphics/Path;

    #@5a
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRect:Landroid/graphics/RectF;

    #@5c
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@5e
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    #@61
    goto :goto_65

    #@62
    .line 721
    :cond_62
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setClipToOutline(Z)V

    #@65
    :goto_65
    if-eqz v0, :cond_6a

    #@67
    .line 726
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidateOutline()V

    #@6a
    :cond_6a
    return-void
.end method

.method public setScaleFromTextSize(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    #@0
    .line 1054
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    #@0
    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mText:Ljava/lang/String;

    #@6
    .line 356
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@9
    return-void
.end method

.method public setTextBackgroundPanX(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    #@0
    .line 886
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanX:F

    #@2
    .line 887
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    #@5
    .line 888
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@8
    return-void
.end method

.method public setTextBackgroundPanY(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    #@0
    .line 901
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBackgroundPanY:F

    #@2
    .line 902
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    #@5
    .line 903
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@8
    return-void
.end method

.method public setTextBackgroundRotate(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    #@0
    .line 923
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mRotate:F

    #@2
    .line 924
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    #@5
    .line 925
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@8
    return-void
.end method

.method public setTextBackgroundZoom(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoom"
        }
    .end annotation

    #@0
    .line 912
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mZoom:F

    #@2
    .line 913
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    #@5
    .line 914
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@8
    return-void
.end method

.method public setTextFillColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    #@0
    .line 562
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@2
    .line 563
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@5
    return-void
.end method

.method public setTextOutlineColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    #@0
    .line 572
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineColor:I

    #@2
    const/4 p1, 0x1

    #@3
    .line 573
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@5
    .line 574
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@8
    return-void
.end method

.method public setTextOutlineThickness(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    #@0
    .line 547
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@2
    const/4 v0, 0x1

    #@3
    .line 548
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@5
    .line 549
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@8
    move-result p1

    #@9
    if-eqz p1, :cond_12

    #@b
    const/high16 p1, 0x3f800000    # 1.0f

    #@d
    .line 550
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@f
    const/4 p1, 0x0

    #@10
    .line 551
    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mUseOutline:Z

    #@12
    .line 553
    :cond_12
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@15
    return-void
.end method

.method public setTextPanX(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPanX"
        }
    .end annotation

    #@0
    .line 973
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanX:F

    #@2
    .line 974
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@5
    return-void
.end method

.method public setTextPanY(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPanY"
        }
    .end annotation

    #@0
    .line 992
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextPanY:F

    #@2
    .line 993
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@5
    return-void
.end method

.method public setTextSize(F)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    #@0
    .line 814
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@2
    .line 815
    sget-object v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->TAG:Ljava/lang/String;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string v2, "  "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, " / "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 816
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@30
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@32
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_39

    #@38
    goto :goto_3b

    #@39
    :cond_39
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@3b
    :goto_3b
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@3e
    .line 817
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@40
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@43
    move-result p1

    #@44
    if-eqz p1, :cond_49

    #@46
    const/high16 p1, 0x3f800000    # 1.0f

    #@48
    goto :goto_4e

    #@49
    :cond_49
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@4b
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mBaseTextSize:F

    #@4d
    div-float/2addr p1, v0

    #@4e
    :goto_4e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->buildShape(F)V

    #@51
    .line 818
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->requestLayout()V

    #@54
    .line 819
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@57
    return-void
.end method

.method public setTextureHeight(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTextureHeight"
        }
    .end annotation

    #@0
    .line 1011
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureHeight:F

    #@2
    .line 1012
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    #@5
    .line 1013
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@8
    return-void
.end method

.method public setTextureWidth(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTextureWidth"
        }
    .end annotation

    #@0
    .line 1031
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextureWidth:F

    #@2
    .line 1032
    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->updateShaderMatrix()V

    #@5
    .line 1033
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@8
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tf"
        }
    .end annotation

    #@0
    .line 618
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    if-eq v0, p1, :cond_1a

    #@8
    .line 619
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@d
    .line 620
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz p1, :cond_1a

    #@11
    const/4 p1, 0x0

    #@12
    .line 621
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mLayout:Landroid/text/Layout;

    #@14
    .line 622
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->requestLayout()V

    #@17
    .line 623
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->invalidate()V

    #@1a
    :cond_1a
    return-void
.end method

.method setupPath()V
    .registers 4

    #@0
    .line 360
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingLeft:I

    #@6
    .line 361
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingRight()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingRight:I

    #@c
    .line 362
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingTop()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingTop:I

    #@12
    .line 363
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getPaddingBottom()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaddingBottom:I

    #@18
    .line 364
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mFontFamily:Ljava/lang/String;

    #@1a
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTypefaceIndex:I

    #@1c
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mStyleIndex:I

    #@1e
    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@21
    .line 365
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@23
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextFillColor:I

    #@25
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    #@28
    .line 366
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@2a
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextOutlineThickness:F

    #@2c
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    #@2f
    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@31
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@33
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@36
    .line 368
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@38
    const/16 v1, 0x80

    #@3a
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    #@3d
    .line 369
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mTextSize:F

    #@3f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTextSize(F)V

    #@42
    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->mPaint:Landroid/text/TextPaint;

    #@44
    const/4 v1, 0x1

    #@45
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@48
    return-void
.end method

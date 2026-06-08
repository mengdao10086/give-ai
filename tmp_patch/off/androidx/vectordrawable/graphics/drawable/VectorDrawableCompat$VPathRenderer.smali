.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field mIsStateful:Ljava/lang/Boolean;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field final mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

.field mRootName:Ljava/lang/String;

.field mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 1170
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@5
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@a
    const/4 v0, 0x0

    #@b
    .line 1181
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    #@d
    .line 1182
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    #@f
    .line 1183
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    #@11
    .line 1184
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    #@13
    const/16 v0, 0xff

    #@15
    .line 1185
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    #@17
    const/4 v0, 0x0

    #@18
    .line 1186
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    #@1a
    .line 1187
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    #@1c
    .line 1189
    new-instance v0, Landroidx/collection/ArrayMap;

    #@1e
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@21
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    #@23
    .line 1192
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@25
    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    #@28
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@2a
    .line 1193
    new-instance v0, Landroid/graphics/Path;

    #@2c
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@2f
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@31
    .line 1194
    new-instance v0, Landroid/graphics/Path;

    #@33
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@36
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@38
    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .registers 5

    #@0
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@a
    const/4 v0, 0x0

    #@b
    .line 1181
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    #@d
    .line 1182
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    #@f
    .line 1183
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    #@11
    .line 1184
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    #@13
    const/16 v0, 0xff

    #@15
    .line 1185
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    #@17
    const/4 v0, 0x0

    #@18
    .line 1186
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    #@1a
    .line 1187
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    #@1c
    .line 1189
    new-instance v0, Landroidx/collection/ArrayMap;

    #@1e
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@21
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    #@23
    .line 1217
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@25
    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@27
    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V

    #@2a
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@2c
    .line 1218
    new-instance v1, Landroid/graphics/Path;

    #@2e
    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@30
    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@33
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@35
    .line 1219
    new-instance v1, Landroid/graphics/Path;

    #@37
    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@39
    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@3c
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@3e
    .line 1220
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    #@40
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    #@42
    .line 1221
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    #@44
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    #@46
    .line 1222
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    #@48
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    #@4a
    .line 1223
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    #@4c
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    #@4e
    .line 1224
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    #@50
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    #@52
    .line 1225
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    #@54
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    #@56
    .line 1226
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    #@58
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    #@5a
    .line 1227
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    #@5c
    if-eqz v1, :cond_61

    #@5e
    .line 1228
    invoke-virtual {v0, v1, p0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 1230
    :cond_61
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    #@63
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    #@65
    return-void
.end method

.method private static cross(FFFF)F
    .registers 4

    #@0
    mul-float/2addr p0, p3

    #@1
    mul-float/2addr p1, p2

    #@2
    sub-float/2addr p0, p1

    #@3
    return p0
.end method

.method private drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 16

    #@0
    .line 1239
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    #@2
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@5
    .line 1241
    iget-object p2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    #@7
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@9
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@c
    .line 1244
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    #@f
    const/4 p2, 0x0

    #@10
    .line 1247
    :goto_10
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    if-ge p2, v0, :cond_45

    #@18
    .line 1248
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    #@20
    .line 1249
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@22
    if-eqz v1, :cond_32

    #@24
    .line 1250
    move-object v3, v0

    #@25
    check-cast v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@27
    .line 1251
    iget-object v4, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    #@29
    move-object v2, p0

    #@2a
    move-object v5, p3

    #@2b
    move v6, p4

    #@2c
    move v7, p5

    #@2d
    move-object v8, p6

    #@2e
    invoke-direct/range {v2 .. v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    #@31
    goto :goto_42

    #@32
    .line 1253
    :cond_32
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    #@34
    if-eqz v1, :cond_42

    #@36
    .line 1254
    move-object v4, v0

    #@37
    check-cast v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    #@39
    move-object v2, p0

    #@3a
    move-object v3, p1

    #@3b
    move-object v5, p3

    #@3c
    move v6, p4

    #@3d
    move v7, p5

    #@3e
    move-object v8, p6

    #@3f
    .line 1255
    invoke-direct/range {v2 .. v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawPath(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    #@42
    :cond_42
    :goto_42
    add-int/lit8 p2, p2, 0x1

    #@44
    goto :goto_10

    #@45
    .line 1259
    :cond_45
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    #@48
    return-void
.end method

.method private drawPath(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 14

    #@0
    int-to-float p4, p4

    #@1
    .line 1269
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    #@3
    div-float/2addr p4, v0

    #@4
    int-to-float p5, p5

    #@5
    .line 1270
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    #@7
    div-float/2addr p5, v0

    #@8
    .line 1271
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    #@b
    move-result v0

    #@c
    .line 1272
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    #@e
    .line 1274
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@10
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@13
    .line 1275
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@15
    invoke-virtual {v1, p4, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@18
    .line 1278
    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    #@1b
    move-result p1

    #@1c
    const/4 p4, 0x0

    #@1d
    cmpl-float p5, p1, p4

    #@1f
    if-nez p5, :cond_22

    #@21
    return-void

    #@22
    .line 1283
    :cond_22
    iget-object p5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@24
    invoke-virtual {p2, p5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->toPath(Landroid/graphics/Path;)V

    #@27
    .line 1284
    iget-object p5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@29
    .line 1286
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@2b
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    #@2e
    .line 1288
    invoke-virtual {p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->isClipPath()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_50

    #@34
    .line 1289
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@36
    iget p2, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mFillRule:I

    #@38
    if-nez p2, :cond_3d

    #@3a
    sget-object p2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    #@3c
    goto :goto_3f

    #@3d
    :cond_3d
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@3f
    :goto_3f
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@42
    .line 1291
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@44
    iget-object p2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@46
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    #@49
    .line 1292
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@4b
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    #@4e
    goto/16 :goto_182

    #@50
    .line 1294
    :cond_50
    check-cast p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    #@52
    .line 1295
    iget v1, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    #@54
    cmpl-float v1, v1, p4

    #@56
    const/high16 v2, 0x3f800000    # 1.0f

    #@58
    const/4 v3, 0x1

    #@59
    if-nez v1, :cond_61

    #@5b
    iget v1, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    #@5d
    cmpl-float v1, v1, v2

    #@5f
    if-eqz v1, :cond_a2

    #@61
    .line 1296
    :cond_61
    iget v1, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    #@63
    iget v4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    #@65
    add-float/2addr v1, v4

    #@66
    rem-float/2addr v1, v2

    #@67
    .line 1297
    iget v4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    #@69
    iget v5, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    #@6b
    add-float/2addr v4, v5

    #@6c
    rem-float/2addr v4, v2

    #@6d
    .line 1299
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@6f
    if-nez v2, :cond_78

    #@71
    .line 1300
    new-instance v2, Landroid/graphics/PathMeasure;

    #@73
    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    #@76
    iput-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@78
    .line 1302
    :cond_78
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@7a
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@7c
    const/4 v6, 0x0

    #@7d
    invoke-virtual {v2, v5, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    #@80
    .line 1304
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@82
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    #@85
    move-result v2

    #@86
    mul-float/2addr v1, v2

    #@87
    mul-float/2addr v4, v2

    #@88
    .line 1307
    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    #@8b
    cmpl-float v5, v1, v4

    #@8d
    if-lez v5, :cond_9a

    #@8f
    .line 1309
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@91
    invoke-virtual {v5, v1, v2, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    #@94
    .line 1310
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@96
    invoke-virtual {v1, p4, v4, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    #@99
    goto :goto_9f

    #@9a
    .line 1312
    :cond_9a
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@9c
    invoke-virtual {v2, v1, v4, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    #@9f
    .line 1314
    :goto_9f
    invoke-virtual {p5, p4, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    #@a2
    .line 1316
    :cond_a2
    iget-object p4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@a4
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@a6
    invoke-virtual {p4, p5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    #@a9
    .line 1318
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    #@ab
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    #@ae
    move-result p4

    #@af
    const/high16 p5, 0x437f0000    # 255.0f

    #@b1
    const/16 v1, 0xff

    #@b3
    const/4 v2, 0x0

    #@b4
    if-eqz p4, :cond_110

    #@b6
    .line 1319
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    #@b8
    .line 1320
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@ba
    if-nez v4, :cond_c8

    #@bc
    .line 1321
    new-instance v4, Landroid/graphics/Paint;

    #@be
    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    #@c1
    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@c3
    .line 1322
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@c5
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@c8
    .line 1325
    :cond_c8
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@ca
    .line 1326
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    #@cd
    move-result v5

    #@ce
    if-eqz v5, :cond_e7

    #@d0
    .line 1327
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    #@d3
    move-result-object p4

    #@d4
    .line 1328
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@d6
    invoke-virtual {p4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@d9
    .line 1329
    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@dc
    .line 1330
    iget p4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    #@de
    mul-float/2addr p4, p5

    #@df
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    #@e2
    move-result p4

    #@e3
    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    #@e6
    goto :goto_fa

    #@e7
    .line 1332
    :cond_e7
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@ea
    .line 1333
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@ed
    .line 1334
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    #@f0
    move-result p4

    #@f1
    iget v5, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    #@f3
    invoke-static {p4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    #@f6
    move-result p4

    #@f7
    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setColor(I)V

    #@fa
    .line 1336
    :goto_fa
    invoke-virtual {v4, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@fd
    .line 1337
    iget-object p4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@ff
    iget v5, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    #@101
    if-nez v5, :cond_106

    #@103
    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    #@105
    goto :goto_108

    #@106
    :cond_106
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@108
    :goto_108
    invoke-virtual {p4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@10b
    .line 1339
    iget-object p4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@10d
    invoke-virtual {p3, p4, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@110
    .line 1342
    :cond_110
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    #@112
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    #@115
    move-result p4

    #@116
    if-eqz p4, :cond_182

    #@118
    .line 1343
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    #@11a
    .line 1344
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@11c
    if-nez v4, :cond_12a

    #@11e
    .line 1345
    new-instance v4, Landroid/graphics/Paint;

    #@120
    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    #@123
    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@125
    .line 1346
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@127
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@12a
    .line 1349
    :cond_12a
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@12c
    .line 1350
    iget-object v4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@12e
    if-eqz v4, :cond_135

    #@130
    .line 1351
    iget-object v4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@132
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@135
    .line 1354
    :cond_135
    iget-object v4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@137
    if-eqz v4, :cond_13e

    #@139
    .line 1355
    iget-object v4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@13b
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@13e
    .line 1358
    :cond_13e
    iget v4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    #@140
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    #@143
    .line 1359
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    #@146
    move-result v4

    #@147
    if-eqz v4, :cond_160

    #@149
    .line 1360
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    #@14c
    move-result-object p4

    #@14d
    .line 1361
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@14f
    invoke-virtual {p4, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@152
    .line 1362
    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@155
    .line 1363
    iget p4, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    #@157
    mul-float/2addr p4, p5

    #@158
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    #@15b
    move-result p4

    #@15c
    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    #@15f
    goto :goto_173

    #@160
    .line 1365
    :cond_160
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@163
    .line 1366
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@166
    .line 1367
    invoke-virtual {p4}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    #@169
    move-result p4

    #@16a
    iget p5, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    #@16c
    invoke-static {p4, p5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    #@16f
    move-result p4

    #@170
    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setColor(I)V

    #@173
    .line 1370
    :goto_173
    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@176
    mul-float/2addr v0, p1

    #@177
    .line 1372
    iget p1, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    #@179
    mul-float/2addr p1, v0

    #@17a
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@17d
    .line 1373
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@17f
    invoke-virtual {p3, p1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@182
    :cond_182
    :goto_182
    return-void
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .registers 11

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [F

    #@3
    .line 1393
    fill-array-data v0, :array_40

    #@6
    .line 1394
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    #@9
    const/4 p1, 0x0

    #@a
    aget v1, v0, p1

    #@c
    float-to-double v1, v1

    #@d
    const/4 v3, 0x1

    #@e
    aget v4, v0, v3

    #@10
    float-to-double v4, v4

    #@11
    .line 1395
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@14
    move-result-wide v1

    #@15
    double-to-float v1, v1

    #@16
    const/4 v2, 0x2

    #@17
    aget v4, v0, v2

    #@19
    float-to-double v4, v4

    #@1a
    const/4 v6, 0x3

    #@1b
    aget v7, v0, v6

    #@1d
    float-to-double v7, v7

    #@1e
    .line 1396
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    #@21
    move-result-wide v4

    #@22
    double-to-float v4, v4

    #@23
    aget p1, v0, p1

    #@25
    aget v3, v0, v3

    #@27
    aget v2, v0, v2

    #@29
    aget v0, v0, v6

    #@2b
    .line 1397
    invoke-static {p1, v3, v2, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->cross(FFFF)F

    #@2e
    move-result p1

    #@2f
    .line 1399
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    #@32
    move-result v0

    #@33
    const/4 v1, 0x0

    #@34
    cmpl-float v2, v0, v1

    #@36
    if-lez v2, :cond_3e

    #@38
    .line 1403
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@3b
    move-result p1

    #@3c
    div-float v1, p1, v0

    #@3e
    :cond_3e
    return v1

    #@3f
    nop

    #@40
    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 12

    #@0
    .line 1264
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@2
    sget-object v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@4
    move-object v0, p0

    #@5
    move-object v3, p1

    #@6
    move v4, p2

    #@7
    move v5, p3

    #@8
    move-object v6, p4

    #@9
    invoke-direct/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    #@c
    return-void
.end method

.method public getAlpha()F
    .registers 3

    #@0
    .line 1213
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    const/high16 v1, 0x437f0000    # 255.0f

    #@7
    div-float/2addr v0, v1

    #@8
    return v0
.end method

.method public getRootAlpha()I
    .registers 2

    #@0
    .line 1202
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    #@2
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    .line 1412
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_10

    #@4
    .line 1413
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@6
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->isStateful()Z

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    #@10
    .line 1415
    :cond_10
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    #@12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public onStateChanged([I)Z
    .registers 3

    #@0
    .line 1419
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    #@2
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->onStateChanged([I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public setAlpha(F)V
    .registers 3

    #@0
    const/high16 v0, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr p1, v0

    #@3
    float-to-int p1, p1

    #@4
    .line 1208
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    #@7
    return-void
.end method

.method public setRootAlpha(I)V
    .registers 2

    #@0
    .line 1198
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    #@2
    return-void
.end method

.class public Landroidx/core/graphics/drawable/IconCompat;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/IconCompat$Api23Impl;,
        Landroidx/core/graphics/drawable/IconCompat$Api30Impl;,
        Landroidx/core/graphics/drawable/IconCompat$Api26Impl;,
        Landroidx/core/graphics/drawable/IconCompat$Api28Impl;,
        Landroidx/core/graphics/drawable/IconCompat$IconType;
    }
.end annotation


# static fields
.field private static final ADAPTIVE_ICON_INSET_FACTOR:F = 0.25f

.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final BLUR_FACTOR:F = 0.010416667f

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field static final EXTRA_INT1:Ljava/lang/String; = "int1"

.field static final EXTRA_INT2:Ljava/lang/String; = "int2"

.field static final EXTRA_OBJ:Ljava/lang/String; = "obj"

.field static final EXTRA_STRING1:Ljava/lang/String; = "string1"

.field static final EXTRA_TINT_LIST:Ljava/lang/String; = "tint_list"

.field static final EXTRA_TINT_MODE:Ljava/lang/String; = "tint_mode"

.field static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final ICON_DIAMETER_FACTOR:F = 0.9166667f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d

.field private static final KEY_SHADOW_OFFSET_FACTOR:F = 0.020833334f

.field private static final TAG:Ljava/lang/String; = "IconCompat"

.field public static final TYPE_ADAPTIVE_BITMAP:I = 0x5

.field public static final TYPE_BITMAP:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_RESOURCE:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_URI:I = 0x4

.field public static final TYPE_URI_ADAPTIVE_BITMAP:I = 0x6


# instance fields
.field public mData:[B

.field public mInt1:I

.field public mInt2:I

.field mObj1:Ljava/lang/Object;

.field public mParcelable:Landroid/os/Parcelable;

.field public mString1:Ljava/lang/String;

.field public mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTintModeStr:Ljava/lang/String;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 213
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@2
    sput-object v0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 376
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 157
    iput v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 176
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@9
    .line 183
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@b
    const/4 v1, 0x0

    #@c
    .line 193
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@e
    .line 201
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@10
    .line 208
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@12
    .line 214
    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@14
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@16
    .line 219
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@18
    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    #@0
    .line 379
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 176
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@6
    .line 183
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@8
    const/4 v1, 0x0

    #@9
    .line 193
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@b
    .line 201
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@d
    .line 208
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 214
    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@11
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@13
    .line 219
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@15
    .line 380
    iput p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@17
    return-void
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 5

    #@0
    const-string v0, "type"

    #@2
    .line 946
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 947
    new-instance v1, Landroidx/core/graphics/drawable/IconCompat;

    #@8
    invoke-direct {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@b
    const-string v2, "int1"

    #@d
    .line 948
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@10
    move-result v2

    #@11
    iput v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@13
    const-string v2, "int2"

    #@15
    .line 949
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@18
    move-result v2

    #@19
    iput v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@1b
    const-string v2, "string1"

    #@1d
    .line 950
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@23
    const-string v2, "tint_list"

    #@25
    .line 951
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_33

    #@2b
    .line 952
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/content/res/ColorStateList;

    #@31
    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@33
    :cond_33
    const-string v2, "tint_mode"

    #@35
    .line 954
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_45

    #@3b
    .line 956
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 955
    invoke-static {v2}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    #@42
    move-result-object v2

    #@43
    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@45
    :cond_45
    const-string v2, "obj"

    #@47
    packed-switch v0, :pswitch_data_76

    #@4a
    .line 973
    :pswitch_4a
    new-instance p0, Ljava/lang/StringBuilder;

    #@4c
    const-string v1, "Unknown type "

    #@4e
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object p0

    #@55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object p0

    #@59
    const-string v0, "IconCompat"

    #@5b
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    const/4 p0, 0x0

    #@5f
    return-object p0

    #@60
    .line 970
    :pswitch_60
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@63
    move-result-object p0

    #@64
    iput-object p0, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@66
    goto :goto_74

    #@67
    .line 967
    :pswitch_67
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object p0

    #@6b
    iput-object p0, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@6d
    goto :goto_74

    #@6e
    .line 962
    :pswitch_6e
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@71
    move-result-object p0

    #@72
    iput-object p0, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@74
    :goto_74
    return-object v1

    #@75
    nop

    #@76
    :pswitch_data_76
    .packed-switch -0x1
        :pswitch_6e
        :pswitch_4a
        :pswitch_6e
        :pswitch_67
        :pswitch_60
        :pswitch_67
        :pswitch_6e
        :pswitch_67
    .end packed-switch
.end method

.method public static createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    .line 985
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 986
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 1

    #@0
    .line 997
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static createFromIconOrNullIfZeroResId(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3

    #@0
    .line 1009
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_f

    #@7
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_f

    #@d
    const/4 p0, 0x0

    #@e
    return-object p0

    #@f
    .line 1012
    :cond_f
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    #@12
    move-result-object p0

    #@13
    return-object p0
.end method

.method static createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    .line 1024
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    .line 1025
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@7
    move-result v1

    #@8
    .line 1024
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    int-to-float v0, v0

    #@d
    const v1, 0x3f2aaaab

    #@10
    mul-float/2addr v0, v1

    #@11
    float-to-int v0, v0

    #@12
    .line 1027
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@14
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@17
    move-result-object v1

    #@18
    .line 1028
    new-instance v2, Landroid/graphics/Canvas;

    #@1a
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1d
    .line 1029
    new-instance v3, Landroid/graphics/Paint;

    #@1f
    const/4 v4, 0x3

    #@20
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    #@23
    int-to-float v4, v0

    #@24
    const/high16 v5, 0x3f000000    # 0.5f

    #@26
    mul-float/2addr v5, v4

    #@27
    const v6, 0x3f6aaaab

    #@2a
    mul-float/2addr v6, v5

    #@2b
    if-eqz p1, :cond_4d

    #@2d
    const p1, 0x3c2aaaab

    #@30
    mul-float/2addr p1, v4

    #@31
    const/4 v7, 0x0

    #@32
    .line 1037
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@35
    const v7, 0x3caaaaab

    #@38
    mul-float/2addr v4, v7

    #@39
    const/high16 v7, 0x3d000000    # 0.03125f

    #@3b
    const/4 v8, 0x0

    #@3c
    .line 1038
    invoke-virtual {v3, p1, v8, v4, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@3f
    .line 1039
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@42
    const/high16 v4, 0x1e000000

    #@44
    .line 1042
    invoke-virtual {v3, p1, v8, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@47
    .line 1043
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@4a
    .line 1044
    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    #@4d
    :cond_4d
    const/high16 p1, -0x1000000

    #@4f
    .line 1048
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@52
    .line 1049
    new-instance p1, Landroid/graphics/BitmapShader;

    #@54
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@56
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@58
    invoke-direct {p1, p0, v4, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@5b
    .line 1051
    new-instance v4, Landroid/graphics/Matrix;

    #@5d
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@60
    .line 1052
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@63
    move-result v7

    #@64
    sub-int/2addr v7, v0

    #@65
    neg-int v7, v7

    #@66
    int-to-float v7, v7

    #@67
    const/high16 v8, 0x40000000    # 2.0f

    #@69
    div-float/2addr v7, v8

    #@6a
    .line 1053
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@6d
    move-result p0

    #@6e
    sub-int/2addr p0, v0

    #@6f
    neg-int p0, p0

    #@70
    int-to-float p0, p0

    #@71
    div-float/2addr p0, v8

    #@72
    .line 1052
    invoke-virtual {v4, v7, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@75
    .line 1054
    invoke-virtual {p1, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@78
    .line 1055
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@7b
    .line 1056
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@7e
    const/4 p0, 0x0

    #@7f
    .line 1058
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@82
    return-object v1
.end method

.method public static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3

    #@0
    .line 292
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 293
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@5
    const/4 v1, 0x5

    #@6
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@9
    .line 294
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@b
    return-object v0
.end method

.method public static createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 1

    #@0
    .line 367
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 368
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3

    #@0
    .line 352
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 353
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@5
    const/4 v1, 0x6

    #@6
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@9
    .line 354
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@b
    return-object v0
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3

    #@0
    .line 278
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 279
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@9
    .line 280
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@b
    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 1

    #@0
    .line 339
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 340
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3

    #@0
    .line 325
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 326
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@5
    const/4 v1, 0x4

    #@6
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@9
    .line 327
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@b
    return-object v0
.end method

.method public static createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;
    .registers 5

    #@0
    .line 309
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 310
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@9
    .line 311
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@b
    .line 312
    iput p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@d
    .line 313
    iput p2, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@f
    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3

    #@0
    .line 241
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    invoke-static {v0, p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;
    .registers 5

    #@0
    .line 252
    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    if-eqz p2, :cond_23

    #@5
    .line 256
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@7
    const/4 v1, 0x2

    #@8
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@b
    .line 257
    iput p2, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@d
    if-eqz p0, :cond_1e

    #@f
    .line 260
    :try_start_f
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@12
    move-result-object p0

    #@13
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_15} :catch_16

    #@15
    goto :goto_20

    #@16
    .line 262
    :catch_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string p1, "Icon resource cannot be found"

    #@1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p0

    #@1e
    .line 265
    :cond_1e
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@20
    .line 267
    :goto_20
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@22
    return-object v0

    #@23
    .line 254
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string p1, "Drawable resource ID must not be 0"

    #@27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p0
.end method

.method static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 5

    #@0
    const-string v0, "android"

    #@2
    .line 687
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 688
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@b
    move-result-object p0

    #@c
    return-object p0

    #@d
    .line 690
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object p0

    #@11
    const/16 v0, 0x2000

    #@13
    const/4 v1, 0x0

    #@14
    .line 692
    :try_start_14
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1f

    #@1a
    .line 695
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@1d
    move-result-object p0
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1e} :catch_20

    #@1e
    return-object p0

    #@1f
    :cond_1f
    return-object v1

    #@20
    :catch_20
    move-exception p0

    #@21
    const/4 v0, 0x1

    #@22
    new-array v0, v0, [Ljava/lang/Object;

    #@24
    const/4 v2, 0x0

    #@25
    aput-object p1, v0, v2

    #@27
    const-string p1, "Unable to find pkg=%s for icon"

    #@29
    .line 700
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object p1

    #@2d
    const-string v0, "IconCompat"

    #@2f
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    return-object v1
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    .line 606
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    packed-switch v0, :pswitch_data_a6

    #@7
    goto/16 :goto_a5

    #@9
    .line 641
    :pswitch_9
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_a5

    #@f
    .line 644
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #@11
    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object p1

    #@15
    .line 646
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@18
    move-result-object v0

    #@19
    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@1c
    .line 644
    invoke-static {v2, v1}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createAdaptiveIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object p1

    #@20
    return-object p1

    #@21
    .line 610
    :pswitch_21
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@26
    move-result-object p1

    #@27
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@29
    check-cast v2, Landroid/graphics/Bitmap;

    #@2b
    .line 611
    invoke-static {v2, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@32
    return-object v0

    #@33
    .line 634
    :pswitch_33
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_a5

    #@39
    .line 636
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #@3b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object p1

    #@3f
    .line 637
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@42
    move-result-object v0

    #@43
    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@46
    return-object v1

    #@47
    .line 630
    :pswitch_47
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4c
    move-result-object p1

    #@4d
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@4f
    check-cast v1, [B

    #@51
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@53
    iget v3, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@55
    .line 631
    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@5c
    return-object v0

    #@5d
    .line 614
    :pswitch_5d
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    .line 615
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@64
    move-result v3

    #@65
    if-eqz v3, :cond_6b

    #@67
    .line 617
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .line 619
    :cond_6b
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    #@6e
    move-result-object v0

    #@6f
    .line 621
    :try_start_6f
    iget v3, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@74
    move-result-object p1

    #@75
    invoke-static {v0, v3, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@78
    move-result-object p1
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_79} :catch_7a

    #@79
    return-object p1

    #@7a
    :catch_7a
    move-exception p1

    #@7b
    const/4 v0, 0x2

    #@7c
    new-array v0, v0, [Ljava/lang/Object;

    #@7e
    .line 623
    iget v3, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@80
    .line 624
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v3

    #@84
    aput-object v3, v0, v1

    #@86
    const/4 v1, 0x1

    #@87
    iget-object v3, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@89
    aput-object v3, v0, v1

    #@8b
    const-string v1, "Unable to load resource 0x%08x from pkg=%s"

    #@8d
    .line 623
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    const-string v1, "IconCompat"

    #@93
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@96
    goto :goto_a5

    #@97
    .line 608
    :pswitch_97
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9c
    move-result-object p1

    #@9d
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@9f
    check-cast v1, Landroid/graphics/Bitmap;

    #@a1
    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@a4
    return-object v0

    #@a5
    :cond_a5
    :goto_a5
    return-object v2

    #@a6
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_97
        :pswitch_5d
        :pswitch_47
        :pswitch_33
        :pswitch_21
        :pswitch_9
    .end packed-switch
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 1

    #@0
    packed-switch p0, :pswitch_data_18

    #@3
    const-string p0, "UNKNOWN"

    #@5
    return-object p0

    #@6
    :pswitch_6
    const-string p0, "URI_MASKABLE"

    #@8
    return-object p0

    #@9
    :pswitch_9
    const-string p0, "BITMAP_MASKABLE"

    #@b
    return-object p0

    #@c
    :pswitch_c
    const-string p0, "URI"

    #@e
    return-object p0

    #@f
    :pswitch_f
    const-string p0, "DATA"

    #@11
    return-object p0

    #@12
    :pswitch_12
    const-string p0, "RESOURCE"

    #@14
    return-object p0

    #@15
    :pswitch_15
    const-string p0, "BITMAP"

    #@17
    return-object p0

    #@18
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .registers 8

    #@0
    .line 715
    invoke-virtual {p0, p3}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    #@3
    .line 717
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@5
    const/4 v1, 0x1

    #@6
    if-eq v0, v1, :cond_97

    #@8
    const/4 v2, 0x2

    #@9
    if-eq v0, v2, :cond_20

    #@b
    const/4 p3, 0x5

    #@c
    if-ne v0, p3, :cond_18

    #@e
    .line 726
    iget-object p3, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@10
    check-cast p3, Landroid/graphics/Bitmap;

    #@12
    invoke-static {p3, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@15
    move-result-object p3

    #@16
    goto/16 :goto_a5

    #@18
    .line 754
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string p2, "Icon type not supported for intent shortcuts"

    #@1c
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw p1

    #@20
    .line 730
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    const/4 v1, 0x0

    #@25
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@28
    move-result-object p3

    #@29
    if-nez p2, :cond_37

    #@2b
    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    #@2d
    .line 732
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@2f
    .line 733
    invoke-static {p3, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    #@32
    move-result-object p3

    #@33
    .line 732
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@36
    return-void

    #@37
    .line 736
    :cond_37
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@39
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@3c
    move-result-object v0

    #@3d
    .line 737
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@40
    move-result v2

    #@41
    if-lez v2, :cond_59

    #@43
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@46
    move-result v2

    #@47
    if-gtz v2, :cond_4a

    #@49
    goto :goto_59

    #@4a
    .line 742
    :cond_4a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4d
    move-result p3

    #@4e
    .line 743
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@51
    move-result v2

    #@52
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@54
    .line 742
    invoke-static {p3, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@57
    move-result-object p3

    #@58
    goto :goto_6b

    #@59
    :cond_59
    :goto_59
    const-string v2, "activity"

    #@5b
    .line 738
    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5e
    move-result-object p3

    #@5f
    check-cast p3, Landroid/app/ActivityManager;

    #@61
    .line 739
    invoke-virtual {p3}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    #@64
    move-result p3

    #@65
    .line 740
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@67
    invoke-static {p3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@6a
    move-result-object p3

    #@6b
    .line 746
    :goto_6b
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    #@6e
    move-result v2

    #@6f
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    #@72
    move-result v3

    #@73
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@76
    .line 747
    new-instance v1, Landroid/graphics/Canvas;

    #@78
    invoke-direct {v1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@7b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_7e} :catch_7f

    #@7e
    goto :goto_a5

    #@7f
    :catch_7f
    move-exception p1

    #@80
    .line 750
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@82
    new-instance p3, Ljava/lang/StringBuilder;

    #@84
    const-string v0, "Can\'t find package "

    #@86
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@89
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@8b
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object p3

    #@8f
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object p3

    #@93
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@96
    throw p2

    #@97
    .line 719
    :cond_97
    iget-object p3, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@99
    check-cast p3, Landroid/graphics/Bitmap;

    #@9b
    if-eqz p2, :cond_a5

    #@9d
    .line 722
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@a4
    move-result-object p3

    #@a5
    :cond_a5
    :goto_a5
    if-eqz p2, :cond_be

    #@a7
    .line 758
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    #@aa
    move-result v0

    #@ab
    .line 759
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    #@ae
    move-result v1

    #@af
    .line 760
    div-int/lit8 v2, v0, 0x2

    #@b1
    div-int/lit8 v3, v1, 0x2

    #@b3
    invoke-virtual {p2, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@b6
    .line 761
    new-instance v0, Landroid/graphics/Canvas;

    #@b8
    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@bb
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@be
    :cond_be
    const-string p2, "android.intent.extra.shortcut.ICON"

    #@c0
    .line 763
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@c3
    return-void
.end method

.method public checkResource(Landroid/content/Context;)V
    .registers 10

    #@0
    .line 553
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_6f

    #@5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7
    if-eqz v0, :cond_6f

    #@9
    .line 554
    check-cast v0, Ljava/lang/String;

    #@b
    const-string v1, ":"

    #@d
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_14

    #@13
    return-void

    #@14
    :cond_14
    const/4 v2, -0x1

    #@15
    .line 559
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x1

    #@1a
    aget-object v3, v3, v4

    #@1c
    const-string v5, "/"

    #@1e
    .line 560
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    const/4 v7, 0x0

    #@23
    aget-object v6, v6, v7

    #@25
    .line 561
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    aget-object v3, v3, v4

    #@2b
    .line 562
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    aget-object v1, v1, v7

    #@31
    const-string v2, "0_resource_name_obfuscated"

    #@33
    .line 563
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    const-string v4, "IconCompat"

    #@39
    if-eqz v2, :cond_41

    #@3b
    const-string p1, "Found obfuscated resource, not trying to update resource id for it"

    #@3d
    .line 566
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    return-void

    #@41
    .line 569
    :cond_41
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 570
    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    #@48
    move-result-object p1

    #@49
    .line 571
    invoke-virtual {p1, v3, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    move-result p1

    #@4d
    .line 572
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@4f
    if-eq v1, p1, :cond_6f

    #@51
    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    const-string v3, "Id has changed for "

    #@55
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    const-string v2, " "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 574
    iput p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@6f
    :cond_6f
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    #@0
    .line 454
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_10

    #@5
    .line 455
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7
    instance-of v1, v0, Landroid/graphics/Bitmap;

    #@9
    if-eqz v1, :cond_e

    #@b
    .line 456
    check-cast v0, Landroid/graphics/Bitmap;

    #@d
    return-object v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    :cond_10
    const/4 v1, 0x1

    #@11
    if-ne v0, v1, :cond_18

    #@13
    .line 461
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@15
    check-cast v0, Landroid/graphics/Bitmap;

    #@17
    return-object v0

    #@18
    :cond_18
    const/4 v2, 0x5

    #@19
    if-ne v0, v2, :cond_24

    #@1b
    .line 463
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@1d
    check-cast v0, Landroid/graphics/Bitmap;

    #@1f
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 465
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    const-string v2, "called getBitmap() on "

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0
.end method

.method public getResId()I
    .registers 4

    #@0
    .line 433
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_c

    #@5
    .line 434
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    :cond_c
    const/4 v1, 0x2

    #@d
    if-ne v0, v1, :cond_12

    #@f
    .line 439
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@11
    return v0

    #@12
    .line 437
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    const-string v2, "called getResId() on "

    #@18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public getResPackage()Ljava/lang/String;
    .registers 4

    #@0
    .line 406
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_c

    #@5
    .line 407
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :cond_c
    const/4 v2, 0x2

    #@d
    if-ne v0, v2, :cond_2b

    #@f
    .line 415
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1a

    #@19
    goto :goto_1d

    #@1a
    .line 420
    :cond_1a
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@1c
    return-object v0

    #@1d
    .line 416
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    const-string v2, ":"

    #@23
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    const/4 v1, 0x0

    #@28
    aget-object v0, v0, v1

    #@2a
    return-object v0

    #@2b
    .line 410
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    const-string v2, "called getResPackage() on "

    #@31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method public getType()I
    .registers 3

    #@0
    .line 391
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_b

    #@5
    .line 392
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    :cond_b
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    #@0
    .line 478
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_c

    #@5
    .line 479
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :cond_c
    const/4 v1, 0x4

    #@d
    if-eq v0, v1, :cond_28

    #@f
    const/4 v1, 0x6

    #@10
    if-ne v0, v1, :cond_13

    #@12
    goto :goto_28

    #@13
    .line 482
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    const-string v2, "called getUri() on "

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 484
    :cond_28
    :goto_28
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@2a
    check-cast v0, Ljava/lang/String;

    #@2c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 6

    #@0
    .line 666
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    .line 667
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const-string v2, "content"

    #@a
    .line 668
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    const-string v3, "IconCompat"

    #@10
    if-nez v2, :cond_3e

    #@12
    const-string v2, "file"

    #@14
    .line 669
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1b

    #@1a
    goto :goto_3e

    #@1b
    .line 677
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/io/FileInputStream;

    #@1d
    new-instance v1, Ljava/io/File;

    #@1f
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@21
    check-cast v2, Ljava/lang/String;

    #@23
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@26
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_29} :catch_2a

    #@29
    return-object p1

    #@2a
    :catch_2a
    move-exception p1

    #@2b
    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    const-string v2, "Unable to load image from path: "

    #@2f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_5a

    #@3e
    .line 671
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@41
    move-result-object p1

    #@42
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@45
    move-result-object p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_47

    #@46
    return-object p1

    #@47
    :catch_47
    move-exception p1

    #@48
    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    const-string v2, "Unable to load image from URI: "

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    :goto_5a
    const/4 p1, 0x0

    #@5b
    return-object p1
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 589
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    #@3
    .line 591
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->loadDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public onPostParceling()V
    .registers 5

    #@0
    .line 888
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    .line 889
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@a
    const/4 v1, 0x0

    #@b
    packed-switch v0, :pswitch_data_60

    #@e
    :pswitch_e
    goto :goto_5e

    #@f
    .line 924
    :pswitch_f
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@11
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@13
    goto :goto_5e

    #@14
    .line 912
    :pswitch_14
    new-instance v0, Ljava/lang/String;

    #@16
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@18
    const-string v3, "UTF-16"

    #@1a
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@21
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@23
    .line 917
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@25
    const/4 v3, 0x2

    #@26
    if-ne v2, v3, :cond_5e

    #@28
    .line 918
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@2a
    if-nez v2, :cond_5e

    #@2c
    .line 919
    move-object v2, v0

    #@2d
    check-cast v2, Ljava/lang/String;

    #@2f
    const-string v2, ":"

    #@31
    const/4 v3, -0x1

    #@32
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    aget-object v0, v0, v1

    #@38
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@3a
    goto :goto_5e

    #@3b
    .line 899
    :pswitch_3b
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@3d
    if-eqz v0, :cond_42

    #@3f
    .line 900
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@41
    goto :goto_5e

    #@42
    .line 903
    :cond_42
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@44
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@46
    const/4 v2, 0x3

    #@47
    .line 904
    iput v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@49
    .line 905
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@4b
    .line 906
    array-length v0, v0

    #@4c
    iput v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@4e
    goto :goto_5e

    #@4f
    .line 891
    :pswitch_4f
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@51
    if-eqz v0, :cond_56

    #@53
    .line 892
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@55
    goto :goto_5e

    #@56
    .line 894
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@58
    const-string v1, "Invalid icon"

    #@5a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    :cond_5e
    :goto_5e
    return-void

    #@5f
    nop

    #@60
    :pswitch_data_60
    .packed-switch -0x1
        :pswitch_4f
        :pswitch_e
        :pswitch_3b
        :pswitch_14
        :pswitch_f
        :pswitch_14
        :pswitch_3b
        :pswitch_14
    .end packed-switch
.end method

.method public onPreParceling(Z)V
    .registers 5

    #@0
    .line 851
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@8
    .line 852
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@a
    const-string v1, "UTF-16"

    #@c
    packed-switch v0, :pswitch_data_6a

    #@f
    :pswitch_f
    goto :goto_68

    #@10
    .line 875
    :pswitch_10
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1d
    move-result-object p1

    #@1e
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@20
    goto :goto_68

    #@21
    .line 881
    :pswitch_21
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@23
    check-cast p1, [B

    #@25
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@27
    goto :goto_68

    #@28
    .line 878
    :pswitch_28
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@2a
    check-cast p1, Ljava/lang/String;

    #@2c
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@33
    move-result-object p1

    #@34
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@36
    goto :goto_68

    #@37
    :pswitch_37
    if-eqz p1, :cond_50

    #@39
    .line 865
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@3b
    check-cast p1, Landroid/graphics/Bitmap;

    #@3d
    .line 866
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3f
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@42
    .line 867
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@44
    const/16 v2, 0x5a

    #@46
    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@49
    .line 868
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@4c
    move-result-object p1

    #@4d
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@4f
    goto :goto_68

    #@50
    .line 870
    :cond_50
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@52
    check-cast p1, Landroid/os/Parcelable;

    #@54
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@56
    goto :goto_68

    #@57
    :pswitch_57
    if-nez p1, :cond_60

    #@59
    .line 859
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@5b
    check-cast p1, Landroid/os/Parcelable;

    #@5d
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@5f
    goto :goto_68

    #@60
    .line 856
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@62
    const-string v0, "Can\'t serialize Icon created with IconCompat#createFromIcon"

    #@64
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw p1

    #@68
    :goto_68
    return-void

    #@69
    nop

    #@6a
    :pswitch_data_6a
    .packed-switch -0x1
        :pswitch_57
        :pswitch_f
        :pswitch_37
        :pswitch_28
        :pswitch_21
        :pswitch_10
        :pswitch_37
        :pswitch_10
    .end packed-switch
.end method

.method public setTint(I)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    .line 495
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->setTintList(Landroid/content/res/ColorStateList;)Landroidx/core/graphics/drawable/IconCompat;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    .line 506
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object p0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    .line 518
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    #@0
    .line 772
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 773
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@7
    const-string v2, "obj"

    #@9
    packed-switch v1, :pswitch_data_68

    #@c
    .line 791
    :pswitch_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v1, "Invalid icon"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 788
    :pswitch_14
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@16
    check-cast v1, [B

    #@18
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@1b
    goto :goto_33

    #@1c
    .line 785
    :pswitch_1c
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    goto :goto_33

    #@24
    .line 776
    :pswitch_24
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@26
    check-cast v1, Landroid/graphics/Bitmap;

    #@28
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2b
    goto :goto_33

    #@2c
    .line 780
    :pswitch_2c
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@2e
    check-cast v1, Landroid/os/Parcelable;

    #@30
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@33
    :goto_33
    const-string v1, "type"

    #@35
    .line 793
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3a
    const-string v1, "int1"

    #@3c
    .line 794
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@3e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@41
    const-string v1, "int2"

    #@43
    .line 795
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@48
    const-string v1, "string1"

    #@4a
    .line 796
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 797
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@51
    if-eqz v1, :cond_58

    #@53
    const-string v2, "tint_list"

    #@55
    .line 798
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@58
    .line 800
    :cond_58
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@5a
    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@5c
    if-eq v1, v2, :cond_67

    #@5e
    const-string v2, "tint_mode"

    #@60
    .line 801
    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    :cond_67
    return-object v0

    #@68
    :pswitch_data_68
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_c
        :pswitch_24
        :pswitch_1c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public toIcon()Landroid/graphics/drawable/Icon;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 529
    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .registers 2

    #@0
    .line 541
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 809
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_c

    #@5
    .line 810
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 812
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const-string v1, "Icon(typ="

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@15
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->typeToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 813
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@1f
    packed-switch v1, :pswitch_data_c0

    #@22
    goto :goto_97

    #@23
    :pswitch_23
    const-string v1, " uri="

    #@25
    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_97

    #@2f
    :pswitch_2f
    const-string v1, " len="

    #@31
    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    .line 829
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@3c
    if-eqz v1, :cond_97

    #@3e
    const-string v1, " off="

    #@40
    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    goto :goto_97

    #@4a
    :pswitch_4a
    const-string v1, " pkg="

    #@4c
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@52
    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    const-string v2, " id="

    #@58
    .line 824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    const/4 v2, 0x1

    #@5d
    new-array v2, v2, [Ljava/lang/Object;

    #@5f
    .line 825
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    #@62
    move-result v3

    #@63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v3

    #@67
    const/4 v4, 0x0

    #@68
    aput-object v3, v2, v4

    #@6a
    const-string v3, "0x%08x"

    #@6c
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    goto :goto_97

    #@74
    :pswitch_74
    const-string v1, " size="

    #@76
    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@7c
    check-cast v2, Landroid/graphics/Bitmap;

    #@7e
    .line 817
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    #@81
    move-result v2

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    const-string v2, "x"

    #@88
    .line 818
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@8e
    check-cast v2, Landroid/graphics/Bitmap;

    #@90
    .line 819
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    #@93
    move-result v2

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    .line 838
    :cond_97
    :goto_97
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@99
    if-eqz v1, :cond_a5

    #@9b
    const-string v1, " tint="

    #@9d
    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 840
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    .line 842
    :cond_a5
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a7
    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@a9
    if-eq v1, v2, :cond_b6

    #@ab
    const-string v1, " mode="

    #@ad
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    :cond_b6
    const-string v1, ")"

    #@b8
    .line 845
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    .line 846
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    return-object v0

    #@c0
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_74
        :pswitch_4a
        :pswitch_2f
        :pswitch_23
        :pswitch_74
        :pswitch_23
    .end packed-switch
.end method

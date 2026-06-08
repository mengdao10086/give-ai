.class Landroidx/appcompat/widget/DrawableUtils$Api18Impl;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DrawableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# static fields
.field private static final sBottom:Ljava/lang/reflect/Field;

.field private static final sGetOpticalInsets:Ljava/lang/reflect/Method;

.field private static final sLeft:Ljava/lang/reflect/Field;

.field private static final sReflectionSuccessful:Z

.field private static final sRight:Ljava/lang/reflect/Field;

.field private static final sTop:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    :try_start_3
    const-string v3, "android.graphics.Insets"

    #@5
    .line 202
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    .line 203
    const-class v4, Landroid/graphics/drawable/Drawable;

    #@b
    const-string v5, "getOpticalInsets"

    #@d
    new-array v6, v2, [Ljava/lang/Class;

    #@f
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@12
    move-result-object v4
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_13} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_13} :catch_3b

    #@13
    :try_start_13
    const-string v5, "left"

    #@15
    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@18
    move-result-object v5
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_19} :catch_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_19} :catch_37
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_19} :catch_35

    #@19
    :try_start_19
    const-string v6, "top"

    #@1b
    .line 205
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1e
    move-result-object v6
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_1f} :catch_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1f} :catch_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_1f} :catch_2f

    #@1f
    :try_start_1f
    const-string v7, "right"

    #@21
    .line 206
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@24
    move-result-object v7
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_25} :catch_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_25} :catch_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1f .. :try_end_25} :catch_2d

    #@25
    :try_start_25
    const-string v8, "bottom"

    #@27
    .line 207
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2a
    move-result-object v3
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_2b} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_2b} :catch_47
    .catch Ljava/lang/NoSuchFieldException; {:try_start_25 .. :try_end_2b} :catch_47

    #@2b
    move v8, v0

    #@2c
    goto :goto_49

    #@2d
    :catch_2d
    move-object v7, v1

    #@2e
    goto :goto_47

    #@2f
    :catch_2f
    move-object v6, v1

    #@30
    goto :goto_46

    #@31
    :catch_31
    move-object v6, v1

    #@32
    goto :goto_46

    #@33
    :catch_33
    move-object v6, v1

    #@34
    goto :goto_46

    #@35
    :catch_35
    move-object v5, v1

    #@36
    goto :goto_3d

    #@37
    :catch_37
    move-object v5, v1

    #@38
    goto :goto_41

    #@39
    :catch_39
    move-object v5, v1

    #@3a
    goto :goto_45

    #@3b
    :catch_3b
    move-object v4, v1

    #@3c
    move-object v5, v4

    #@3d
    :goto_3d
    move-object v6, v5

    #@3e
    goto :goto_46

    #@3f
    :catch_3f
    move-object v4, v1

    #@40
    move-object v5, v4

    #@41
    :goto_41
    move-object v6, v5

    #@42
    goto :goto_46

    #@43
    :catch_43
    move-object v4, v1

    #@44
    move-object v5, v4

    #@45
    :goto_45
    move-object v6, v5

    #@46
    :goto_46
    move-object v7, v6

    #@47
    :catch_47
    :goto_47
    move-object v3, v1

    #@48
    move v8, v2

    #@49
    :goto_49
    if-eqz v8, :cond_58

    #@4b
    .line 218
    sput-object v4, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    #@4d
    .line 219
    sput-object v5, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    #@4f
    .line 220
    sput-object v6, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    #@51
    .line 221
    sput-object v7, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    #@53
    .line 222
    sput-object v3, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    #@55
    .line 223
    sput-boolean v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    #@57
    goto :goto_64

    #@58
    .line 225
    :cond_58
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    #@5a
    .line 226
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    #@5c
    .line 227
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    #@5e
    .line 228
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    #@60
    .line 229
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    #@62
    .line 230
    sput-boolean v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    #@64
    :goto_64
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 6

    #@0
    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-ge v0, v1, :cond_33

    #@6
    sget-boolean v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    #@8
    if-eqz v0, :cond_33

    #@a
    .line 243
    :try_start_a
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object p0

    #@13
    if-eqz p0, :cond_33

    #@15
    .line 245
    new-instance v0, Landroid/graphics/Rect;

    #@17
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    #@19
    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@1c
    move-result v1

    #@1d
    sget-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    #@1f
    .line 247
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@22
    move-result v2

    #@23
    sget-object v3, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    #@25
    .line 248
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@28
    move-result v3

    #@29
    sget-object v4, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    #@2b
    .line 249
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@2e
    move-result p0

    #@2f
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_32} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_32} :catch_33

    #@32
    return-object v0

    #@33
    .line 258
    :catch_33
    :cond_33
    sget-object p0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    #@35
    return-object p0
.end method

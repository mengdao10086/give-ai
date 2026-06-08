.class Landroidx/core/graphics/drawable/IconCompat$Api23Impl;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 4

    #@0
    .line 1128
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_28

    #@7
    const/4 p0, 0x4

    #@8
    if-eq v0, p0, :cond_1f

    #@a
    const/4 p0, 0x6

    #@b
    if-eq v0, p0, :cond_16

    #@d
    .line 1142
    new-instance p0, Landroidx/core/graphics/drawable/IconCompat;

    #@f
    const/4 v0, -0x1

    #@10
    invoke-direct {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@13
    .line 1143
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@15
    return-object p0

    #@16
    .line 1140
    :cond_16
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    #@19
    move-result-object p0

    #@1a
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    #@1d
    move-result-object p0

    #@1e
    return-object p0

    #@1f
    .line 1138
    :cond_1f
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    #@22
    move-result-object p0

    #@23
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    #@26
    move-result-object p0

    #@27
    return-object p0

    #@28
    .line 1130
    :cond_28
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 1132
    :try_start_2c
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    #@2f
    move-result-object p0

    #@30
    .line 1133
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    #@33
    move-result p1

    #@34
    .line 1132
    invoke-static {p0, v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    #@37
    move-result-object p0
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_38} :catch_39

    #@38
    return-object p0

    #@39
    .line 1135
    :catch_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string p1, "Icon resource cannot be found"

    #@3d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw p0
.end method

.method static createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3

    #@0
    .line 1206
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1207
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_2b

    #@a
    const/4 v1, 0x4

    #@b
    if-eq v0, v1, :cond_22

    #@d
    const/4 v1, 0x6

    #@e
    if-eq v0, v1, :cond_19

    #@10
    .line 1215
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@12
    const/4 v1, -0x1

    #@13
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    #@16
    .line 1216
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@18
    return-object v0

    #@19
    .line 1213
    :cond_19
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    #@1c
    move-result-object p0

    #@1d
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    #@20
    move-result-object p0

    #@21
    return-object p0

    #@22
    .line 1211
    :cond_22
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    #@25
    move-result-object p0

    #@26
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    #@29
    move-result-object p0

    #@2a
    return-object p0

    #@2b
    .line 1209
    :cond_2b
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    #@32
    move-result p0

    #@33
    const/4 v1, 0x0

    #@34
    invoke-static {v1, v0, p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    #@37
    move-result-object p0

    #@38
    return-object p0
.end method

.method static getResId(Ljava/lang/Object;)I
    .registers 7

    #@0
    const-string v0, "Unable to get icon resource"

    #@2
    const-string v1, "IconCompat"

    #@4
    .line 1231
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v3, 0x1c

    #@8
    if-lt v2, v3, :cond_f

    #@a
    .line 1232
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResId(Ljava/lang/Object;)I

    #@d
    move-result p0

    #@e
    return p0

    #@f
    :cond_f
    const/4 v2, 0x0

    #@10
    .line 1235
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v3

    #@14
    const-string v4, "getResId"

    #@16
    new-array v5, v2, [Ljava/lang/Class;

    #@18
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1b
    move-result-object v3

    #@1c
    new-array v4, v2, [Ljava/lang/Object;

    #@1e
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object p0

    #@22
    check-cast p0, Ljava/lang/Integer;

    #@24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result p0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_28} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_28} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_28} :catch_29

    #@28
    return p0

    #@29
    :catch_29
    move-exception p0

    #@2a
    .line 1243
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    return v2

    #@2e
    :catch_2e
    move-exception p0

    #@2f
    .line 1240
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    return v2

    #@33
    :catch_33
    move-exception p0

    #@34
    .line 1237
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    return v2
.end method

.method static getResPackage(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    #@0
    const-string v0, "Unable to get icon package"

    #@2
    const-string v1, "IconCompat"

    #@4
    .line 1184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v3, 0x1c

    #@8
    if-lt v2, v3, :cond_f

    #@a
    .line 1185
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    :cond_f
    const/4 v2, 0x0

    #@10
    .line 1188
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v3

    #@14
    const-string v4, "getResPackage"

    #@16
    const/4 v5, 0x0

    #@17
    new-array v6, v5, [Ljava/lang/Class;

    #@19
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1c
    move-result-object v3

    #@1d
    new-array v4, v5, [Ljava/lang/Object;

    #@1f
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object p0

    #@23
    check-cast p0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_25} :catch_26

    #@25
    return-object p0

    #@26
    :catch_26
    move-exception p0

    #@27
    .line 1196
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    return-object v2

    #@2b
    :catch_2b
    move-exception p0

    #@2c
    .line 1193
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    return-object v2

    #@30
    :catch_30
    move-exception p0

    #@31
    .line 1190
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    return-object v2
.end method

.method static getType(Ljava/lang/Object;)I
    .registers 8

    #@0
    const-string v0, "Unable to get icon type "

    #@2
    const-string v1, "IconCompat"

    #@4
    .line 1156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v3, 0x1c

    #@8
    if-lt v2, v3, :cond_f

    #@a
    .line 1157
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getType(Ljava/lang/Object;)I

    #@d
    move-result p0

    #@e
    return p0

    #@f
    :cond_f
    const/4 v2, -0x1

    #@10
    .line 1160
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v3

    #@14
    const-string v4, "getType"

    #@16
    const/4 v5, 0x0

    #@17
    new-array v6, v5, [Ljava/lang/Class;

    #@19
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1c
    move-result-object v3

    #@1d
    new-array v4, v5, [Ljava/lang/Object;

    #@1f
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/Integer;

    #@25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result p0
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_29} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_29} :catch_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_29} :catch_2a

    #@29
    return p0

    #@2a
    :catch_2a
    move-exception v3

    #@2b
    .line 1168
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@30
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p0

    #@34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object p0

    #@38
    invoke-static {v1, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    return v2

    #@3c
    :catch_3c
    move-exception v3

    #@3d
    .line 1165
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@42
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object p0

    #@46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object p0

    #@4a
    invoke-static {v1, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    return v2

    #@4e
    :catch_4e
    move-exception v3

    #@4f
    .line 1162
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@54
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object p0

    #@58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object p0

    #@5c
    invoke-static {v1, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    return v2
.end method

.method static getUri(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 8

    #@0
    const-string v0, "Unable to get icon uri"

    #@2
    const-string v1, "IconCompat"

    #@4
    .line 1260
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v3, 0x1c

    #@8
    if-lt v2, v3, :cond_f

    #@a
    .line 1261
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    :cond_f
    const/4 v2, 0x0

    #@10
    .line 1264
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v3

    #@14
    const-string v4, "getUri"

    #@16
    const/4 v5, 0x0

    #@17
    new-array v6, v5, [Ljava/lang/Class;

    #@19
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1c
    move-result-object v3

    #@1d
    new-array v4, v5, [Ljava/lang/Object;

    #@1f
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object p0

    #@23
    check-cast p0, Landroid/net/Uri;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_25} :catch_26

    #@25
    return-object p0

    #@26
    :catch_26
    move-exception p0

    #@27
    .line 1272
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    return-object v2

    #@2b
    :catch_2b
    move-exception p0

    #@2c
    .line 1269
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    return-object v2

    #@30
    :catch_30
    move-exception p0

    #@31
    .line 1266
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    return-object v2
.end method

.method static loadDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1342
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .registers 4

    #@0
    .line 1281
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@2
    packed-switch v0, :pswitch_data_ac

    #@5
    .line 1329
    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string p1, "Unknown type"

    #@9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw p0

    #@d
    .line 1307
    :pswitch_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@f
    const/16 v1, 0x1e

    #@11
    if-lt v0, v1, :cond_1d

    #@13
    .line 1308
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    #@16
    move-result-object p1

    #@17
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api30Impl;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    #@1a
    move-result-object p1

    #@1b
    goto/16 :goto_92

    #@1d
    :cond_1d
    if-eqz p1, :cond_47

    #@1f
    .line 1316
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    #@22
    move-result-object p1

    #@23
    if-eqz p1, :cond_2e

    #@25
    .line 1322
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@28
    move-result-object p1

    #@29
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@2c
    move-result-object p1

    #@2d
    goto :goto_92

    #@2e
    .line 1318
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    #@30
    new-instance v0, Ljava/lang/StringBuilder;

    #@32
    const-string v1, "Cannot load adaptive icon from uri: "

    #@34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    .line 1319
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    #@3a
    move-result-object p0

    #@3b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object p0

    #@3f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object p0

    #@43
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@46
    throw p1

    #@47
    .line 1312
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    const-string v1, "Context is required to resolve the file uri of the icon: "

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@50
    .line 1314
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    #@53
    move-result-object p0

    #@54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object p0

    #@58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object p0

    #@5c
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw p1

    #@60
    .line 1290
    :pswitch_60
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@62
    check-cast p1, Landroid/graphics/Bitmap;

    #@64
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@67
    move-result-object p1

    #@68
    goto :goto_92

    #@69
    .line 1304
    :pswitch_69
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@6b
    check-cast p1, Ljava/lang/String;

    #@6d
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    #@70
    move-result-object p1

    #@71
    goto :goto_92

    #@72
    .line 1300
    :pswitch_72
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@74
    check-cast p1, [B

    #@76
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@78
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@7a
    invoke-static {p1, v0, v1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    #@7d
    move-result-object p1

    #@7e
    goto :goto_92

    #@7f
    .line 1297
    :pswitch_7f
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    #@82
    move-result-object p1

    #@83
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@85
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@88
    move-result-object p1

    #@89
    goto :goto_92

    #@8a
    .line 1286
    :pswitch_8a
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@8c
    check-cast p1, Landroid/graphics/Bitmap;

    #@8e
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@91
    move-result-object p1

    #@92
    .line 1331
    :goto_92
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@94
    if-eqz v0, :cond_9b

    #@96
    .line 1332
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@98
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    #@9b
    .line 1334
    :cond_9b
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9d
    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@9f
    if-eq v0, v1, :cond_a6

    #@a1
    .line 1335
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    #@a6
    :cond_a6
    return-object p1

    #@a7
    .line 1284
    :pswitch_a7
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    #@a9
    check-cast p0, Landroid/graphics/drawable/Icon;

    #@ab
    return-object p0

    #@ac
    :pswitch_data_ac
    .packed-switch -0x1
        :pswitch_a7
        :pswitch_5
        :pswitch_8a
        :pswitch_7f
        :pswitch_72
        :pswitch_69
        :pswitch_60
        :pswitch_d
    .end packed-switch
.end method

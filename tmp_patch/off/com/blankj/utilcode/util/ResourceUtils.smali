.class public final Lcom/blankj/utilcode/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    #@0
    const-string v0, "/"

    #@2
    const/4 v1, 0x0

    #@3
    .line 151
    :try_start_3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_4f

    #@11
    .line 152
    array-length v3, v2

    #@12
    if-lez v3, :cond_4f

    #@14
    .line 153
    array-length v3, v2

    #@15
    const/4 v4, 0x1

    #@16
    move v5, v1

    #@17
    :goto_17
    if-ge v5, v3, :cond_4d

    #@19
    aget-object v6, v2, v5

    #@1b
    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    new-instance v8, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    invoke-static {v7, v6}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    #@48
    move-result v6

    #@49
    and-int/2addr v4, v6

    #@4a
    add-int/lit8 v5, v5, 0x1

    #@4c
    goto :goto_17

    #@4d
    :cond_4d
    move v1, v4

    #@4e
    goto :goto_65

    #@4f
    .line 159
    :cond_4f
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    #@5a
    move-result-object p0

    #@5b
    .line 157
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z

    #@5e
    move-result p0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_5f} :catch_61

    #@5f
    move v1, p0

    #@60
    goto :goto_65

    #@61
    :catch_61
    move-exception p0

    #@62
    .line 163
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@65
    :goto_65
    return v1
.end method

.method public static copyFileFromRaw(ILjava/lang/String;)Z
    .registers 3

    #@0
    .line 245
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@b
    move-result-object p0

    #@c
    .line 243
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z

    #@f
    move-result p0

    #@10
    return p0
.end method

.method public static getAnimIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 128
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "anim"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getColorIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 68
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "color"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getDimenIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 78
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "dimen"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getDrawableIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "drawable"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 48
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "id"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getLayoutIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 108
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "layout"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getMenuIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 138
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "menu"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getMipmapIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 98
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "mipmap"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getStringIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 58
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "string"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static getStyleIdByName(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 118
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string v2, "style"

    #@12
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static readAssets2List(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 214
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static readAssets2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 227
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    #@f
    move-result-object p0

    #@10
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    #@13
    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    return-object p0

    #@15
    :catch_15
    move-exception p0

    #@16
    .line 229
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@19
    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1c
    move-result-object p0

    #@1d
    return-object p0
.end method

.method public static readAssets2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 176
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static readAssets2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, ""

    #@2
    .line 188
    :try_start_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    #@d
    move-result-object p0

    #@e
    .line 189
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->inputStream2Bytes(Ljava/io/InputStream;)[B

    #@11
    move-result-object p0

    #@12
    if-nez p0, :cond_15

    #@14
    return-object v0

    #@15
    .line 191
    :cond_15
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_21

    #@1b
    .line 192
    new-instance p1, Ljava/lang/String;

    #@1d
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_20} :catch_2c

    #@20
    return-object p1

    #@21
    .line 195
    :cond_21
    :try_start_21
    new-instance v1, Ljava/lang/String;

    #@23
    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_26} :catch_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_2c

    #@26
    return-object v1

    #@27
    :catch_27
    move-exception p0

    #@28
    .line 197
    :try_start_28
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    #@2b
    return-object v0

    #@2c
    :catch_2c
    move-exception p0

    #@2d
    .line 202
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@30
    return-object v0
.end method

.method public static readRaw2List(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 289
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readRaw2List(ILjava/lang/String;)Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static readRaw2List(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 301
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@b
    move-result-object p0

    #@c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static readRaw2String(I)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 256
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readRaw2String(ILjava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static readRaw2String(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 267
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@b
    move-result-object p0

    #@c
    .line 268
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->inputStream2Bytes(Ljava/io/InputStream;)[B

    #@f
    move-result-object p0

    #@10
    if-nez p0, :cond_14

    #@12
    const/4 p0, 0x0

    #@13
    return-object p0

    #@14
    .line 270
    :cond_14
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_20

    #@1a
    .line 271
    new-instance p1, Ljava/lang/String;

    #@1c
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    #@1f
    return-object p1

    #@20
    .line 274
    :cond_20
    :try_start_20
    new-instance v0, Ljava/lang/String;

    #@22
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_25} :catch_26

    #@25
    return-object v0

    #@26
    :catch_26
    move-exception p0

    #@27
    .line 276
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@2a
    const-string p0, ""

    #@2c
    return-object p0
.end method

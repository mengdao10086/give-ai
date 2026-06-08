.class public Lcom/google/android/material/internal/ManufacturerUtils;
.super Ljava/lang/Object;
.source "ManufacturerUtils.java"


# static fields
.field private static final LGE:Ljava/lang/String; = "lge"

.field private static final MEIZU:Ljava/lang/String; = "meizu"

.field private static final SAMSUNG:Ljava/lang/String; = "samsung"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isDateInputKeyboardMissingSeparatorCharacters()Z
    .registers 1

    #@0
    .line 53
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isLGEDevice()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isSamsungDevice()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 v0, 0x1

    #@10
    :goto_10
    return v0
.end method

.method public static isLGEDevice()Z
    .registers 2

    #@0
    .line 41
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string v1, "lge"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public static isMeizuDevice()Z
    .registers 2

    #@0
    .line 36
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string v1, "meizu"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public static isSamsungDevice()Z
    .registers 2

    #@0
    .line 46
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string v1, "samsung"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

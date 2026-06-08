.class Landroidx/core/graphics/BitmapCompat$Api17Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 1

    #@0
    .line 345
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 2

    #@0
    .line 350
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    #@3
    return-void
.end method

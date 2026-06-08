.class Landroidx/core/view/DisplayCutoutCompat$Api28Impl;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/DisplayCutout;"
        }
    .end annotation

    #@0
    .line 229
    new-instance v0, Landroid/view/DisplayCutout;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    #@5
    return-object v0
.end method

.method static getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    #@0
    .line 254
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getSafeInsetBottom(Landroid/view/DisplayCutout;)I
    .registers 1

    #@0
    .line 239
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getSafeInsetLeft(Landroid/view/DisplayCutout;)I
    .registers 1

    #@0
    .line 244
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getSafeInsetRight(Landroid/view/DisplayCutout;)I
    .registers 1

    #@0
    .line 249
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getSafeInsetTop(Landroid/view/DisplayCutout;)I
    .registers 1

    #@0
    .line 234
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.class public final Landroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PaintCompat$Api23Impl;,
        Landroidx/core/graphics/PaintCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/core/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 54
    invoke-static {p0, p1}, Landroidx/core/graphics/PaintCompat$Api23Impl;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static obtainEmptyRects()Landroidx/core/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    #@0
    .line 149
    sget-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroidx/core/util/Pair;

    #@8
    if-nez v1, :cond_1d

    #@a
    .line 151
    new-instance v1, Landroidx/core/util/Pair;

    #@c
    new-instance v2, Landroid/graphics/Rect;

    #@e
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@11
    new-instance v3, Landroid/graphics/Rect;

    #@13
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@16
    invoke-direct {v1, v2, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@19
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@1c
    goto :goto_2b

    #@1d
    .line 154
    :cond_1d
    iget-object v0, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@1f
    check-cast v0, Landroid/graphics/Rect;

    #@21
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@24
    .line 155
    iget-object v0, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@26
    check-cast v0, Landroid/graphics/Rect;

    #@28
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@2b
    :goto_2b
    return-object v1
.end method

.method public static setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z
    .registers 6

    #@0
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    if-lt v0, v1, :cond_12

    #@8
    if-eqz p1, :cond_e

    #@a
    .line 130
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils$Api29Impl;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    .line 131
    :cond_e
    invoke-static {p0, v3}, Landroidx/core/graphics/PaintCompat$Api29Impl;->setBlendMode(Landroid/graphics/Paint;Ljava/lang/Object;)V

    #@11
    return v2

    #@12
    :cond_12
    if-eqz p1, :cond_27

    #@14
    .line 135
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils;->obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    #@17
    move-result-object p1

    #@18
    if-eqz p1, :cond_1f

    #@1a
    .line 136
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    #@1c
    invoke-direct {v3, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@1f
    :cond_1f
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@22
    if-eqz p1, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    const/4 v2, 0x0

    #@26
    :goto_26
    return v2

    #@27
    .line 143
    :cond_27
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@2a
    return v2
.end method

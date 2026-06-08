.class Landroidx/core/graphics/PaintCompat$Api29Impl;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PaintCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static setBlendMode(Landroid/graphics/Paint;Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 171
    check-cast p1, Landroid/graphics/BlendMode;

    #@2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    #@5
    return-void
.end method

.class final Landroidx/core/util/SizeFCompat$Api21Impl;
.super Ljava/lang/Object;
.source "SizeFCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/SizeFCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static toSizeF(Landroidx/core/util/SizeFCompat;)Landroid/util/SizeF;
    .registers 3

    #@0
    .line 102
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 103
    new-instance v0, Landroid/util/SizeF;

    #@5
    invoke-virtual {p0}, Landroidx/core/util/SizeFCompat;->getWidth()F

    #@8
    move-result v1

    #@9
    invoke-virtual {p0}, Landroidx/core/util/SizeFCompat;->getHeight()F

    #@c
    move-result p0

    #@d
    invoke-direct {v0, v1, p0}, Landroid/util/SizeF;-><init>(FF)V

    #@10
    return-object v0
.end method

.method static toSizeFCompat(Landroid/util/SizeF;)Landroidx/core/util/SizeFCompat;
    .registers 3

    #@0
    .line 95
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 96
    new-instance v0, Landroidx/core/util/SizeFCompat;

    #@5
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    #@8
    move-result v1

    #@9
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    #@c
    move-result p0

    #@d
    invoke-direct {v0, v1, p0}, Landroidx/core/util/SizeFCompat;-><init>(FF)V

    #@10
    return-object v0
.end method

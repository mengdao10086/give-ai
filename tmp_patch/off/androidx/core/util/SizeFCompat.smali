.class public final Landroidx/core/util/SizeFCompat;
.super Ljava/lang/Object;
.source "SizeFCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/SizeFCompat$Api21Impl;
    }
.end annotation


# instance fields
.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "width"

    #@5
    .line 37
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@8
    move-result p1

    #@9
    iput p1, p0, Landroidx/core/util/SizeFCompat;->mWidth:F

    #@b
    const-string p1, "height"

    #@d
    .line 38
    invoke-static {p2, p1}, Landroidx/core/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@10
    move-result p1

    #@11
    iput p1, p0, Landroidx/core/util/SizeFCompat;->mHeight:F

    #@13
    return-void
.end method

.method public static toSizeFCompat(Landroid/util/SizeF;)Landroidx/core/util/SizeFCompat;
    .registers 1

    #@0
    .line 87
    invoke-static {p0}, Landroidx/core/util/SizeFCompat$Api21Impl;->toSizeFCompat(Landroid/util/SizeF;)Landroidx/core/util/SizeFCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 60
    :cond_4
    instance-of v1, p1, Landroidx/core/util/SizeFCompat;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 61
    :cond_a
    check-cast p1, Landroidx/core/util/SizeFCompat;

    #@c
    .line 62
    iget v1, p1, Landroidx/core/util/SizeFCompat;->mWidth:F

    #@e
    iget v3, p0, Landroidx/core/util/SizeFCompat;->mWidth:F

    #@10
    cmpl-float v1, v1, v3

    #@12
    if-nez v1, :cond_1d

    #@14
    iget p1, p1, Landroidx/core/util/SizeFCompat;->mHeight:F

    #@16
    iget v1, p0, Landroidx/core/util/SizeFCompat;->mHeight:F

    #@18
    cmpl-float p1, p1, v1

    #@1a
    if-nez p1, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v0, v2

    #@1e
    :goto_1e
    return v0
.end method

.method public getHeight()F
    .registers 2

    #@0
    .line 54
    iget v0, p0, Landroidx/core/util/SizeFCompat;->mHeight:F

    #@2
    return v0
.end method

.method public getWidth()F
    .registers 2

    #@0
    .line 46
    iget v0, p0, Landroidx/core/util/SizeFCompat;->mWidth:F

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 67
    iget v0, p0, Landroidx/core/util/SizeFCompat;->mWidth:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroidx/core/util/SizeFCompat;->mHeight:F

    #@8
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public toSizeF()Landroid/util/SizeF;
    .registers 2

    #@0
    .line 80
    invoke-static {p0}, Landroidx/core/util/SizeFCompat$Api21Impl;->toSizeF(Landroidx/core/util/SizeFCompat;)Landroid/util/SizeF;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Landroidx/core/util/SizeFCompat;->mWidth:F

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, "x"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Landroidx/core/util/SizeFCompat;->mHeight:F

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

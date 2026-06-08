.class public final Landroidx/core/graphics/PointKt;
.super Ljava/lang/Object;
.source "Point.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0003H\u0086\n\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0004H\u0086\u0008\u001a\r\u0010\u000b\u001a\u00020\u0004*\u00020\u0002H\u0086\u0008\u001a\r\u0010\u000c\u001a\u00020\u0002*\u00020\u0002H\u0086\n\u001a\r\u0010\u000c\u001a\u00020\u0004*\u00020\u0004H\u0086\n\u00a8\u0006\r"
    }
    d2 = {
        "component1",
        "",
        "Landroid/graphics/Point;",
        "",
        "Landroid/graphics/PointF;",
        "component2",
        "minus",
        "p",
        "xy",
        "plus",
        "toPoint",
        "toPointF",
        "unaryMinus",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final component1(Landroid/graphics/PointF;)F
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 55
    iget p0, p0, Landroid/graphics/PointF;->x:F

    #@7
    return p0
.end method

.method public static final component1(Landroid/graphics/Point;)I
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 33
    iget p0, p0, Landroid/graphics/Point;->x:I

    #@7
    return p0
.end method

.method public static final component2(Landroid/graphics/PointF;)F
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 66
    iget p0, p0, Landroid/graphics/PointF;->y:F

    #@7
    return p0
.end method

.method public static final component2(Landroid/graphics/Point;)I
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 44
    iget p0, p0, Landroid/graphics/Point;->y:I

    #@7
    return p0
.end method

.method public static final minus(Landroid/graphics/Point;I)Landroid/graphics/Point;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 131
    new-instance v0, Landroid/graphics/Point;

    #@7
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@9
    iget p0, p0, Landroid/graphics/Point;->y:I

    #@b
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    #@e
    neg-int p0, p1

    #@f
    .line 132
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Point;->offset(II)V

    #@12
    return-object v0
.end method

.method public static final minus(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "p"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 111
    new-instance v0, Landroid/graphics/Point;

    #@c
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@e
    iget p0, p0, Landroid/graphics/Point;->y:I

    #@10
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    #@13
    .line 112
    iget p0, p1, Landroid/graphics/Point;->x:I

    #@15
    neg-int p0, p0

    #@16
    iget p1, p1, Landroid/graphics/Point;->y:I

    #@18
    neg-int p1, p1

    #@19
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Point;->offset(II)V

    #@1c
    return-object v0
.end method

.method public static final minus(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 141
    new-instance v0, Landroid/graphics/PointF;

    #@7
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@9
    iget p0, p0, Landroid/graphics/PointF;->y:F

    #@b
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    #@e
    neg-float p0, p1

    #@f
    .line 142
    invoke-virtual {v0, p0, p0}, Landroid/graphics/PointF;->offset(FF)V

    #@12
    return-object v0
.end method

.method public static final minus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "p"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 121
    new-instance v0, Landroid/graphics/PointF;

    #@c
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@e
    iget p0, p0, Landroid/graphics/PointF;->y:F

    #@10
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    #@13
    .line 122
    iget p0, p1, Landroid/graphics/PointF;->x:F

    #@15
    neg-float p0, p0

    #@16
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@18
    neg-float p1, p1

    #@19
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->offset(FF)V

    #@1c
    return-object v0
.end method

.method public static final plus(Landroid/graphics/Point;I)Landroid/graphics/Point;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 91
    new-instance v0, Landroid/graphics/Point;

    #@7
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@9
    iget p0, p0, Landroid/graphics/Point;->y:I

    #@b
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    #@e
    .line 92
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Point;->offset(II)V

    #@11
    return-object v0
.end method

.method public static final plus(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "p"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 72
    new-instance v0, Landroid/graphics/Point;

    #@c
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@e
    iget p0, p0, Landroid/graphics/Point;->y:I

    #@10
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    #@13
    .line 73
    iget p0, p1, Landroid/graphics/Point;->x:I

    #@15
    iget p1, p1, Landroid/graphics/Point;->y:I

    #@17
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Point;->offset(II)V

    #@1a
    return-object v0
.end method

.method public static final plus(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 101
    new-instance v0, Landroid/graphics/PointF;

    #@7
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@9
    iget p0, p0, Landroid/graphics/PointF;->y:F

    #@b
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    #@e
    .line 102
    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->offset(FF)V

    #@11
    return-object v0
.end method

.method public static final plus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 4

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "p"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 81
    new-instance v0, Landroid/graphics/PointF;

    #@c
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@e
    iget p0, p0, Landroid/graphics/PointF;->y:F

    #@10
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    #@13
    .line 82
    iget p0, p1, Landroid/graphics/PointF;->x:F

    #@15
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@17
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->offset(FF)V

    #@1a
    return-object v0
.end method

.method public static final toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .registers 3

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 164
    new-instance v0, Landroid/graphics/Point;

    #@7
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@9
    float-to-int v1, v1

    #@a
    iget p0, p0, Landroid/graphics/PointF;->y:F

    #@c
    float-to-int p0, p0

    #@d
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    #@10
    return-object v0
.end method

.method public static final toPointF(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 159
    new-instance v0, Landroid/graphics/PointF;

    #@7
    invoke-direct {v0, p0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    #@a
    return-object v0
.end method

.method public static final unaryMinus(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 3

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 149
    new-instance v0, Landroid/graphics/Point;

    #@7
    iget v1, p0, Landroid/graphics/Point;->x:I

    #@9
    neg-int v1, v1

    #@a
    iget p0, p0, Landroid/graphics/Point;->y:I

    #@c
    neg-int p0, p0

    #@d
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    #@10
    return-object v0
.end method

.method public static final unaryMinus(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 3

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 154
    new-instance v0, Landroid/graphics/PointF;

    #@7
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@9
    neg-float v1, v1

    #@a
    iget p0, p0, Landroid/graphics/PointF;->y:F

    #@c
    neg-float p0, p0

    #@d
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    #@10
    return-object v0
.end method

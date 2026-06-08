.class final Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/GradientColorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorStops"
.end annotation


# instance fields
.field final mColors:[I

.field final mOffsets:[F


# direct methods
.method constructor <init>(II)V
    .registers 6

    #@0
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v1, v0, [I

    #@6
    const/4 v2, 0x0

    #@7
    aput p1, v1, v2

    #@9
    const/4 p1, 0x1

    #@a
    aput p2, v1, p1

    #@c
    .line 228
    iput-object v1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    #@e
    new-array p1, v0, [F

    #@10
    .line 229
    fill-array-data p1, :array_16

    #@13
    iput-object p1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    #@15
    return-void

    #@16
    :array_16
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(III)V
    .registers 7

    #@0
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    new-array v1, v0, [I

    #@6
    const/4 v2, 0x0

    #@7
    aput p1, v1, v2

    #@9
    const/4 p1, 0x1

    #@a
    aput p2, v1, p1

    #@c
    const/4 p1, 0x2

    #@d
    aput p3, v1, p1

    #@f
    .line 233
    iput-object v1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    #@11
    new-array p1, v0, [F

    #@13
    .line 234
    fill-array-data p1, :array_1a

    #@16
    iput-object p1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    #@18
    return-void

    #@19
    nop

    #@1a
    :array_1a
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .line 219
    new-array v1, v0, [I

    #@9
    iput-object v1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    #@b
    .line 220
    new-array v1, v0, [F

    #@d
    iput-object v1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    #@f
    const/4 v1, 0x0

    #@10
    :goto_10
    if-ge v1, v0, :cond_31

    #@12
    .line 222
    iget-object v2, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    #@14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/lang/Integer;

    #@1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v3

    #@1e
    aput v3, v2, v1

    #@20
    .line 223
    iget-object v2, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    #@22
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Ljava/lang/Float;

    #@28
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@2b
    move-result v3

    #@2c
    aput v3, v2, v1

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_10

    #@31
    :cond_31
    return-void
.end method

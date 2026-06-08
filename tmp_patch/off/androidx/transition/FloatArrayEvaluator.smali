.class Landroidx/transition/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method constructor <init>([F)V
    .registers 2

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Landroidx/transition/FloatArrayEvaluator;->mArray:[F

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    .line 27
    check-cast p2, [F

    #@2
    check-cast p3, [F

    #@4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/FloatArrayEvaluator;->evaluate(F[F[F)[F

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public evaluate(F[F[F)[F
    .registers 8

    #@0
    .line 57
    iget-object v0, p0, Landroidx/transition/FloatArrayEvaluator;->mArray:[F

    #@2
    if-nez v0, :cond_7

    #@4
    .line 59
    array-length v0, p2

    #@5
    new-array v0, v0, [F

    #@7
    :cond_7
    const/4 v1, 0x0

    #@8
    .line 62
    :goto_8
    array-length v2, v0

    #@9
    if-ge v1, v2, :cond_17

    #@b
    .line 63
    aget v2, p2, v1

    #@d
    .line 64
    aget v3, p3, v1

    #@f
    sub-float/2addr v3, v2

    #@10
    mul-float/2addr v3, p1

    #@11
    add-float/2addr v2, v3

    #@12
    .line 65
    aput v2, v0, v1

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_8

    #@17
    :cond_17
    return-object v0
.end method

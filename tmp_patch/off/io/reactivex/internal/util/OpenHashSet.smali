.class public final Lio/reactivex/internal/util/OpenHashSet;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INT_PHI:I = -0x61c88647


# instance fields
.field keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field mask:I

.field maxSize:I

.field size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    const/16 v0, 0x10

    #@2
    const/high16 v1, 0x3f400000    # 0.75f

    #@4
    .line 37
    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>(IF)V

    #@7
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    const/high16 v0, 0x3f400000    # 0.75f

    #@2
    .line 45
    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>(IF)V

    #@5
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput p2, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    #@5
    .line 51
    invoke-static {p1}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    #@8
    move-result p1

    #@9
    add-int/lit8 v0, p1, -0x1

    #@b
    .line 52
    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    #@d
    int-to-float v0, p1

    #@e
    mul-float/2addr p2, v0

    #@f
    float-to-int p2, p2

    #@10
    .line 53
    iput p2, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    #@12
    .line 54
    new-array p1, p1, [Ljava/lang/Object;

    #@14
    check-cast p1, [Ljava/lang/Object;

    #@16
    iput-object p1, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    #@18
    return-void
.end method

.method static mix(I)I
    .registers 2

    #@0
    const v0, -0x61c88647

    #@3
    mul-int/2addr p0, v0

    #@4
    ushr-int/lit8 v0, p0, 0x10

    #@6
    xor-int/2addr p0, v0

    #@7
    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 58
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    #@2
    .line 59
    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    #@4
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    #@b
    move-result v2

    #@c
    and-int/2addr v2, v1

    #@d
    .line 62
    aget-object v3, v0, v2

    #@f
    const/4 v4, 0x1

    #@10
    if-eqz v3, :cond_28

    #@12
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    const/4 v5, 0x0

    #@17
    if-eqz v3, :cond_1a

    #@19
    return v5

    #@1a
    :cond_1a
    add-int/2addr v2, v4

    #@1b
    and-int/2addr v2, v1

    #@1c
    .line 69
    aget-object v3, v0, v2

    #@1e
    if-nez v3, :cond_21

    #@20
    goto :goto_28

    #@21
    .line 73
    :cond_21
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1a

    #@27
    return v5

    #@28
    .line 78
    :cond_28
    :goto_28
    aput-object p1, v0, v2

    #@2a
    .line 79
    iget p1, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    #@2c
    add-int/2addr p1, v4

    #@2d
    iput p1, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    #@2f
    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    #@31
    if-lt p1, v0, :cond_36

    #@33
    .line 80
    invoke-virtual {p0}, Lio/reactivex/internal/util/OpenHashSet;->rehash()V

    #@36
    :cond_36
    return v4
.end method

.method public keys()[Ljava/lang/Object;
    .registers 2

    #@0
    .line 168
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method rehash()V
    .registers 9

    #@0
    .line 136
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    #@2
    .line 137
    array-length v1, v0

    #@3
    shl-int/lit8 v2, v1, 0x1

    #@5
    add-int/lit8 v3, v2, -0x1

    #@7
    .line 141
    new-array v4, v2, [Ljava/lang/Object;

    #@9
    check-cast v4, [Ljava/lang/Object;

    #@b
    .line 143
    iget v5, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    #@d
    :goto_d
    add-int/lit8 v6, v5, -0x1

    #@f
    if-eqz v5, :cond_32

    #@11
    :goto_11
    add-int/lit8 v1, v1, -0x1

    #@13
    .line 144
    aget-object v5, v0, v1

    #@15
    if-nez v5, :cond_18

    #@17
    goto :goto_11

    #@18
    .line 145
    :cond_18
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    #@1b
    move-result v5

    #@1c
    invoke-static {v5}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    #@1f
    move-result v5

    #@20
    and-int/2addr v5, v3

    #@21
    .line 146
    aget-object v7, v4, v5

    #@23
    if-eqz v7, :cond_2c

    #@25
    :cond_25
    add-int/lit8 v5, v5, 0x1

    #@27
    and-int/2addr v5, v3

    #@28
    .line 149
    aget-object v7, v4, v5

    #@2a
    if-nez v7, :cond_25

    #@2c
    .line 154
    :cond_2c
    aget-object v7, v0, v1

    #@2e
    aput-object v7, v4, v5

    #@30
    move v5, v6

    #@31
    goto :goto_d

    #@32
    .line 157
    :cond_32
    iput v3, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    #@34
    int-to-float v0, v2

    #@35
    .line 158
    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    #@37
    mul-float/2addr v0, v1

    #@38
    float-to-int v0, v0

    #@39
    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    #@3b
    .line 159
    iput-object v4, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    #@3d
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    #@2
    .line 86
    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    #@4
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    #@b
    move-result v2

    #@c
    and-int/2addr v2, v1

    #@d
    .line 88
    aget-object v3, v0, v2

    #@f
    const/4 v4, 0x0

    #@10
    if-nez v3, :cond_13

    #@12
    return v4

    #@13
    .line 92
    :cond_13
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1e

    #@19
    .line 93
    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    #@1c
    move-result p1

    #@1d
    return p1

    #@1e
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    #@20
    and-int/2addr v2, v1

    #@21
    .line 97
    aget-object v3, v0, v2

    #@23
    if-nez v3, :cond_26

    #@25
    return v4

    #@26
    .line 101
    :cond_26
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1e

    #@2c
    .line 102
    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    #@2f
    move-result p1

    #@30
    return p1
.end method

.method removeEntry(I[Ljava/lang/Object;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    #@0
    .line 108
    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    #@2
    const/4 v1, 0x1

    #@3
    sub-int/2addr v0, v1

    #@4
    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    #@6
    :goto_6
    add-int/lit8 v0, p1, 0x1

    #@8
    :goto_8
    and-int/2addr v0, p3

    #@9
    .line 117
    aget-object v2, p2, v0

    #@b
    if-nez v2, :cond_11

    #@d
    const/4 p3, 0x0

    #@e
    .line 119
    aput-object p3, p2, p1

    #@10
    return v1

    #@11
    .line 122
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    #@18
    move-result v3

    #@19
    and-int/2addr v3, p3

    #@1a
    if-gt p1, v0, :cond_21

    #@1c
    if-ge p1, v3, :cond_25

    #@1e
    if-le v3, v0, :cond_29

    #@20
    goto :goto_25

    #@21
    :cond_21
    if-lt p1, v3, :cond_29

    #@23
    if-le v3, v0, :cond_29

    #@25
    .line 130
    :cond_25
    :goto_25
    aput-object v2, p2, p1

    #@27
    move p1, v0

    #@28
    goto :goto_6

    #@29
    :cond_29
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_8
.end method

.method public size()I
    .registers 2

    #@0
    .line 172
    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    #@2
    return v0
.end method

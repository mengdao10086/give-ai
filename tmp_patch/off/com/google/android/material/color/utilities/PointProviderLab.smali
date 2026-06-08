.class public final Lcom/google/android/material/color/utilities/PointProviderLab;
.super Ljava/lang/Object;
.source "PointProviderLab.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/PointProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public distance([D[D)D
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    .line 57
    aget-wide v1, p1, v0

    #@3
    aget-wide v3, p2, v0

    #@5
    sub-double/2addr v1, v3

    #@6
    const/4 v0, 0x1

    #@7
    .line 58
    aget-wide v3, p1, v0

    #@9
    aget-wide v5, p2, v0

    #@b
    sub-double/2addr v3, v5

    #@c
    const/4 v0, 0x2

    #@d
    .line 59
    aget-wide v5, p1, v0

    #@f
    aget-wide p1, p2, v0

    #@11
    sub-double/2addr v5, p1

    #@12
    mul-double/2addr v1, v1

    #@13
    mul-double/2addr v3, v3

    #@14
    add-double/2addr v1, v3

    #@15
    mul-double/2addr v5, v5

    #@16
    add-double/2addr v1, v5

    #@17
    return-wide v1
.end method

.method public fromInt(I)[D
    .registers 6

    #@0
    .line 37
    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x3

    #@5
    new-array v0, v0, [D

    #@7
    const/4 v1, 0x0

    #@8
    .line 38
    aget-wide v2, p1, v1

    #@a
    aput-wide v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    aget-wide v2, p1, v1

    #@f
    aput-wide v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    aget-wide v2, p1, v1

    #@14
    aput-wide v2, v0, v1

    #@16
    return-object v0
.end method

.method public toInt([D)I
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 44
    aget-wide v1, p1, v0

    #@3
    const/4 v0, 0x1

    #@4
    aget-wide v3, p1, v0

    #@6
    const/4 v0, 0x2

    #@7
    aget-wide v5, p1, v0

    #@9
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromLab(DDD)I

    #@c
    move-result p1

    #@d
    return p1
.end method

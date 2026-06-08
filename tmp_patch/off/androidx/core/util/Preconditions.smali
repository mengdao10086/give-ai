.class public final Landroidx/core/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkArgument(Z)V
    .registers 1

    #@0
    if-eqz p0, :cond_3

    #@2
    return-void

    #@3
    .line 38
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw p0
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .registers 2

    #@0
    if-eqz p0, :cond_3

    #@2
    return-void

    #@3
    .line 52
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw p0
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    #@0
    if-eqz p0, :cond_3

    #@2
    return-void

    #@3
    .line 70
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw p0
.end method

.method public static checkArgumentFinite(FLjava/lang/String;)F
    .registers 3

    #@0
    .line 353
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_26

    #@6
    .line 355
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_d

    #@c
    return p0

    #@d
    .line 356
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    const-string v0, " must not be infinite"

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw p0

    #@26
    .line 354
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p1

    #@31
    const-string v0, " must not be NaN"

    #@33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p1

    #@3b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw p0
.end method

.method public static checkArgumentInRange(DDDLjava/lang/String;)D
    .registers 12

    #@0
    cmpg-double v0, p0, p2

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x3

    #@6
    if-ltz v0, :cond_2b

    #@8
    cmpl-double v0, p0, p4

    #@a
    if-gtz v0, :cond_d

    #@c
    return-wide p0

    #@d
    .line 331
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@f
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    new-array v0, v4, [Ljava/lang/Object;

    #@13
    aput-object p6, v0, v3

    #@15
    .line 333
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@18
    move-result-object p2

    #@19
    aput-object p2, v0, v2

    #@1b
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1e
    move-result-object p2

    #@1f
    aput-object p2, v0, v1

    #@21
    const-string p2, "%s is out of range of [%f, %f] (too high)"

    #@23
    .line 332
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p0

    #@2b
    .line 327
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@2d
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2f
    new-array v0, v4, [Ljava/lang/Object;

    #@31
    aput-object p6, v0, v3

    #@33
    .line 329
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@36
    move-result-object p2

    #@37
    aput-object p2, v0, v2

    #@39
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3c
    move-result-object p2

    #@3d
    aput-object p2, v0, v1

    #@3f
    const-string p2, "%s is out of range of [%f, %f] (too low)"

    #@41
    .line 328
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object p1

    #@45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw p0
.end method

.method public static checkArgumentInRange(FFFLjava/lang/String;)F
    .registers 9

    #@0
    cmpg-float v0, p0, p1

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x3

    #@6
    if-ltz v0, :cond_2b

    #@8
    cmpl-float v0, p0, p2

    #@a
    if-gtz v0, :cond_d

    #@c
    return p0

    #@d
    .line 304
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    aput-object p3, v4, v3

    #@15
    .line 306
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@18
    move-result-object p1

    #@19
    aput-object p1, v4, v2

    #@1b
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1e
    move-result-object p1

    #@1f
    aput-object p1, v4, v1

    #@21
    const-string p1, "%s is out of range of [%f, %f] (too high)"

    #@23
    .line 305
    invoke-static {v0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p0

    #@2b
    .line 300
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@2d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2f
    new-array v4, v4, [Ljava/lang/Object;

    #@31
    aput-object p3, v4, v3

    #@33
    .line 302
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@36
    move-result-object p1

    #@37
    aput-object p1, v4, v2

    #@39
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3c
    move-result-object p1

    #@3d
    aput-object p1, v4, v1

    #@3f
    const-string p1, "%s is out of range of [%f, %f] (too low)"

    #@41
    .line 301
    invoke-static {v0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object p1

    #@45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw p0
.end method

.method public static checkArgumentInRange(IIILjava/lang/String;)I
    .registers 9

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x3

    #@4
    if-lt p0, p1, :cond_27

    #@6
    if-gt p0, p2, :cond_9

    #@8
    return p0

    #@9
    .line 250
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d
    new-array v3, v3, [Ljava/lang/Object;

    #@f
    aput-object p3, v3, v2

    #@11
    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object p1

    #@15
    aput-object p1, v3, v1

    #@17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object p1

    #@1b
    aput-object p1, v3, v0

    #@1d
    const-string p1, "%s is out of range of [%d, %d] (too high)"

    #@1f
    .line 251
    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw p0

    #@27
    .line 246
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@29
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2b
    new-array v3, v3, [Ljava/lang/Object;

    #@2d
    aput-object p3, v3, v2

    #@2f
    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object p1

    #@33
    aput-object p1, v3, v1

    #@35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object p1

    #@39
    aput-object p1, v3, v0

    #@3b
    const-string p1, "%s is out of range of [%d, %d] (too low)"

    #@3d
    .line 247
    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object p1

    #@41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw p0
.end method

.method public static checkArgumentInRange(JJJLjava/lang/String;)J
    .registers 12

    #@0
    cmp-long v0, p0, p2

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x3

    #@6
    if-ltz v0, :cond_2b

    #@8
    cmp-long v0, p0, p4

    #@a
    if-gtz v0, :cond_d

    #@c
    return-wide p0

    #@d
    .line 277
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@f
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    new-array v0, v4, [Ljava/lang/Object;

    #@13
    aput-object p6, v0, v3

    #@15
    .line 279
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object p2

    #@19
    aput-object p2, v0, v2

    #@1b
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1e
    move-result-object p2

    #@1f
    aput-object p2, v0, v1

    #@21
    const-string p2, "%s is out of range of [%d, %d] (too high)"

    #@23
    .line 278
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p0

    #@2b
    .line 273
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@2d
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2f
    new-array v0, v4, [Ljava/lang/Object;

    #@31
    aput-object p6, v0, v3

    #@33
    .line 275
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object p2

    #@37
    aput-object p2, v0, v2

    #@39
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3c
    move-result-object p2

    #@3d
    aput-object p2, v0, v1

    #@3f
    const-string p2, "%s is out of range of [%d, %d] (too low)"

    #@41
    .line 274
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object p1

    #@45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw p0
.end method

.method public static checkArgumentNonnegative(I)I
    .registers 1

    #@0
    if-ltz p0, :cond_3

    #@2
    return p0

    #@3
    .line 225
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw p0
.end method

.method public static checkArgumentNonnegative(ILjava/lang/String;)I
    .registers 2

    #@0
    if-ltz p0, :cond_3

    #@2
    return p0

    #@3
    .line 209
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw p0
.end method

.method public static checkFlagsArgument(II)I
    .registers 5

    #@0
    and-int v0, p0, p1

    #@2
    if-ne v0, p0, :cond_5

    #@4
    return p0

    #@5
    .line 191
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "Requested flags 0x"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p0

    #@16
    const-string v1, ", but only 0x"

    #@18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p0

    #@24
    const-string p1, " are allowed"

    #@26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p0

    #@2a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p0

    #@2e
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_3

    #@2
    return-object p0

    #@3
    .line 154
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    #@5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw p0
.end method

.method public static checkState(Z)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 181
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@4
    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .registers 2

    #@0
    if-eqz p0, :cond_3

    #@2
    return-void

    #@3
    .line 169
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    #@5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw p0
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p0

    #@7
    .line 85
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw p0
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p0

    #@7
    .line 103
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw p0
.end method

.method public static varargs checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p0

    #@7
    .line 122
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw p0
.end method

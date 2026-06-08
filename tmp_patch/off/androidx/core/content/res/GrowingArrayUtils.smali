.class final Landroidx/core/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static append([III)[I
    .registers 5

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 56
    array-length v1, p0

    #@3
    if-le v0, v1, :cond_10

    #@5
    .line 57
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@8
    move-result v0

    #@9
    new-array v0, v0, [I

    #@b
    const/4 v1, 0x0

    #@c
    .line 58
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    move-object p0, v0

    #@10
    .line 61
    :cond_10
    aput p2, p0, p1

    #@12
    return-object p0
.end method

.method public static append([JIJ)[J
    .registers 6

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 69
    array-length v1, p0

    #@3
    if-le v0, v1, :cond_10

    #@5
    .line 70
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@8
    move-result v0

    #@9
    new-array v0, v0, [J

    #@b
    const/4 v1, 0x0

    #@c
    .line 71
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    move-object p0, v0

    #@10
    .line 74
    :cond_10
    aput-wide p2, p0, p1

    #@12
    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 42
    array-length v1, p0

    #@3
    if-le v0, v1, :cond_1c

    #@5
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    .line 44
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@10
    move-result v1

    #@11
    .line 43
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [Ljava/lang/Object;

    #@17
    const/4 v1, 0x0

    #@18
    .line 45
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    move-object p0, v0

    #@1c
    .line 48
    :cond_1c
    aput-object p2, p0, p1

    #@1e
    return-object p0
.end method

.method public static append([ZIZ)[Z
    .registers 5

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 82
    array-length v1, p0

    #@3
    if-le v0, v1, :cond_10

    #@5
    .line 83
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@8
    move-result v0

    #@9
    new-array v0, v0, [Z

    #@b
    const/4 v1, 0x0

    #@c
    .line 84
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    move-object p0, v0

    #@10
    .line 87
    :cond_10
    aput-boolean p2, p0, p1

    #@12
    return-object p0
.end method

.method public static growSize(I)I
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    if-gt p0, v0, :cond_6

    #@3
    const/16 p0, 0x8

    #@5
    goto :goto_8

    #@6
    :cond_6
    mul-int/lit8 p0, p0, 0x2

    #@8
    :goto_8
    return p0
.end method

.method public static insert([IIII)[I
    .registers 6

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 122
    array-length v1, p0

    #@3
    if-gt v0, v1, :cond_e

    #@5
    add-int/lit8 v0, p2, 0x1

    #@7
    sub-int/2addr p1, p2

    #@8
    .line 123
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 124
    aput p3, p0, p2

    #@d
    return-object p0

    #@e
    .line 128
    :cond_e
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@11
    move-result p1

    #@12
    new-array p1, p1, [I

    #@14
    const/4 v0, 0x0

    #@15
    .line 129
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    .line 130
    aput p3, p1, p2

    #@1a
    add-int/lit8 p3, p2, 0x1

    #@1c
    .line 131
    array-length v0, p0

    #@1d
    sub-int/2addr v0, p2

    #@1e
    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    return-object p1
.end method

.method public static insert([JIIJ)[J
    .registers 7

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 139
    array-length v1, p0

    #@3
    if-gt v0, v1, :cond_e

    #@5
    add-int/lit8 v0, p2, 0x1

    #@7
    sub-int/2addr p1, p2

    #@8
    .line 140
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 141
    aput-wide p3, p0, p2

    #@d
    return-object p0

    #@e
    .line 145
    :cond_e
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@11
    move-result p1

    #@12
    new-array p1, p1, [J

    #@14
    const/4 v0, 0x0

    #@15
    .line 146
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    .line 147
    aput-wide p3, p1, p2

    #@1a
    add-int/lit8 p3, p2, 0x1

    #@1c
    .line 148
    array-length p4, p0

    #@1d
    sub-int/2addr p4, p2

    #@1e
    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    return-object p1
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 104
    array-length v1, p0

    #@3
    if-gt v0, v1, :cond_e

    #@5
    add-int/lit8 v0, p2, 0x1

    #@7
    sub-int/2addr p1, p2

    #@8
    .line 105
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 106
    aput-object p3, p0, p2

    #@d
    return-object p0

    #@e
    .line 110
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@15
    move-result-object v0

    #@16
    .line 111
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@19
    move-result p1

    #@1a
    .line 110
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1d
    move-result-object p1

    #@1e
    check-cast p1, [Ljava/lang/Object;

    #@20
    const/4 v0, 0x0

    #@21
    .line 112
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 113
    aput-object p3, p1, p2

    #@26
    add-int/lit8 p3, p2, 0x1

    #@28
    .line 114
    array-length v0, p0

    #@29
    sub-int/2addr v0, p2

    #@2a
    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    return-object p1
.end method

.method public static insert([ZIIZ)[Z
    .registers 6

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    .line 156
    array-length v1, p0

    #@3
    if-gt v0, v1, :cond_e

    #@5
    add-int/lit8 v0, p2, 0x1

    #@7
    sub-int/2addr p1, p2

    #@8
    .line 157
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 158
    aput-boolean p3, p0, p2

    #@d
    return-object p0

    #@e
    .line 162
    :cond_e
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    #@11
    move-result p1

    #@12
    new-array p1, p1, [Z

    #@14
    const/4 v0, 0x0

    #@15
    .line 163
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    .line 164
    aput-boolean p3, p1, p2

    #@1a
    add-int/lit8 p3, p2, 0x1

    #@1c
    .line 165
    array-length v0, p0

    #@1d
    sub-int/2addr v0, p2

    #@1e
    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    return-object p1
.end method

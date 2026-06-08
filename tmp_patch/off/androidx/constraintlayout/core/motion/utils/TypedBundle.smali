.class public Landroidx/constraintlayout/core/motion/utils/TypedBundle;
.super Ljava/lang/Object;
.source "TypedBundle.java"


# static fields
.field private static final INITIAL_BOOLEAN:I = 0x4

.field private static final INITIAL_FLOAT:I = 0xa

.field private static final INITIAL_INT:I = 0xa

.field private static final INITIAL_STRING:I = 0x5


# instance fields
.field mCountBoolean:I

.field mCountFloat:I

.field mCountInt:I

.field mCountString:I

.field mTypeBoolean:[I

.field mTypeFloat:[I

.field mTypeInt:[I

.field mTypeString:[I

.field mValueBoolean:[Z

.field mValueFloat:[F

.field mValueInt:[I

.field mValueString:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    #@0
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0xa

    #@5
    new-array v1, v0, [I

    #@7
    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    #@9
    new-array v1, v0, [I

    #@b
    .line 28
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    #@d
    const/4 v1, 0x0

    #@e
    .line 29
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@10
    new-array v2, v0, [I

    #@12
    .line 30
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    #@14
    new-array v0, v0, [F

    #@16
    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    #@18
    .line 32
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    #@1a
    const/4 v0, 0x5

    #@1b
    new-array v2, v0, [I

    #@1d
    .line 33
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    #@1f
    new-array v0, v0, [Ljava/lang/String;

    #@21
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    #@23
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    #@25
    const/4 v0, 0x4

    #@26
    new-array v2, v0, [I

    #@28
    .line 36
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    #@2a
    new-array v0, v0, [Z

    #@2c
    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    #@2e
    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    #@30
    return-void
.end method


# virtual methods
.method public add(IF)V
    .registers 6

    #@0
    .line 59
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1b

    #@7
    .line 60
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    #@10
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    #@12
    array-length v1, v0

    #@13
    mul-int/lit8 v1, v1, 0x2

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    #@1b
    .line 63
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    #@1d
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    #@1f
    aput p1, v0, v1

    #@21
    .line 64
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    #@23
    add-int/lit8 v0, v1, 0x1

    #@25
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    #@27
    aput p2, p1, v1

    #@29
    return-void
.end method

.method public add(II)V
    .registers 6

    #@0
    .line 50
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1b

    #@7
    .line 51
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    #@10
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    #@12
    array-length v1, v0

    #@13
    mul-int/lit8 v1, v1, 0x2

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    #@1b
    .line 54
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    #@1d
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@1f
    aput p1, v0, v1

    #@21
    .line 55
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    #@23
    add-int/lit8 v0, v1, 0x1

    #@25
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@27
    aput p2, p1, v1

    #@29
    return-void
.end method

.method public add(ILjava/lang/String;)V
    .registers 6

    #@0
    .line 74
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1d

    #@7
    .line 75
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    #@10
    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    #@12
    array-length v1, v0

    #@13
    mul-int/lit8 v1, v1, 0x2

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [Ljava/lang/String;

    #@1b
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    #@1d
    .line 78
    :cond_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    #@1f
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    #@21
    aput p1, v0, v1

    #@23
    .line 79
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    #@25
    add-int/lit8 v0, v1, 0x1

    #@27
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    #@29
    aput-object p2, p1, v1

    #@2b
    return-void
.end method

.method public add(IZ)V
    .registers 6

    #@0
    .line 83
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1b

    #@7
    .line 84
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    #@10
    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    #@12
    array-length v1, v0

    #@13
    mul-int/lit8 v1, v1, 0x2

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    #@1b
    .line 87
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    #@1d
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    #@1f
    aput p1, v0, v1

    #@21
    .line 88
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    #@23
    add-int/lit8 v0, v1, 0x1

    #@25
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    #@27
    aput-boolean p2, p1, v1

    #@29
    return-void
.end method

.method public addIfNotNull(ILjava/lang/String;)V
    .registers 3

    #@0
    if-eqz p2, :cond_5

    #@2
    .line 69
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    #@5
    :cond_5
    return-void
.end method

.method public applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 106
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@4
    if-ge v1, v2, :cond_14

    #@6
    .line 107
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    #@8
    aget v2, v2, v1

    #@a
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    #@c
    aget v3, v3, v1

    #@e
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_2

    #@14
    :cond_14
    move v1, v0

    #@15
    .line 109
    :goto_15
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    #@17
    if-ge v1, v2, :cond_27

    #@19
    .line 110
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    #@1b
    aget v2, v2, v1

    #@1d
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    #@1f
    aget v3, v3, v1

    #@21
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_15

    #@27
    :cond_27
    move v1, v0

    #@28
    .line 112
    :goto_28
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    #@2a
    if-ge v1, v2, :cond_3a

    #@2c
    .line 113
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    #@2e
    aget v2, v2, v1

    #@30
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    #@32
    aget-object v3, v3, v1

    #@34
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    #@37
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_28

    #@3a
    .line 115
    :cond_3a
    :goto_3a
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    #@3c
    if-ge v0, v1, :cond_4c

    #@3e
    .line 116
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    #@40
    aget v1, v1, v0

    #@42
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    #@44
    aget-boolean v2, v2, v0

    #@46
    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IZ)V

    #@49
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_3a

    #@4c
    :cond_4c
    return-void
.end method

.method public applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 92
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@4
    if-ge v1, v2, :cond_14

    #@6
    .line 93
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    #@8
    aget v2, v2, v1

    #@a
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    #@c
    aget v3, v3, v1

    #@e
    invoke-interface {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(II)Z

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_2

    #@14
    :cond_14
    move v1, v0

    #@15
    .line 95
    :goto_15
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    #@17
    if-ge v1, v2, :cond_27

    #@19
    .line 96
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    #@1b
    aget v2, v2, v1

    #@1d
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    #@1f
    aget v3, v3, v1

    #@21
    invoke-interface {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(IF)Z

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_15

    #@27
    :cond_27
    move v1, v0

    #@28
    .line 98
    :goto_28
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    #@2a
    if-ge v1, v2, :cond_3a

    #@2c
    .line 99
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    #@2e
    aget v2, v2, v1

    #@30
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    #@32
    aget-object v3, v3, v1

    #@34
    invoke-interface {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(ILjava/lang/String;)Z

    #@37
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_28

    #@3a
    .line 101
    :cond_3a
    :goto_3a
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    #@3c
    if-ge v0, v1, :cond_4c

    #@3e
    .line 102
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    #@40
    aget v1, v1, v0

    #@42
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    #@44
    aget-boolean v2, v2, v0

    #@46
    invoke-interface {p1, v1, v2}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(IZ)Z

    #@49
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_3a

    #@4c
    :cond_4c
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 122
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    #@3
    .line 123
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    #@5
    .line 124
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    #@7
    .line 125
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@9
    return-void
.end method

.method public getInteger(I)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 41
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    #@3
    if-ge v0, v1, :cond_13

    #@5
    .line 42
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_10

    #@b
    .line 43
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    #@d
    aget p1, p1, v0

    #@f
    return p1

    #@10
    :cond_10
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_1

    #@13
    :cond_13
    const/4 p1, -0x1

    #@14
    return p1
.end method

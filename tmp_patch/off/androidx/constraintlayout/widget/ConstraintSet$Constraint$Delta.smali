.class Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Delta"
.end annotation


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
.method constructor <init>()V
    .registers 4

    #@0
    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0xa

    #@5
    new-array v1, v0, [I

    #@7
    .line 1842
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    #@9
    new-array v1, v0, [I

    #@b
    .line 1843
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    #@d
    const/4 v1, 0x0

    #@e
    .line 1844
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    #@10
    new-array v2, v0, [I

    #@12
    .line 1855
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    #@14
    new-array v0, v0, [F

    #@16
    .line 1856
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    #@18
    .line 1857
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    #@1a
    const/4 v0, 0x5

    #@1b
    new-array v2, v0, [I

    #@1d
    .line 1868
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    #@1f
    new-array v0, v0, [Ljava/lang/String;

    #@21
    .line 1869
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    #@23
    .line 1870
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    #@25
    const/4 v0, 0x4

    #@26
    new-array v2, v0, [I

    #@28
    .line 1881
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    #@2a
    new-array v0, v0, [Z

    #@2c
    .line 1882
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    #@2e
    .line 1883
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    #@30
    return-void
.end method


# virtual methods
.method add(IF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    #@0
    .line 1860
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1b

    #@7
    .line 1861
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    #@10
    .line 1862
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    #@12
    array-length v1, v0

    #@13
    mul-int/lit8 v1, v1, 0x2

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    #@1b
    .line 1864
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    #@1d
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    #@1f
    aput p1, v0, v1

    #@21
    .line 1865
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    #@23
    add-int/lit8 v0, v1, 0x1

    #@25
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    #@27
    aput p2, p1, v1

    #@29
    return-void
.end method

.method add(II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    #@0
    .line 1847
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1b

    #@7
    .line 1848
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    #@10
    .line 1849
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    #@12
    array-length v1, v0

    #@13
    mul-int/lit8 v1, v1, 0x2

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    #@1b
    .line 1851
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    #@1d
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    #@1f
    aput p1, v0, v1

    #@21
    .line 1852
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    #@23
    add-int/lit8 v0, v1, 0x1

    #@25
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    #@27
    aput p2, p1, v1

    #@29
    return-void
.end method

.method add(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    #@0
    .line 1873
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1d

    #@7
    .line 1874
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    #@10
    .line 1875
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

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
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    #@1d
    .line 1877
    :cond_1d
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    #@1f
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    #@21
    aput p1, v0, v1

    #@23
    .line 1878
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    #@25
    add-int/lit8 v0, v1, 0x1

    #@27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    #@29
    aput-object p2, p1, v1

    #@2b
    return-void
.end method

.method add(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    #@0
    .line 1886
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    #@4
    array-length v2, v1

    #@5
    if-lt v0, v2, :cond_1b

    #@7
    .line 1887
    array-length v0, v1

    #@8
    mul-int/lit8 v0, v0, 0x2

    #@a
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    #@10
    .line 1888
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    #@12
    array-length v1, v0

    #@13
    mul-int/lit8 v1, v1, 0x2

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    #@1b
    .line 1890
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    #@1d
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    #@1f
    aput p1, v0, v1

    #@21
    .line 1891
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    #@23
    add-int/lit8 v0, v1, 0x1

    #@25
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    #@27
    aput-boolean p2, p1, v1

    #@29
    return-void
.end method

.method applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 1895
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    #@4
    if-ge v1, v2, :cond_14

    #@6
    .line 1896
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    #@8
    aget v2, v2, v1

    #@a
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    #@c
    aget v3, v3, v1

    #@e
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;II)V
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;II)V

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_2

    #@14
    :cond_14
    move v1, v0

    #@15
    .line 1898
    :goto_15
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    #@17
    if-ge v1, v2, :cond_27

    #@19
    .line 1899
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    #@1b
    aget v2, v2, v1

    #@1d
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    #@1f
    aget v3, v3, v1

    #@21
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IF)V
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->access$400(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IF)V

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_15

    #@27
    :cond_27
    move v1, v0

    #@28
    .line 1901
    :goto_28
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    #@2a
    if-ge v1, v2, :cond_3a

    #@2c
    .line 1902
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    #@2e
    aget v2, v2, v1

    #@30
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    #@32
    aget-object v3, v3, v1

    #@34
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILjava/lang/String;)V
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->access$500(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILjava/lang/String;)V

    #@37
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_28

    #@3a
    .line 1904
    :cond_3a
    :goto_3a
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    #@3c
    if-ge v0, v1, :cond_4c

    #@3e
    .line 1905
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    #@40
    aget v1, v1, v0

    #@42
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    #@44
    aget-boolean v2, v2, v0

    #@46
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet;->setDeltaValue(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IZ)V
    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->access$600(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IZ)V

    #@49
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_3a

    #@4c
    :cond_4c
    return-void
.end method

.method printDelta(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    #@0
    const-string v0, "int"

    #@2
    .line 1911
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    const/4 v0, 0x0

    #@6
    move v1, v0

    #@7
    .line 1913
    :goto_7
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    #@9
    const-string v3, " = "

    #@b
    if-ge v1, v2, :cond_30

    #@d
    .line 1914
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    #@14
    aget v4, v4, v1

    #@16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    #@20
    aget v3, v3, v1

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_7

    #@30
    :cond_30
    const-string v1, "float"

    #@32
    .line 1916
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    move v1, v0

    #@36
    .line 1918
    :goto_36
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    #@38
    if-ge v1, v2, :cond_5d

    #@3a
    .line 1919
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    #@41
    aget v4, v4, v1

    #@43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    #@4d
    aget v4, v4, v1

    #@4f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_36

    #@5d
    :cond_5d
    const-string v1, "strings"

    #@5f
    .line 1921
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    move v1, v0

    #@63
    .line 1923
    :goto_63
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    #@65
    if-ge v1, v2, :cond_8a

    #@67
    .line 1924
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    #@6e
    aget v4, v4, v1

    #@70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    #@7a
    aget-object v4, v4, v1

    #@7c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    add-int/lit8 v1, v1, 0x1

    #@89
    goto :goto_63

    #@8a
    :cond_8a
    const-string v1, "boolean"

    #@8c
    .line 1926
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 1927
    :goto_8f
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    #@91
    if-ge v0, v1, :cond_b6

    #@93
    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    #@9a
    aget v2, v2, v0

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    #@a6
    aget-boolean v2, v2, v0

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v1

    #@b0
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    add-int/lit8 v0, v0, 0x1

    #@b5
    goto :goto_8f

    #@b6
    :cond_b6
    return-void
.end method

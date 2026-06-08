.class public Landroidx/constraintlayout/core/parser/CLNumber;
.super Landroidx/constraintlayout/core/parser/CLElement;
.source "CLNumber.java"


# instance fields
.field value:F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 26
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    #@4
    .line 27
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@6
    return-void
.end method

.method public constructor <init>([C)V
    .registers 2

    #@0
    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    #@3
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@5
    .line 20
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@7
    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    #@0
    .line 31
    new-instance v0, Landroidx/constraintlayout/core/parser/CLNumber;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>([C)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getFloat()F
    .registers 2

    #@0
    .line 72
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 73
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->content()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@12
    .line 75
    :cond_12
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@14
    return v0
.end method

.method public getInt()I
    .registers 2

    #@0
    .line 64
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_13

    #@8
    .line 65
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->content()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    int-to-float v0, v0

    #@11
    iput v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@13
    .line 67
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@15
    float-to-int v0, v0

    #@16
    return v0
.end method

.method public isInt()Z
    .registers 3

    #@0
    .line 57
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    #@3
    move-result v0

    #@4
    float-to-int v1, v0

    #@5
    int-to-float v1, v1

    #@6
    cmpl-float v0, v1, v0

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public putValue(F)V
    .registers 2

    #@0
    .line 79
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;->value:F

    #@2
    return-void
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 5

    #@0
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 45
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/core/parser/CLNumber;->addIndent(Ljava/lang/StringBuilder;I)V

    #@8
    .line 46
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    #@b
    move-result p1

    #@c
    float-to-int v0, p1

    #@d
    int-to-float v1, v0

    #@e
    cmpl-float v1, v1, p1

    #@10
    if-nez v1, :cond_16

    #@12
    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    goto :goto_19

    #@16
    .line 51
    :cond_16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@19
    .line 53
    :goto_19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 5

    #@0
    .line 35
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    #@3
    move-result v0

    #@4
    float-to-int v1, v0

    #@5
    int-to-float v2, v1

    #@6
    cmpl-float v2, v2, v0

    #@8
    const-string v3, ""

    #@a
    if-nez v2, :cond_1a

    #@c
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 40
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.class public Landroidx/constraintlayout/core/parser/CLToken;
.super Landroidx/constraintlayout/core/parser/CLElement;
.source "CLToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLToken$Type;
    }
.end annotation


# instance fields
.field index:I

.field tokenFalse:[C

.field tokenNull:[C

.field tokenTrue:[C

.field type:Landroidx/constraintlayout/core/parser/CLToken$Type;


# direct methods
.method public constructor <init>([C)V
    .registers 2

    #@0
    .line 46
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 19
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    #@6
    .line 20
    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@a
    const-string p1, "true"

    #@c
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@f
    move-result-object p1

    #@10
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    #@12
    const-string p1, "false"

    #@14
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@17
    move-result-object p1

    #@18
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    #@1a
    const-string p1, "null"

    #@1c
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@1f
    move-result-object p1

    #@20
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    #@22
    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    #@0
    .line 50
    new-instance v0, Landroidx/constraintlayout/core/parser/CLToken;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLToken;-><init>([C)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 23
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 26
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@a
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@c
    if-ne v0, v1, :cond_10

    #@e
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 29
    :cond_10
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    const-string v2, "this token is not a boolean: <"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string v2, ">"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@2e
    throw v0
.end method

.method public getType()Landroidx/constraintlayout/core/parser/CLToken$Type;
    .registers 2

    #@0
    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@2
    return-object v0
.end method

.method public isNull()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 36
    :cond_8
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    const-string v2, "this token is not a null: <"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, ">"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@26
    throw v0
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 3

    #@0
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 63
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/core/parser/CLToken;->addIndent(Ljava/lang/StringBuilder;I)V

    #@8
    .line 64
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 3

    #@0
    .line 54
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    #@2
    if-eqz v0, :cond_1e

    #@4
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    const-string v1, "<"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, ">"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 57
    :cond_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public validate(CJ)Z
    .registers 9

    #@0
    .line 74
    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLToken$Type;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    const/4 v2, 0x0

    #@c
    if-eq v0, v1, :cond_62

    #@e
    const/4 v3, 0x2

    #@f
    if-eq v0, v3, :cond_4f

    #@11
    const/4 v3, 0x3

    #@12
    if-eq v0, v3, :cond_3c

    #@14
    const/4 p2, 0x4

    #@15
    if-eq v0, p2, :cond_18

    #@17
    goto :goto_74

    #@18
    .line 94
    :cond_18
    iget-object p2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    #@1a
    iget p3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    #@1c
    aget-char p2, p2, p3

    #@1e
    if-ne p2, p1, :cond_26

    #@20
    .line 95
    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@22
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@24
    :goto_24
    move v2, v1

    #@25
    goto :goto_74

    #@26
    .line 97
    :cond_26
    iget-object p2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    #@28
    aget-char p2, p2, p3

    #@2a
    if-ne p2, p1, :cond_31

    #@2c
    .line 98
    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@2e
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@30
    goto :goto_24

    #@31
    .line 100
    :cond_31
    iget-object p2, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    #@33
    aget-char p2, p2, p3

    #@35
    if-ne p2, p1, :cond_74

    #@37
    .line 101
    sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@39
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@3b
    goto :goto_24

    #@3c
    .line 88
    :cond_3c
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    #@3e
    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    #@40
    aget-char v4, v0, v3

    #@42
    if-ne v4, p1, :cond_45

    #@44
    move v2, v1

    #@45
    :cond_45
    if-eqz v2, :cond_74

    #@47
    add-int/2addr v3, v1

    #@48
    .line 89
    array-length p1, v0

    #@49
    if-ne v3, p1, :cond_74

    #@4b
    .line 90
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    #@4e
    goto :goto_74

    #@4f
    .line 82
    :cond_4f
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    #@51
    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    #@53
    aget-char v4, v0, v3

    #@55
    if-ne v4, p1, :cond_58

    #@57
    move v2, v1

    #@58
    :cond_58
    if-eqz v2, :cond_74

    #@5a
    add-int/2addr v3, v1

    #@5b
    .line 83
    array-length p1, v0

    #@5c
    if-ne v3, p1, :cond_74

    #@5e
    .line 84
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    #@61
    goto :goto_74

    #@62
    .line 76
    :cond_62
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    #@64
    iget v3, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    #@66
    aget-char v4, v0, v3

    #@68
    if-ne v4, p1, :cond_6b

    #@6a
    move v2, v1

    #@6b
    :cond_6b
    if-eqz v2, :cond_74

    #@6d
    add-int/2addr v3, v1

    #@6e
    .line 77
    array-length p1, v0

    #@6f
    if-ne v3, p1, :cond_74

    #@71
    .line 78
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    #@74
    .line 107
    :cond_74
    :goto_74
    iget p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    #@76
    add-int/2addr p1, v1

    #@77
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    #@79
    return v2
.end method

.class public Landroidx/constraintlayout/core/parser/CLArray;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "CLArray.java"


# direct methods
.method public constructor <init>([C)V
    .registers 2

    #@0
    .line 20
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    #@3
    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    #@0
    .line 24
    new-instance v0, Landroidx/constraintlayout/core/parser/CLArray;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLArray;-><init>([C)V

    #@5
    return-object v0
.end method


# virtual methods
.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 10

    #@0
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 43
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->toJSON()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    if-gtz p2, :cond_18

    #@b
    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    add-int/2addr v2, p1

    #@10
    sget v3, Landroidx/constraintlayout/core/parser/CLArray;->MAX_LINE:I

    #@12
    if-ge v2, v3, :cond_18

    #@14
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    goto :goto_5a

    #@18
    :cond_18
    const-string v1, "[\n"

    #@1a
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x1

    #@24
    move v3, v2

    #@25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_4d

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Landroidx/constraintlayout/core/parser/CLElement;

    #@31
    if-nez v3, :cond_39

    #@33
    const-string v5, ",\n"

    #@35
    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_3a

    #@39
    :cond_39
    const/4 v3, 0x0

    #@3a
    .line 55
    :goto_3a
    sget v5, Landroidx/constraintlayout/core/parser/CLArray;->BASE_INDENT:I

    #@3c
    add-int/2addr v5, p1

    #@3d
    invoke-virtual {p0, v0, v5}, Landroidx/constraintlayout/core/parser/CLArray;->addIndent(Ljava/lang/StringBuilder;I)V

    #@40
    .line 56
    sget v5, Landroidx/constraintlayout/core/parser/CLArray;->BASE_INDENT:I

    #@42
    add-int/2addr v5, p1

    #@43
    add-int/lit8 v6, p2, -0x1

    #@45
    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_25

    #@4d
    :cond_4d
    const-string p2, "\n"

    #@4f
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 59
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLArray;->addIndent(Ljava/lang/StringBuilder;I)V

    #@55
    const-string p1, "]"

    #@57
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 62
    :goto_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object p1

    #@5e
    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 6

    #@0
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->getDebugName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string v2, "["

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    const/4 v1, 0x1

    #@1d
    const/4 v2, 0x0

    #@1e
    move v3, v2

    #@1f
    .line 30
    :goto_1f
    iget-object v4, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v4

    #@25
    if-ge v3, v4, :cond_42

    #@27
    if-nez v1, :cond_2f

    #@29
    const-string v4, ", "

    #@2b
    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move v1, v2

    #@30
    .line 36
    :goto_30
    iget-object v4, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Landroidx/constraintlayout/core/parser/CLElement;

    #@38
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_1f

    #@42
    .line 38
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    const-string v1, "]"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method

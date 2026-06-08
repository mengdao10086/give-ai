.class public Landroidx/constraintlayout/core/parser/CLObject;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "CLObject.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/constraintlayout/core/parser/CLContainer;",
        "Ljava/lang/Iterable<",
        "Landroidx/constraintlayout/core/parser/CLKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([C)V
    .registers 2

    #@0
    .line 23
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    #@3
    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 2

    #@0
    .line 27
    new-instance v0, Landroidx/constraintlayout/core/parser/CLObject;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLObject;-><init>([C)V

    #@5
    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    #@0
    .line 69
    new-instance v0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;

    #@2
    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;-><init>(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/parser/CLObject;)V

    #@5
    return-object v0
.end method

.method public toFormattedJSON()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-virtual {p0, v0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->toFormattedJSON(II)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toFormattedJSON(II)Ljava/lang/String;
    .registers 10

    #@0
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->getDebugName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    const-string v1, "{\n"

    #@b
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 53
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    move v3, v2

    #@16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_38

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Landroidx/constraintlayout/core/parser/CLElement;

    #@22
    if-nez v3, :cond_2a

    #@24
    const-string v5, ",\n"

    #@26
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    const/4 v3, 0x0

    #@2b
    .line 59
    :goto_2b
    sget v5, Landroidx/constraintlayout/core/parser/CLObject;->BASE_INDENT:I

    #@2d
    add-int/2addr v5, p1

    #@2e
    add-int/lit8 v6, p2, -0x1

    #@30
    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_16

    #@38
    :cond_38
    const-string p2, "\n"

    #@3a
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 62
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLObject;->addIndent(Ljava/lang/StringBuilder;I)V

    #@40
    const-string p1, "}"

    #@42
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    return-object p1
.end method

.method public toJSON()Ljava/lang/String;
    .registers 6

    #@0
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->getDebugName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string v2, "{ "

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
    .line 33
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    const/4 v2, 0x1

    #@23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_40

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroidx/constraintlayout/core/parser/CLElement;

    #@2f
    if-nez v2, :cond_37

    #@31
    const-string v4, ", "

    #@33
    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    goto :goto_38

    #@37
    :cond_37
    const/4 v2, 0x0

    #@38
    .line 39
    :goto_38
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_23

    #@40
    :cond_40
    const-string v1, " }"

    #@42
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0
.end method

.class public Landroidx/constraintlayout/core/parser/CLKey;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "CLKey.java"


# static fields
.field private static sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@7
    const-string v1, "ConstraintSets"

    #@9
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    .line 26
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@e
    const-string v1, "Variables"

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 27
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@15
    const-string v1, "Generate"

    #@17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 28
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@1c
    const-string v1, "Transitions"

    #@1e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 29
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@23
    const-string v1, "KeyFrames"

    #@25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 30
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@2a
    const-string v1, "KeyAttributes"

    #@2c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 31
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@31
    const-string v1, "KeyPositions"

    #@33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 32
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@38
    const-string v1, "KeyCycles"

    #@3a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    return-void
.end method

.method public constructor <init>([C)V
    .registers 2

    #@0
    .line 36
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    #@3
    return-void
.end method

.method public static allocate(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 5

    #@0
    .line 44
    new-instance v0, Landroidx/constraintlayout/core/parser/CLKey;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/parser/CLKey;-><init>([C)V

    #@9
    const-wide/16 v1, 0x0

    #@b
    .line 45
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLKey;->setStart(J)V

    #@e
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@11
    move-result p0

    #@12
    add-int/lit8 p0, p0, -0x1

    #@14
    int-to-long v1, p0

    #@15
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLKey;->setEnd(J)V

    #@18
    .line 47
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/parser/CLKey;->set(Landroidx/constraintlayout/core/parser/CLElement;)V

    #@1b
    return-object v0
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    #@0
    .line 40
    new-instance v0, Landroidx/constraintlayout/core/parser/CLKey;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLKey;-><init>([C)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 51
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Landroidx/constraintlayout/core/parser/CLElement;
    .registers 3

    #@0
    .line 94
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_12

    #@8
    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    #@11
    return-object v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method public set(Landroidx/constraintlayout/core/parser/CLElement;)V
    .registers 4

    #@0
    .line 86
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_f

    #@8
    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@e
    goto :goto_14

    #@f
    .line 89
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    :goto_14
    return-void
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 8

    #@0
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->getDebugName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 62
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLKey;->addIndent(Ljava/lang/StringBuilder;I)V

    #@c
    .line 63
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 64
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v2

    #@16
    if-lez v2, :cond_6d

    #@18
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    const-string v2, ": "

    #@1d
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 67
    sget-object v2, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_29

    #@28
    const/4 p2, 0x3

    #@29
    :cond_29
    const/4 v1, 0x0

    #@2a
    if-lez p2, :cond_3e

    #@2c
    .line 71
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    #@34
    add-int/lit8 p2, p2, -0x1

    #@36
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_68

    #@3e
    .line 73
    :cond_3e
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Landroidx/constraintlayout/core/parser/CLElement;

    #@46
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4d
    move-result v3

    #@4e
    add-int/2addr v3, p1

    #@4f
    sget v4, Landroidx/constraintlayout/core/parser/CLKey;->MAX_LINE:I

    #@51
    if-ge v3, v4, :cond_57

    #@53
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    goto :goto_68

    #@57
    .line 77
    :cond_57
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    #@5f
    add-int/lit8 p2, p2, -0x1

    #@61
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    #@64
    move-result-object p1

    #@65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 80
    :goto_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object p1

    #@6c
    return-object p1

    #@6d
    .line 82
    :cond_6d
    new-instance p1, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object p1

    #@76
    const-string p2, ": <> "

    #@78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object p1

    #@7c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object p1

    #@80
    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 4

    #@0
    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_39

    #@8
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->getDebugName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ": "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    #@2c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0

    #@39
    .line 57
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->getDebugName()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    const-string v1, ": <> "

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    return-object v0
.end method

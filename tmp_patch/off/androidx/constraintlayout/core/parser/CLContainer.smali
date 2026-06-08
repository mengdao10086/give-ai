.class public Landroidx/constraintlayout/core/parser/CLContainer;
.super Landroidx/constraintlayout/core/parser/CLElement;
.source "CLContainer.java"


# instance fields
.field mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/parser/CLElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([C)V
    .registers 2

    #@0
    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    #@3
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    #@5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@a
    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    #@0
    .line 28
    new-instance v0, Landroidx/constraintlayout/core/parser/CLContainer;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    #@5
    return-object v0
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/parser/CLElement;)V
    .registers 5

    #@0
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 33
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    #@7
    if-eqz v0, :cond_27

    #@9
    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    const-string v2, "added element "

    #@f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p1

    #@16
    const-string v1, " to "

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    :cond_27
    return-void
.end method

.method public get(I)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    if-ltz p1, :cond_13

    #@2
    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_13

    #@a
    .line 230
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroidx/constraintlayout/core/parser/CLElement;

    #@12
    return-object p1

    #@13
    .line 232
    :cond_13
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    const-string v2, "no element at index "

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@27
    throw v0
.end method

.method public get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_23

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    #@12
    .line 112
    check-cast v1, Landroidx/constraintlayout/core/parser/CLKey;

    #@14
    .line 113
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_6

    #@1e
    .line 114
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    #@21
    move-result-object p1

    #@22
    return-object p1

    #@23
    .line 117
    :cond_23
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    const-string v2, "no element for key <"

    #@29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    const-string v1, ">"

    #@32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@3d
    throw v0
.end method

.method public getArray(I)Landroidx/constraintlayout/core/parser/CLArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 252
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 253
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLArray;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 254
    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;

    #@a
    return-object v0

    #@b
    .line 256
    :cond_b
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "no array at index "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@1f
    throw v0
.end method

.method public getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 139
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 140
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLArray;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 141
    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;

    #@a
    return-object v0

    #@b
    .line 143
    :cond_b
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    const-string v3, "no array found for key <"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    const-string v2, ">, found ["

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    .line 144
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    const-string v2, "] : "

    #@28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p1

    #@34
    invoke-direct {v1, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@37
    throw v1
.end method

.method public getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;
    .registers 3

    #@0
    .line 201
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object p1

    #@4
    .line 202
    instance-of v0, p1, Landroidx/constraintlayout/core/parser/CLArray;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 203
    check-cast p1, Landroidx/constraintlayout/core/parser/CLArray;

    #@a
    return-object p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return-object p1
.end method

.method public getBoolean(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 276
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 277
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLToken;

    #@6
    if-eqz v1, :cond_f

    #@8
    .line 278
    check-cast v0, Landroidx/constraintlayout/core/parser/CLToken;

    #@a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLToken;->getBoolean()Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 280
    :cond_f
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    const-string v2, "no boolean at index "

    #@15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@23
    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 170
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 171
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLToken;

    #@6
    if-eqz v1, :cond_f

    #@8
    .line 172
    check-cast v0, Landroidx/constraintlayout/core/parser/CLToken;

    #@a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLToken;->getBoolean()Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 174
    :cond_f
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    const-string v3, "no boolean found for key <"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v2, ">, found ["

    #@1e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    .line 175
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    const-string v2, "] : "

    #@2c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p1

    #@34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    invoke-direct {v1, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@3b
    throw v1
.end method

.method public getFloat(I)F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 244
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 246
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@9
    move-result p1

    #@a
    return p1

    #@b
    .line 248
    :cond_b
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "no float at index "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@1f
    throw v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 130
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 132
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@9
    move-result p1

    #@a
    return p1

    #@b
    .line 134
    :cond_b
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    const-string v3, "no float found for key <"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    const-string v2, ">, found ["

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    .line 135
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    const-string v2, "] : "

    #@28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p1

    #@34
    invoke-direct {v1, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@37
    throw v1
.end method

.method public getFloatOrNaN(Ljava/lang/String;)F
    .registers 3

    #@0
    .line 217
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object p1

    #@4
    .line 218
    instance-of v0, p1, Landroidx/constraintlayout/core/parser/CLNumber;

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 219
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@b
    move-result p1

    #@c
    return p1

    #@d
    :cond_d
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@f
    return p1
.end method

.method public getInt(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 236
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 238
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@9
    move-result p1

    #@a
    return p1

    #@b
    .line 240
    :cond_b
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "no int at index "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@1f
    throw v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 121
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 123
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@9
    move-result p1

    #@a
    return p1

    #@b
    .line 125
    :cond_b
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    const-string v3, "no int found for key <"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    const-string v2, ">, found ["

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    .line 126
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    const-string v2, "] : "

    #@28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p1

    #@34
    invoke-direct {v1, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@37
    throw v1
.end method

.method public getObject(I)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 260
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 261
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLObject;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 262
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    #@a
    return-object v0

    #@b
    .line 264
    :cond_b
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "no object at index "

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@1f
    throw v0
.end method

.method public getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 148
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 149
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLObject;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 150
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    #@a
    return-object v0

    #@b
    .line 152
    :cond_b
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    const-string v3, "no object found for key <"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    const-string v2, ">, found ["

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    .line 153
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    const-string v2, "] : "

    #@28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p1

    #@34
    invoke-direct {v1, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@37
    throw v1
.end method

.method public getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 3

    #@0
    .line 193
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object p1

    #@4
    .line 194
    instance-of v0, p1, Landroidx/constraintlayout/core/parser/CLObject;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 195
    check-cast p1, Landroidx/constraintlayout/core/parser/CLObject;

    #@a
    return-object p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return-object p1
.end method

.method public getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 3

    #@0
    if-ltz p1, :cond_13

    #@2
    .line 288
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_13

    #@a
    .line 289
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroidx/constraintlayout/core/parser/CLElement;

    #@12
    return-object p1

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    return-object p1
.end method

.method public getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 5

    #@0
    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_23

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    #@12
    .line 184
    check-cast v1, Landroidx/constraintlayout/core/parser/CLKey;

    #@14
    .line 185
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_6

    #@1e
    .line 186
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    #@21
    move-result-object p1

    #@22
    return-object p1

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 268
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 269
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLString;

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 270
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 272
    :cond_d
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    const-string v2, "no string at index "

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    invoke-direct {v0, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@21
    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 157
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object v0

    #@4
    .line 158
    instance-of v1, v0, Landroidx/constraintlayout/core/parser/CLString;

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 159
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    :cond_d
    if-eqz v0, :cond_14

    #@f
    .line 163
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v1, 0x0

    #@15
    .line 165
    :goto_15
    new-instance v2, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    const-string v4, "no string found for key <"

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    const-string v3, ">, found ["

    #@24
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p1

    #@28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    const-string v1, "] : "

    #@2e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    invoke-direct {v2, p1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@3d
    throw v2
.end method

.method public getStringOrNull(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 295
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object p1

    #@4
    .line 296
    instance-of v0, p1, Landroidx/constraintlayout/core/parser/CLString;

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 297
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return-object p1
.end method

.method public getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 209
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    #@3
    move-result-object p1

    #@4
    .line 210
    instance-of v0, p1, Landroidx/constraintlayout/core/parser/CLString;

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 211
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    return-object p1
.end method

.method public has(Ljava/lang/String;)Z
    .registers 5

    #@0
    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_24

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    #@12
    .line 67
    instance-of v2, v1, Landroidx/constraintlayout/core/parser/CLKey;

    #@14
    if-eqz v2, :cond_6

    #@16
    .line 68
    check-cast v1, Landroidx/constraintlayout/core/parser/CLKey;

    #@18
    .line 69
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_6

    #@22
    const/4 p1, 0x1

    #@23
    return p1

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    return p1
.end method

.method public names()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_25

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroidx/constraintlayout/core/parser/CLElement;

    #@17
    .line 57
    instance-of v3, v2, Landroidx/constraintlayout/core/parser/CLKey;

    #@19
    if-eqz v3, :cond_b

    #@1b
    .line 58
    check-cast v2, Landroidx/constraintlayout/core/parser/CLKey;

    #@1d
    .line 59
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_b

    #@25
    :cond_25
    return-object v0
.end method

.method public put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V
    .registers 6

    #@0
    .line 78
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_22

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    #@12
    .line 79
    check-cast v1, Landroidx/constraintlayout/core/parser/CLKey;

    #@14
    .line 80
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_6

    #@1e
    .line 81
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/parser/CLKey;->set(Landroidx/constraintlayout/core/parser/CLElement;)V

    #@21
    return-void

    #@22
    .line 85
    :cond_22
    invoke-static {p1, p2}, Landroidx/constraintlayout/core/parser/CLKey;->allocate(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)Landroidx/constraintlayout/core/parser/CLElement;

    #@25
    move-result-object p1

    #@26
    check-cast p1, Landroidx/constraintlayout/core/parser/CLKey;

    #@28
    .line 86
    iget-object p2, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    return-void
.end method

.method public putNumber(Ljava/lang/String;F)V
    .registers 4

    #@0
    .line 90
    new-instance v0, Landroidx/constraintlayout/core/parser/CLNumber;

    #@2
    invoke-direct {v0, p2}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>(F)V

    #@5
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@8
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 6

    #@0
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 95
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_28

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroidx/constraintlayout/core/parser/CLElement;

    #@17
    .line 96
    move-object v3, v2

    #@18
    check-cast v3, Landroidx/constraintlayout/core/parser/CLKey;

    #@1a
    .line 97
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_b

    #@24
    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    goto :goto_b

    #@28
    .line 101
    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object p1

    #@2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3e

    #@32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    #@38
    .line 102
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@3d
    goto :goto_2c

    #@3e
    :cond_3e
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 41
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_26

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroidx/constraintlayout/core/parser/CLElement;

    #@17
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@1a
    move-result v3

    #@1b
    if-lez v3, :cond_22

    #@1d
    const-string v3, "; "

    #@1f
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 45
    :cond_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    goto :goto_b

    #@26
    .line 47
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-super {p0}, Landroidx/constraintlayout/core/parser/CLElement;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string v2, " = <"

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string v1, " >"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method

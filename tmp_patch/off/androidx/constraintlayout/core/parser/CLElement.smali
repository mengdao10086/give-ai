.class public Landroidx/constraintlayout/core/parser/CLElement;
.super Ljava/lang/Object;
.source "CLElement.java"


# static fields
.field protected static BASE_INDENT:I = 0x2

.field protected static MAX_LINE:I = 0x50


# instance fields
.field protected end:J

.field private line:I

.field protected mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

.field private final mContent:[C

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/16 v0, -0x1

    #@5
    .line 21
    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@7
    const-wide v0, 0x7fffffffffffffffL

    #@c
    .line 22
    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@e
    .line 30
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    #@10
    return-void
.end method


# virtual methods
.method protected addIndent(Ljava/lang/StringBuilder;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    if-ge v0, p2, :cond_b

    #@3
    const/16 v1, 0x20

    #@5
    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    goto :goto_1

    #@b
    :cond_b
    return-void
.end method

.method public content()Ljava/lang/String;
    .registers 7

    #@0
    .line 115
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    #@4
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@7
    .line 116
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@9
    const-wide v3, 0x7fffffffffffffffL

    #@e
    cmp-long v3, v1, v3

    #@10
    if-eqz v3, :cond_22

    #@12
    iget-wide v3, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@14
    cmp-long v5, v1, v3

    #@16
    if-gez v5, :cond_19

    #@18
    goto :goto_22

    #@19
    :cond_19
    long-to-int v3, v3

    #@1a
    long-to-int v1, v1

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    .line 119
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 117
    :cond_22
    :goto_22
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@24
    long-to-int v3, v1

    #@25
    long-to-int v1, v1

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public getContainer()Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    #@0
    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    #@2
    return-object v0
.end method

.method protected getDebugName()Ljava/lang/String;
    .registers 3

    #@0
    .line 108
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    #@2
    if-eqz v0, :cond_1c

    #@4
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, " -> "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    :cond_1c
    const-string v0, ""

    #@1e
    return-object v0
.end method

.method public getEnd()J
    .registers 3

    #@0
    .line 69
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@2
    return-wide v0
.end method

.method public getFloat()F
    .registers 2

    #@0
    .line 154
    instance-of v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 155
    move-object v0, p0

    #@5
    check-cast v0, Landroidx/constraintlayout/core/parser/CLNumber;

    #@7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    #@a
    move-result v0

    #@b
    return v0

    #@c
    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@e
    return v0
.end method

.method public getInt()I
    .registers 2

    #@0
    .line 147
    instance-of v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 148
    move-object v0, p0

    #@5
    check-cast v0, Landroidx/constraintlayout/core/parser/CLNumber;

    #@7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLNumber;->getInt()I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method public getLine()I
    .registers 2

    #@0
    .line 47
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->line:I

    #@2
    return v0
.end method

.method public getStart()J
    .registers 3

    #@0
    .line 60
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@2
    return-wide v0
.end method

.method protected getStrClass()Ljava/lang/String;
    .registers 3

    #@0
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0x2e

    #@a
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@d
    move-result v1

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public isDone()Z
    .registers 5

    #@0
    .line 123
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@2
    const-wide v2, 0x7fffffffffffffffL

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_d

    #@b
    const/4 v0, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0
.end method

.method public isStarted()Z
    .registers 5

    #@0
    .line 135
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public notStarted()Z
    .registers 5

    #@0
    .line 34
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V
    .registers 2

    #@0
    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    #@2
    return-void
.end method

.method public setEnd(J)V
    .registers 7

    #@0
    .line 73
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@2
    const-wide v2, 0x7fffffffffffffffL

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_c

    #@b
    return-void

    #@c
    .line 76
    :cond_c
    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@e
    .line 77
    sget-boolean p1, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    #@10
    if-eqz p1, :cond_34

    #@12
    .line 78
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    new-instance p2, Ljava/lang/StringBuilder;

    #@16
    const-string v0, "closing "

    #@18
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object p2

    #@23
    const-string v0, " -> "

    #@25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object p2

    #@29
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p2

    #@2d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p2

    #@31
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 80
    :cond_34
    iget-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    #@36
    if-eqz p1, :cond_3b

    #@38
    .line 81
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->add(Landroidx/constraintlayout/core/parser/CLElement;)V

    #@3b
    :cond_3b
    return-void
.end method

.method public setLine(I)V
    .registers 2

    #@0
    .line 38
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->line:I

    #@2
    return-void
.end method

.method public setStart(J)V
    .registers 3

    #@0
    .line 51
    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@2
    return-void
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 3

    #@0
    const-string p1, ""

    #@2
    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 93
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@2
    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gtz v0, :cond_5f

    #@8
    const-wide v0, 0x7fffffffffffffffL

    #@d
    cmp-long v0, v2, v0

    #@f
    if-nez v0, :cond_12

    #@11
    goto :goto_5f

    #@12
    .line 96
    :cond_12
    new-instance v0, Ljava/lang/String;

    #@14
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    #@16
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@19
    .line 97
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@1b
    long-to-int v1, v1

    #@1c
    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@1e
    long-to-int v2, v2

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string v2, " ("

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@3a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string v2, " : "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    const-string v2, ") <<"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const-string v1, ">>"

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0

    #@5f
    .line 94
    :cond_5f
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    const-string v1, " (INVALID, "

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@74
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    const-string v1, "-"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    #@80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    const-string v1, ")"

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    return-object v0
.end method

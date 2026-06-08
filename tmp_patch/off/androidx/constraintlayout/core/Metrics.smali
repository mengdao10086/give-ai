.class public Landroidx/constraintlayout/core/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# instance fields
.field public additionalMeasures:J

.field public barrierConnectionResolved:J

.field public bfs:J

.field public centerConnectionResolved:J

.field public chainConnectionResolved:J

.field public constraints:J

.field public determineGroups:J

.field public errors:J

.field public extravariables:J

.field public fullySolved:J

.field public graphOptimizer:J

.field public graphSolved:J

.field public grouping:J

.field public infeasibleDetermineGroups:J

.field public iterations:J

.field public lastTableSize:J

.field public layouts:J

.field public linearSolved:J

.field public matchConnectionResolved:J

.field public maxRows:J

.field public maxTableSize:J

.field public maxVariables:J

.field public measuredMatchWidgets:J

.field public measuredWidgets:J

.field public measures:J

.field public measuresLayoutDuration:J

.field public measuresWidgetsDuration:J

.field public measuresWrap:J

.field public measuresWrapInfeasible:J

.field public minimize:J

.field public minimizeGoal:J

.field public nonresolvedWidgets:J

.field public oldresolvedWidgets:J

.field public optimize:J

.field public pivots:J

.field public problematicLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resolutions:J

.field public resolvedWidgets:J

.field public simpleconstraints:J

.field public slackvariables:J

.field public tableSizeIncrease:J

.field public variables:J

.field public widgets:J


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    #@a
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    #@0
    const-wide/16 v0, 0x0

    #@2
    .line 115
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    #@4
    .line 116
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    #@6
    .line 117
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->additionalMeasures:J

    #@8
    .line 118
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolutions:J

    #@a
    .line 119
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    #@c
    .line 120
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    #@e
    .line 121
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

    #@10
    .line 122
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    #@12
    .line 123
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    #@14
    .line 124
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    #@16
    .line 125
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    #@18
    .line 126
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    #@1a
    .line 127
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    #@1c
    .line 128
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->optimize:J

    #@1e
    .line 129
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->iterations:J

    #@20
    .line 130
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->pivots:J

    #@22
    .line 131
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->bfs:J

    #@24
    .line 132
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->variables:J

    #@26
    .line 133
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->errors:J

    #@28
    .line 134
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    #@2a
    .line 135
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    #@2c
    .line 136
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    #@2e
    .line 137
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    #@30
    .line 138
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    #@32
    .line 139
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolvedWidgets:J

    #@34
    .line 140
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->oldresolvedWidgets:J

    #@36
    .line 141
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    #@38
    .line 142
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->centerConnectionResolved:J

    #@3a
    .line 143
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->matchConnectionResolved:J

    #@3c
    .line 144
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->chainConnectionResolved:J

    #@3e
    .line 145
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->barrierConnectionResolved:J

    #@40
    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "\n*** Metrics ***\nmeasures: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "\nmeasuresWrap: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrap:J

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "\nmeasuresWrapInfeasible: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrapInfeasible:J

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, "\ndetermineGroups: "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->determineGroups:J

    #@2d
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string v1, "\ninfeasibleDetermineGroups: "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->infeasibleDetermineGroups:J

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string v1, "\ngraphOptimizer: "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    const-string v1, "\nwidgets: "

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    #@51
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const-string v1, "\ngraphSolved: "

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    #@5d
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    const-string v1, "\nlinearSolved: "

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    #@69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    const-string v1, "\n"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    return-object v0
.end method

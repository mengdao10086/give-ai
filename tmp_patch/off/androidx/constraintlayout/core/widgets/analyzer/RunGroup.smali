.class Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "RunGroup.java"


# static fields
.field public static final BASELINE:I = 0x2

.field public static final END:I = 0x1

.field public static final START:I

.field public static index:I


# instance fields
.field direction:I

.field public dual:Z

.field firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field groupIndex:I

.field lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public position:I

.field runs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)V
    .registers 4

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->position:I

    #@6
    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    #@8
    const/4 v0, 0x0

    #@9
    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@b
    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@d
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    #@14
    .line 44
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    #@16
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 45
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    #@1c
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@1e
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@20
    .line 48
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->direction:I

    #@22
    return-void
.end method

.method private defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z
    .registers 8

    #@0
    .line 186
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@4
    aget-boolean v0, v0, p2

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 189
    :cond_a
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@c
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v0

    #@12
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_5c

    #@18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@1e
    .line 190
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@20
    if-eqz v3, :cond_12

    #@22
    .line 191
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@24
    .line 192
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@26
    if-ne v3, p1, :cond_29

    #@28
    goto :goto_12

    #@29
    .line 195
    :cond_29
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@2b
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2d
    if-ne v2, v3, :cond_12

    #@2f
    .line 196
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@31
    if-eqz v3, :cond_4c

    #@33
    .line 197
    move-object v3, p1

    #@34
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@36
    .line 198
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v3

    #@3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_56

    #@42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@48
    .line 199
    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    #@4b
    goto :goto_3c

    #@4c
    .line 202
    :cond_4c
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    #@4e
    if-nez v3, :cond_56

    #@50
    .line 203
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@52
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@54
    aput-boolean v1, v3, p2

    #@56
    .line 206
    :cond_56
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@58
    invoke-direct {p0, v2, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    #@5b
    goto :goto_12

    #@5c
    .line 210
    :cond_5c
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v0

    #@64
    :cond_64
    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_ae

    #@6a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@70
    .line 211
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@72
    if-eqz v3, :cond_64

    #@74
    .line 212
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@76
    .line 213
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@78
    if-ne v3, p1, :cond_7b

    #@7a
    goto :goto_64

    #@7b
    .line 216
    :cond_7b
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@7d
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@7f
    if-ne v2, v3, :cond_64

    #@81
    .line 217
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@83
    if-eqz v3, :cond_9e

    #@85
    .line 218
    move-object v3, p1

    #@86
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@88
    .line 219
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v3

    #@8e
    :goto_8e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v4

    #@92
    if-eqz v4, :cond_a8

    #@94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v4

    #@98
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@9a
    .line 220
    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    #@9d
    goto :goto_8e

    #@9e
    .line 223
    :cond_9e
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    #@a0
    if-nez v3, :cond_a8

    #@a2
    .line 224
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a4
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@a6
    aput-boolean v1, v3, p2

    #@a8
    .line 227
    :cond_a8
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@aa
    invoke-direct {p0, v2, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    #@ad
    goto :goto_64

    #@ae
    :cond_ae
    return v1
.end method

.method private traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .registers 12

    #@0
    .line 89
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@2
    .line 90
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    #@4
    if-eqz v1, :cond_7

    #@6
    return-wide p2

    #@7
    .line 97
    :cond_7
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@9
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    move-wide v3, p2

    #@f
    :goto_f
    if-ge v2, v1, :cond_33

    #@11
    .line 99
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@13
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@19
    .line 100
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1b
    if-eqz v6, :cond_30

    #@1d
    .line 101
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1f
    .line 102
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@21
    if-ne v6, v0, :cond_24

    #@23
    goto :goto_30

    #@24
    .line 106
    :cond_24
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@26
    int-to-long v6, v6

    #@27
    add-long/2addr v6, p2

    #@28
    invoke-direct {p0, v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@2b
    move-result-wide v5

    #@2c
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    #@2f
    move-result-wide v3

    #@30
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_f

    #@33
    .line 110
    :cond_33
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@35
    if-ne p1, v1, :cond_50

    #@37
    .line 112
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    #@3a
    move-result-wide v1

    #@3b
    .line 113
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3d
    sub-long/2addr p2, v1

    #@3e
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@41
    move-result-wide v1

    #@42
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    #@45
    move-result-wide v1

    #@46
    .line 114
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@48
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@4a
    int-to-long v3, p1

    #@4b
    sub-long/2addr p2, v3

    #@4c
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    #@4f
    move-result-wide v3

    #@50
    :cond_50
    return-wide v3
.end method

.method private traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .registers 12

    #@0
    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@2
    .line 58
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    #@4
    if-eqz v1, :cond_7

    #@6
    return-wide p2

    #@7
    .line 65
    :cond_7
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@9
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    move-wide v3, p2

    #@f
    :goto_f
    if-ge v2, v1, :cond_33

    #@11
    .line 67
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    #@13
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    #@19
    .line 68
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1b
    if-eqz v6, :cond_30

    #@1d
    .line 69
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1f
    .line 70
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@21
    if-ne v6, v0, :cond_24

    #@23
    goto :goto_30

    #@24
    .line 74
    :cond_24
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@26
    int-to-long v6, v6

    #@27
    add-long/2addr v6, p2

    #@28
    invoke-direct {p0, v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@2b
    move-result-wide v5

    #@2c
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    #@2f
    move-result-wide v3

    #@30
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_f

    #@33
    .line 78
    :cond_33
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@35
    if-ne p1, v1, :cond_50

    #@37
    .line 80
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    #@3a
    move-result-wide v1

    #@3b
    .line 81
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3d
    add-long/2addr p2, v1

    #@3e
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@41
    move-result-wide v1

    #@42
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    #@45
    move-result-wide v1

    #@46
    .line 82
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@48
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@4a
    int-to-long v3, p1

    #@4b
    sub-long/2addr p2, v3

    #@4c
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    #@4f
    move-result-wide v3

    #@50
    :cond_50
    return-wide v3
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .registers 3

    #@0
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 53
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@7
    return-void
.end method

.method public computeWrapSize(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)J
    .registers 13

    #@0
    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@2
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@4
    const-wide/16 v2, 0x0

    #@6
    if-eqz v1, :cond_f

    #@8
    .line 122
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    #@a
    .line 123
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    #@c
    if-eq v0, p2, :cond_1b

    #@e
    return-wide v2

    #@f
    :cond_f
    if-nez p2, :cond_16

    #@11
    .line 128
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@13
    if-nez v0, :cond_1b

    #@15
    return-wide v2

    #@16
    .line 132
    :cond_16
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@18
    if-nez v0, :cond_1b

    #@1a
    return-wide v2

    #@1b
    :cond_1b
    if-nez p2, :cond_22

    #@1d
    .line 137
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@1f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@21
    goto :goto_26

    #@22
    :cond_22
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@24
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@26
    :goto_26
    if-nez p2, :cond_2d

    #@28
    .line 138
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@2a
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@2c
    goto :goto_31

    #@2d
    :cond_2d
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@2f
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@31
    .line 140
    :goto_31
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@33
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@35
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@37
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    .line 141
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@3d
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@3f
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    #@41
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@44
    move-result p1

    #@45
    .line 143
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@47
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    #@4a
    move-result-wide v4

    #@4b
    if-eqz v0, :cond_c4

    #@4d
    if-eqz p1, :cond_c4

    #@4f
    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@51
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@53
    invoke-direct {p0, p1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@56
    move-result-wide v0

    #@57
    .line 147
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@59
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@5b
    invoke-direct {p0, p1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@5e
    move-result-wide v6

    #@5f
    sub-long/2addr v0, v4

    #@60
    .line 151
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@62
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@64
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@66
    neg-int p1, p1

    #@67
    int-to-long v8, p1

    #@68
    cmp-long p1, v0, v8

    #@6a
    if-ltz p1, :cond_74

    #@6c
    .line 152
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@6e
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@70
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@72
    int-to-long v8, p1

    #@73
    add-long/2addr v0, v8

    #@74
    :cond_74
    neg-long v6, v6

    #@75
    sub-long/2addr v6, v4

    #@76
    .line 154
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@78
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@7a
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@7c
    int-to-long v8, p1

    #@7d
    sub-long/2addr v6, v8

    #@7e
    .line 155
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@80
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@82
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@84
    int-to-long v8, p1

    #@85
    cmp-long p1, v6, v8

    #@87
    if-ltz p1, :cond_91

    #@89
    .line 156
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@8b
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@8d
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@8f
    int-to-long v8, p1

    #@90
    sub-long/2addr v6, v8

    #@91
    .line 158
    :cond_91
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@93
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@95
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBiasPercent(I)F

    #@98
    move-result p1

    #@99
    const/4 p2, 0x0

    #@9a
    cmpl-float p2, p1, p2

    #@9c
    const/high16 v8, 0x3f800000    # 1.0f

    #@9e
    if-lez p2, :cond_a8

    #@a0
    long-to-float p2, v6

    #@a1
    div-float/2addr p2, p1

    #@a2
    long-to-float v0, v0

    #@a3
    sub-float v1, v8, p1

    #@a5
    div-float/2addr v0, v1

    #@a6
    add-float/2addr p2, v0

    #@a7
    float-to-long v2, p2

    #@a8
    :cond_a8
    long-to-float p2, v2

    #@a9
    mul-float v0, p2, p1

    #@ab
    const/high16 v1, 0x3f000000    # 0.5f

    #@ad
    add-float/2addr v0, v1

    #@ae
    float-to-long v2, v0

    #@af
    sub-float/2addr v8, p1

    #@b0
    mul-float/2addr p2, v8

    #@b1
    add-float/2addr p2, v1

    #@b2
    float-to-long p1, p2

    #@b3
    add-long/2addr v2, v4

    #@b4
    add-long/2addr v2, p1

    #@b5
    .line 168
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@b7
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@b9
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@bb
    int-to-long p1, p1

    #@bc
    add-long/2addr p1, v2

    #@bd
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@bf
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@c1
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@c3
    goto :goto_116

    #@c4
    :cond_c4
    if-eqz v0, :cond_e2

    #@c6
    .line 171
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@c8
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@ca
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@cc
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@ce
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@d0
    int-to-long v0, p2

    #@d1
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@d4
    move-result-wide p1

    #@d5
    .line 172
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@d7
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@d9
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@db
    int-to-long v0, v0

    #@dc
    add-long/2addr v0, v4

    #@dd
    .line 173
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@e0
    move-result-wide p1

    #@e1
    goto :goto_118

    #@e2
    :cond_e2
    if-eqz p1, :cond_102

    #@e4
    .line 175
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@e6
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@e8
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@ea
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@ec
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@ee
    int-to-long v0, p2

    #@ef
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    #@f2
    move-result-wide p1

    #@f3
    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@f5
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@f7
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@f9
    neg-int v0, v0

    #@fa
    int-to-long v0, v0

    #@fb
    add-long/2addr v0, v4

    #@fc
    neg-long p1, p1

    #@fd
    .line 177
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@100
    move-result-wide p1

    #@101
    goto :goto_118

    #@102
    .line 179
    :cond_102
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@104
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@106
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@108
    int-to-long p1, p1

    #@109
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@10b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    #@10e
    move-result-wide v0

    #@10f
    add-long/2addr p1, v0

    #@110
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@112
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@114
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    #@116
    :goto_116
    int-to-long v0, v0

    #@117
    sub-long/2addr p1, v0

    #@118
    :goto_118
    return-wide p1
.end method

.method public defineTerminalWidgets(ZZ)V
    .registers 4

    #@0
    if-eqz p1, :cond_c

    #@2
    .line 236
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@4
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@6
    if-eqz v0, :cond_c

    #@8
    const/4 v0, 0x0

    #@9
    .line 237
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    #@c
    :cond_c
    if-eqz p2, :cond_18

    #@e
    .line 239
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@10
    instance-of p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@12
    if-eqz p2, :cond_18

    #@14
    const/4 p2, 0x1

    #@15
    .line 240
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    #@18
    :cond_18
    return-void
.end method

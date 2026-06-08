.class public Landroidx/constraintlayout/core/state/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/State$Chain;,
        Landroidx/constraintlayout/core/state/State$Helper;,
        Landroidx/constraintlayout/core/state/State$Direction;,
        Landroidx/constraintlayout/core/state/State$Constraint;
    }
.end annotation


# static fields
.field static final CONSTRAINT_RATIO:I = 0x2

.field static final CONSTRAINT_SPREAD:I = 0x0

.field static final CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT:Ljava/lang/Integer;

.field static final UNKNOWN:I = -0x1


# instance fields
.field protected mHelperReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/HelperReference;",
            ">;"
        }
    .end annotation
.end field

.field public final mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

.field protected mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/Reference;",
            ">;"
        }
    .end annotation
.end field

.field mTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private numHelpers:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@a
    .line 38
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@11
    .line 39
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    #@18
    .line 48
    new-instance v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@1a
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@1d
    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@1f
    const/4 v1, 0x0

    #@20
    .line 176
    iput v1, p0, Landroidx/constraintlayout/core/state/State;->numHelpers:I

    #@22
    .line 97
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@24
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    #@26
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    return-void
.end method

.method private createHelperKey()Ljava/lang/String;
    .registers 4

    #@0
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "__HELPER_KEY_"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Landroidx/constraintlayout/core/state/State;->numHelpers:I

    #@9
    add-int/lit8 v2, v1, 0x1

    #@b
    iput v2, p0, Landroidx/constraintlayout/core/state/State;->numHelpers:I

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "__"

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
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 9

    #@0
    .line 317
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    #@3
    .line 318
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    #@d
    .line 319
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    #@17
    .line 320
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@19
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v0

    #@21
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_4b

    #@27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    .line 321
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroidx/constraintlayout/core/state/HelperReference;

    #@33
    .line 322
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@36
    move-result-object v2

    #@37
    if-eqz v2, :cond_21

    #@39
    .line 324
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@3b
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Landroidx/constraintlayout/core/state/Reference;

    #@41
    if-nez v3, :cond_47

    #@43
    .line 326
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@46
    move-result-object v3

    #@47
    .line 328
    :cond_47
    invoke-interface {v3, v2}, Landroidx/constraintlayout/core/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@4a
    goto :goto_21

    #@4b
    .line 331
    :cond_4b
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@4d
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@50
    move-result-object v0

    #@51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v0

    #@55
    :cond_55
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_91

    #@5b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v1

    #@5f
    .line 332
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@61
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v2

    #@65
    check-cast v2, Landroidx/constraintlayout/core/state/Reference;

    #@67
    .line 333
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@69
    if-eq v2, v3, :cond_55

    #@6b
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@6e
    move-result-object v3

    #@6f
    instance-of v3, v3, Landroidx/constraintlayout/core/state/HelperReference;

    #@71
    if-eqz v3, :cond_55

    #@73
    .line 334
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@76
    move-result-object v2

    #@77
    check-cast v2, Landroidx/constraintlayout/core/state/HelperReference;

    #@79
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@7c
    move-result-object v2

    #@7d
    if-eqz v2, :cond_55

    #@7f
    .line 336
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@81
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    move-result-object v3

    #@85
    check-cast v3, Landroidx/constraintlayout/core/state/Reference;

    #@87
    if-nez v3, :cond_8d

    #@89
    .line 338
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@8c
    move-result-object v3

    #@8d
    .line 340
    :cond_8d
    invoke-interface {v3, v2}, Landroidx/constraintlayout/core/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@90
    goto :goto_55

    #@91
    .line 344
    :cond_91
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@93
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@96
    move-result-object v0

    #@97
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9a
    move-result-object v0

    #@9b
    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9e
    move-result v1

    #@9f
    if-eqz v1, :cond_d7

    #@a1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a4
    move-result-object v1

    #@a5
    .line 345
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@a7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    move-result-object v1

    #@ab
    check-cast v1, Landroidx/constraintlayout/core/state/Reference;

    #@ad
    .line 346
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@af
    if-eq v1, v2, :cond_d3

    #@b1
    .line 347
    invoke-interface {v1}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b4
    move-result-object v2

    #@b5
    .line 348
    invoke-interface {v1}, Landroidx/constraintlayout/core/state/Reference;->getKey()Ljava/lang/Object;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    #@c0
    const/4 v3, 0x0

    #@c1
    .line 349
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@c4
    .line 350
    invoke-interface {v1}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@c7
    move-result-object v3

    #@c8
    instance-of v3, v3, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    #@ca
    if-eqz v3, :cond_cf

    #@cc
    .line 352
    invoke-interface {v1}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    #@cf
    .line 354
    :cond_cf
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@d2
    goto :goto_9b

    #@d3
    .line 356
    :cond_d3
    invoke-interface {v1, p1}, Landroidx/constraintlayout/core/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@d6
    goto :goto_9b

    #@d7
    .line 359
    :cond_d7
    iget-object p1, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@d9
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@dc
    move-result-object p1

    #@dd
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e0
    move-result-object p1

    #@e1
    :goto_e1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@e4
    move-result v0

    #@e5
    if-eqz v0, :cond_125

    #@e7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ea
    move-result-object v0

    #@eb
    .line 360
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@ed
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    move-result-object v0

    #@f1
    check-cast v0, Landroidx/constraintlayout/core/state/HelperReference;

    #@f3
    .line 361
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@f6
    move-result-object v1

    #@f7
    if-eqz v1, :cond_121

    #@f9
    .line 363
    iget-object v1, v0, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    #@fb
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@fe
    move-result-object v1

    #@ff
    :goto_ff
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@102
    move-result v2

    #@103
    if-eqz v2, :cond_11d

    #@105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@108
    move-result-object v2

    #@109
    .line 364
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@10b
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10e
    move-result-object v2

    #@10f
    check-cast v2, Landroidx/constraintlayout/core/state/Reference;

    #@111
    .line 365
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@114
    move-result-object v3

    #@115
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@118
    move-result-object v2

    #@119
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@11c
    goto :goto_ff

    #@11d
    .line 367
    :cond_11d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/HelperReference;->apply()V

    #@120
    goto :goto_e1

    #@121
    .line 369
    :cond_121
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/HelperReference;->apply()V

    #@124
    goto :goto_e1

    #@125
    .line 372
    :cond_125
    iget-object p1, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@127
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@12a
    move-result-object p1

    #@12b
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12e
    move-result-object p1

    #@12f
    :cond_12f
    :goto_12f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@132
    move-result v0

    #@133
    if-eqz v0, :cond_1a2

    #@135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@138
    move-result-object v0

    #@139
    .line 373
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@13b
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13e
    move-result-object v0

    #@13f
    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    #@141
    .line 374
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@143
    if-eq v0, v1, :cond_12f

    #@145
    invoke-interface {v0}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@148
    move-result-object v1

    #@149
    instance-of v1, v1, Landroidx/constraintlayout/core/state/HelperReference;

    #@14b
    if-eqz v1, :cond_12f

    #@14d
    .line 375
    invoke-interface {v0}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@150
    move-result-object v1

    #@151
    check-cast v1, Landroidx/constraintlayout/core/state/HelperReference;

    #@153
    .line 376
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@156
    move-result-object v2

    #@157
    if-eqz v2, :cond_12f

    #@159
    .line 378
    iget-object v1, v1, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    #@15b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@15e
    move-result-object v1

    #@15f
    :goto_15f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@162
    move-result v3

    #@163
    if-eqz v3, :cond_19e

    #@165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@168
    move-result-object v3

    #@169
    .line 379
    iget-object v4, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@16b
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16e
    move-result-object v4

    #@16f
    check-cast v4, Landroidx/constraintlayout/core/state/Reference;

    #@171
    if-eqz v4, :cond_17b

    #@173
    .line 381
    invoke-interface {v4}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@176
    move-result-object v3

    #@177
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@17a
    goto :goto_15f

    #@17b
    .line 382
    :cond_17b
    instance-of v4, v3, Landroidx/constraintlayout/core/state/Reference;

    #@17d
    if-eqz v4, :cond_189

    #@17f
    .line 383
    check-cast v3, Landroidx/constraintlayout/core/state/Reference;

    #@181
    invoke-interface {v3}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@184
    move-result-object v3

    #@185
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@188
    goto :goto_15f

    #@189
    .line 385
    :cond_189
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18b
    new-instance v5, Ljava/lang/StringBuilder;

    #@18d
    const-string v6, "couldn\'t find reference for "

    #@18f
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@192
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v3

    #@196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v3

    #@19a
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19d
    goto :goto_15f

    #@19e
    .line 388
    :cond_19e
    invoke-interface {v0}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    #@1a1
    goto :goto_12f

    #@1a2
    .line 392
    :cond_1a2
    iget-object p1, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@1a4
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1a7
    move-result-object p1

    #@1a8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1ab
    move-result-object p1

    #@1ac
    :cond_1ac
    :goto_1ac
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@1af
    move-result v0

    #@1b0
    if-eqz v0, :cond_1d0

    #@1b2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b5
    move-result-object v0

    #@1b6
    .line 393
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@1b8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1bb
    move-result-object v1

    #@1bc
    check-cast v1, Landroidx/constraintlayout/core/state/Reference;

    #@1be
    .line 394
    invoke-interface {v1}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    #@1c1
    .line 395
    invoke-interface {v1}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1c4
    move-result-object v1

    #@1c5
    if-eqz v1, :cond_1ac

    #@1c7
    if-eqz v0, :cond_1ac

    #@1c9
    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v0

    #@1cd
    iput-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@1cf
    goto :goto_1ac

    #@1d0
    :cond_1d0
    return-void
.end method

.method public barrier(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Direction;)Landroidx/constraintlayout/core/state/helpers/BarrierReference;
    .registers 4

    #@0
    .line 233
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@3
    move-result-object p1

    #@4
    .line 234
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_12

    #@a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@d
    move-result-object v0

    #@e
    instance-of v0, v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    #@10
    if-nez v0, :cond_1d

    #@12
    .line 235
    :cond_12
    new-instance v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    #@14
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@17
    .line 236
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    #@1a
    .line 237
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setFacade(Landroidx/constraintlayout/core/state/helpers/Facade;)V

    #@1d
    .line 239
    :cond_1d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@20
    move-result-object p1

    #@21
    check-cast p1, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    #@23
    return-object p1
.end method

.method public varargs centerHorizontally([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 263
    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

    #@3
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;

    #@9
    .line 264
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    #@c
    return-object v0
.end method

.method public varargs centerVertically([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 269
    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    #@3
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;

    #@9
    .line 270
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    #@c
    return-object v0
.end method

.method public constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4

    #@0
    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    #@8
    if-nez v0, :cond_16

    #@a
    .line 166
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@d
    move-result-object v0

    #@e
    .line 167
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@10
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 168
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/state/Reference;->setKey(Ljava/lang/Object;)V

    #@16
    .line 170
    :cond_16
    instance-of p1, v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@18
    if-eqz p1, :cond_1d

    #@1a
    .line 171
    check-cast v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@1c
    return-object v0

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    return-object p1
.end method

.method public convertDimension(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 114
    instance-of v0, p1, Ljava/lang/Float;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 115
    check-cast p1, Ljava/lang/Float;

    #@6
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    #@9
    move-result p1

    #@a
    return p1

    #@b
    .line 117
    :cond_b
    instance-of v0, p1, Ljava/lang/Integer;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 118
    check-cast p1, Ljava/lang/Integer;

    #@11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result p1

    #@15
    return p1

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    return p1
.end method

.method public createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    #@0
    .line 130
    new-instance p1, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@2
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@5
    return-object p1
.end method

.method public directMapping()V
    .registers 5

    #@0
    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_24

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 276
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@17
    move-result-object v2

    #@18
    .line 277
    instance-of v3, v2, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@1a
    if-nez v3, :cond_1d

    #@1c
    goto :goto_a

    #@1d
    .line 280
    :cond_1d
    move-object v3, v2

    #@1e
    check-cast v3, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@20
    .line 281
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    #@23
    goto :goto_a

    #@24
    :cond_24
    return-void
.end method

.method public getIdsForTag(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 311
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Ljava/util/ArrayList;

    #@10
    return-object p1

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    return-object p1
.end method

.method public guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 5

    #@0
    .line 222
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@3
    move-result-object v0

    #@4
    .line 223
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_12

    #@a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@d
    move-result-object v1

    #@e
    instance-of v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    #@10
    if-nez v1, :cond_20

    #@12
    .line 224
    :cond_12
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    #@14
    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@17
    .line 225
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->setOrientation(I)V

    #@1a
    .line 226
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->setKey(Ljava/lang/Object;)V

    #@1d
    .line 227
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setFacade(Landroidx/constraintlayout/core/state/helpers/Facade;)V

    #@20
    .line 229
    :cond_20
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    #@23
    move-result-object p1

    #@24
    check-cast p1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    #@26
    return-object p1
.end method

.method public height(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 2

    #@0
    .line 146
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;
    .registers 5

    #@0
    if-nez p1, :cond_6

    #@2
    .line 183
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/State;->createHelperKey()Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    .line 185
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroidx/constraintlayout/core/state/HelperReference;

    #@e
    if-nez v0, :cond_53

    #@10
    .line 187
    sget-object v0, Landroidx/constraintlayout/core/state/State$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I

    #@12
    invoke-virtual {p2}, Landroidx/constraintlayout/core/state/State$Helper;->ordinal()I

    #@15
    move-result v1

    #@16
    aget v0, v0, v1

    #@18
    const/4 v1, 0x1

    #@19
    if-eq v0, v1, :cond_45

    #@1b
    const/4 v1, 0x2

    #@1c
    if-eq v0, v1, :cond_3f

    #@1e
    const/4 v1, 0x3

    #@1f
    if-eq v0, v1, :cond_39

    #@21
    const/4 v1, 0x4

    #@22
    if-eq v0, v1, :cond_33

    #@24
    const/4 v1, 0x5

    #@25
    if-eq v0, v1, :cond_2d

    #@27
    .line 204
    new-instance v0, Landroidx/constraintlayout/core/state/HelperReference;

    #@29
    invoke-direct {v0, p0, p2}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    #@2c
    goto :goto_4b

    #@2d
    .line 201
    :cond_2d
    new-instance p2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    #@2f
    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@32
    goto :goto_4a

    #@33
    .line 198
    :cond_33
    new-instance p2, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;

    #@35
    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@38
    goto :goto_4a

    #@39
    .line 195
    :cond_39
    new-instance p2, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;

    #@3b
    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@3e
    goto :goto_4a

    #@3f
    .line 192
    :cond_3f
    new-instance p2, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    #@41
    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@44
    goto :goto_4a

    #@45
    .line 189
    :cond_45
    new-instance p2, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    #@47
    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@4a
    :goto_4a
    move-object v0, p2

    #@4b
    .line 207
    :goto_4b
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/HelperReference;->setKey(Ljava/lang/Object;)V

    #@4e
    .line 208
    iget-object p2, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@50
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    :cond_53
    return-object v0
.end method

.method public horizontalChain()Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 253
    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    #@3
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    #@9
    return-object v0
.end method

.method public varargs horizontalChain([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 257
    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    #@3
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    #@9
    .line 258
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    #@c
    return-object v0
.end method

.method public horizontalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 214
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 286
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@3
    move-result-object p1

    #@4
    .line 287
    instance-of v0, p1, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 288
    move-object v0, p1

    #@9
    check-cast v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@b
    .line 289
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    #@e
    :cond_e
    return-void
.end method

.method reference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Reference;
    .registers 3

    #@0
    .line 160
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/Reference;

    #@8
    return-object p1
.end method

.method public reset()V
    .registers 2

    #@0
    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@a
    return-void
.end method

.method public sameFixedHeight(I)Z
    .registers 3

    #@0
    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/Dimension;->equalsFixedValue(I)Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public sameFixedWidth(I)Z
    .registers 3

    #@0
    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/Dimension;->equalsFixedValue(I)Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 3

    #@0
    .line 155
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@5
    return-object p0
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    .line 294
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@3
    move-result-object v0

    #@4
    .line 295
    instance-of v1, v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@6
    if-eqz v1, :cond_2d

    #@8
    .line 296
    move-object v1, v0

    #@9
    check-cast v1, Landroidx/constraintlayout/core/state/ConstraintReference;

    #@b
    .line 297
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setTag(Ljava/lang/String;)V

    #@e
    .line 299
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_21

    #@16
    .line 300
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 301
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_2a

    #@21
    .line 303
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    #@23
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object p2

    #@27
    move-object v0, p2

    #@28
    check-cast v0, Ljava/util/ArrayList;

    #@2a
    .line 305
    :goto_2a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    :cond_2d
    return-void
.end method

.method public setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 3

    #@0
    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@5
    return-object p0
.end method

.method public verticalChain()Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 243
    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    #@3
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    #@9
    return-object v0
.end method

.method public varargs verticalChain([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 247
    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    #@3
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    #@9
    .line 248
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    #@c
    return-object v0
.end method

.method public verticalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 218
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public width(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 2

    #@0
    .line 142
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

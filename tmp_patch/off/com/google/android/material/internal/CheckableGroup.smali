.class public Lcom/google/android/material/internal/CheckableGroup;
.super Ljava/lang/Object;
.source "CheckableGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/material/internal/MaterialCheckable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final checkables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final checkedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onCheckedStateChangeListener:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

.field private selectionRequired:Z

.field private singleSelection:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    #@a
    .line 45
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@11
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;)Z
    .registers 2

    #@0
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/internal/CheckableGroup;)Z
    .registers 1

    #@0
    .line 43
    iget-boolean p0, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    #@2
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;Z)Z
    .registers 3

    #@0
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/internal/CheckableGroup;)V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    #@3
    return-void
.end method

.method private checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MaterialCheckable<",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .line 149
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    #@3
    move-result v0

    #@4
    .line 150
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    const/4 v2, 0x0

    #@f
    if-eqz v1, :cond_12

    #@11
    return v2

    #@12
    .line 153
    :cond_12
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    #@14
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getSingleCheckedId()I

    #@17
    move-result v3

    #@18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/google/android/material/internal/MaterialCheckable;

    #@22
    if-eqz v1, :cond_27

    #@24
    .line 155
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    #@27
    .line 157
    :cond_27
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v0

    #@2d
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    .line 158
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->isChecked()Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_3b

    #@37
    const/4 v1, 0x1

    #@38
    .line 159
    invoke-interface {p1, v1}, Lcom/google/android/material/internal/MaterialCheckable;->setChecked(Z)V

    #@3b
    :cond_3b
    return v0
.end method

.method private onCheckedStateChanged()V
    .registers 3

    #@0
    .line 183
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;->onCheckedStateChanged(Ljava/util/Set;)V

    #@b
    :cond_b
    return-void
.end method

.method private uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MaterialCheckable<",
            "TT;>;Z)Z"
        }
    .end annotation

    #@0
    .line 166
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    #@3
    move-result v0

    #@4
    .line 167
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    const/4 v2, 0x0

    #@f
    if-nez v1, :cond_12

    #@11
    return v2

    #@12
    :cond_12
    if-eqz p2, :cond_2d

    #@14
    .line 170
    iget-object p2, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@16
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@19
    move-result p2

    #@1a
    const/4 v1, 0x1

    #@1b
    if-ne p2, v1, :cond_2d

    #@1d
    iget-object p2, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v3

    #@23
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@26
    move-result p2

    #@27
    if-eqz p2, :cond_2d

    #@29
    .line 172
    invoke-interface {p1, v1}, Lcom/google/android/material/internal/MaterialCheckable;->setChecked(Z)V

    #@2c
    return v2

    #@2d
    .line 175
    :cond_2d
    iget-object p2, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v0

    #@33
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@36
    move-result p2

    #@37
    .line 176
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->isChecked()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_40

    #@3d
    .line 177
    invoke-interface {p1, v2}, Lcom/google/android/material/internal/MaterialCheckable;->setChecked(Z)V

    #@40
    :cond_40
    return p2
.end method


# virtual methods
.method public addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 75
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    #@2
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 76
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->isChecked()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    #@16
    .line 79
    :cond_16
    new-instance v0, Lcom/google/android/material/internal/CheckableGroup$1;

    #@18
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/CheckableGroup$1;-><init>(Lcom/google/android/material/internal/CheckableGroup;)V

    #@1b
    invoke-interface {p1, v0}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    #@1e
    return-void
.end method

.method public check(I)V
    .registers 3

    #@0
    .line 96
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object p1

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    #@c
    if-nez p1, :cond_f

    #@e
    return-void

    #@f
    .line 100
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_18

    #@15
    .line 101
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    #@18
    :cond_18
    return-void
.end method

.method public clearCheck()V
    .registers 5

    #@0
    .line 116
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    xor-int/lit8 v0, v0, 0x1

    #@8
    .line 117
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    #@a
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_23

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/google/android/material/internal/MaterialCheckable;

    #@1e
    const/4 v3, 0x0

    #@1f
    .line 118
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    #@22
    goto :goto_12

    #@23
    :cond_23
    if-eqz v0, :cond_28

    #@25
    .line 121
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    #@28
    :cond_28
    return-void
.end method

.method public getCheckedIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 132
    new-instance v0, Ljava/util/HashSet;

    #@2
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    const/4 v2, 0x0

    #@a
    .line 139
    :goto_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v3

    #@e
    if-ge v2, v3, :cond_34

    #@10
    .line 140
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v3

    #@14
    .line 141
    instance-of v4, v3, Lcom/google/android/material/internal/MaterialCheckable;

    #@16
    if-eqz v4, :cond_31

    #@18
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@1b
    move-result v4

    #@1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_31

    #@26
    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@29
    move-result v3

    #@2a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    :cond_31
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_a

    #@34
    :cond_34
    return-object v1
.end method

.method public getSingleCheckedId()I
    .registers 2

    #@0
    .line 127
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    #@2
    if-eqz v0, :cond_1d

    #@4
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1d

    #@c
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v0, -0x1

    #@1e
    :goto_1e
    return v0
.end method

.method public isSelectionRequired()Z
    .registers 2

    #@0
    .line 67
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    #@2
    return v0
.end method

.method public isSingleSelection()Z
    .registers 2

    #@0
    .line 59
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    #@2
    return v0
.end method

.method public removeCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 90
    invoke-interface {p1, v0}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    #@4
    .line 91
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    #@6
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 92
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    #@13
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    #@16
    move-result p1

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object p1

    #@1b
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@1e
    return-void
.end method

.method public setOnCheckedStateChangeListener(Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;)V
    .registers 2

    #@0
    .line 71
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    #@2
    return-void
.end method

.method public setSelectionRequired(Z)V
    .registers 2

    #@0
    .line 63
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    #@2
    return-void
.end method

.method public setSingleSelection(Z)V
    .registers 3

    #@0
    .line 52
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    #@6
    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->clearCheck()V

    #@9
    :cond_9
    return-void
.end method

.method public uncheck(I)V
    .registers 3

    #@0
    .line 106
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object p1

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    #@c
    if-nez p1, :cond_f

    #@e
    return-void

    #@f
    .line 110
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    #@11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_1a

    #@17
    .line 111
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    #@1a
    :cond_1a
    return-void
.end method

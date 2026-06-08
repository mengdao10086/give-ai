.class public Landroidx/transition/TransitionValues;
.super Ljava/lang/Object;
.source "TransitionValues.java"


# instance fields
.field final mTargetedTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@11
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@11
    .line 53
    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    .line 74
    instance-of v0, p1, Landroidx/transition/TransitionValues;

    #@2
    if-eqz v0, :cond_18

    #@4
    .line 75
    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@6
    check-cast p1, Landroidx/transition/TransitionValues;

    #@8
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@a
    if-ne v0, v1, :cond_18

    #@c
    .line 76
    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@e
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_18

    #@16
    const/4 p1, 0x1

    #@17
    return p1

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    return p1
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 86
    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "TransitionValues@"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Landroidx/transition/TransitionValues;->hashCode()I

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, ":\n"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string v1, "    view = "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string v1, "\n"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    const-string v2, "    values:"

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .line 94
    iget-object v2, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@51
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@54
    move-result-object v2

    #@55
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v2

    #@59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_91

    #@5f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v3

    #@63
    check-cast v3, Ljava/lang/String;

    #@65
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    const-string v4, "    "

    #@70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    const-string v4, ": "

    #@7a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    iget-object v4, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@80
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    goto :goto_59

    #@91
    :cond_91
    return-object v0
.end method

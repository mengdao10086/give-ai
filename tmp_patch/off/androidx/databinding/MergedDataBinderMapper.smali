.class public Landroidx/databinding/MergedDataBinderMapper;
.super Landroidx/databinding/DataBinderMapper;
.source "MergedDataBinderMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MergedDataBinderMapper"


# instance fields
.field private mExistingMappers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/databinding/DataBinderMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFeatureBindingMappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 37
    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    #@3
    .line 42
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mExistingMappers:Ljava/util/Set;

    #@a
    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    #@11
    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    #@18
    return-void
.end method

.method private loadFeatures()Z
    .registers 8

    #@0
    const-string v0, "unable to add feature mapper for "

    #@2
    const-string v1, "MergedDataBinderMapper"

    #@4
    .line 138
    iget-object v2, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    #@6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    :catch_b
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_57

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/lang/String;

    #@17
    .line 140
    :try_start_17
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1a
    move-result-object v5

    #@1b
    .line 141
    const-class v6, Landroidx/databinding/DataBinderMapper;

    #@1d
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_b

    #@23
    .line 142
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    check-cast v5, Landroidx/databinding/DataBinderMapper;

    #@29
    invoke-virtual {p0, v5}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    #@2c
    .line 143
    iget-object v5, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    #@2e
    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_31} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_31} :catch_45
    .catch Ljava/lang/InstantiationException; {:try_start_17 .. :try_end_31} :catch_33

    #@31
    const/4 v3, 0x1

    #@32
    goto :goto_b

    #@33
    :catch_33
    move-exception v5

    #@34
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v1, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_b

    #@45
    :catch_45
    move-exception v5

    #@46
    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-static {v1, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_b

    #@57
    :cond_57
    return v3
.end method


# virtual methods
.method public addMapper(Landroidx/databinding/DataBinderMapper;)V
    .registers 4

    #@0
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 61
    iget-object v1, p0, Landroidx/databinding/MergedDataBinderMapper;->mExistingMappers:Ljava/util/Set;

    #@6
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_29

    #@c
    .line 62
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 63
    invoke-virtual {p1}, Landroidx/databinding/DataBinderMapper;->collectDependencies()Ljava/util/List;

    #@14
    move-result-object p1

    #@15
    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object p1

    #@19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_29

    #@1f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroidx/databinding/DataBinderMapper;

    #@25
    .line 65
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    #@28
    goto :goto_19

    #@29
    :cond_29
    return-void
.end method

.method protected addMapper(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 72
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    const-string v1, ".DataBinderMapperImpl"

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    return-void
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .registers 4

    #@0
    .line 121
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_19

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/databinding/DataBinderMapper;

    #@12
    .line 122
    invoke-virtual {v1, p1}, Landroidx/databinding/DataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_6

    #@18
    return-object v1

    #@19
    .line 127
    :cond_19
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_24

    #@1f
    .line 128
    invoke-virtual {p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    return-object p1

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 6

    #@0
    .line 78
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_19

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/databinding/DataBinderMapper;

    #@12
    .line 79
    invoke-virtual {v1, p1, p2, p3}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_6

    #@18
    return-object v1

    #@19
    .line 84
    :cond_19
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_24

    #@1f
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@22
    move-result-object p1

    #@23
    return-object p1

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 6

    #@0
    .line 93
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_19

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/databinding/DataBinderMapper;

    #@12
    .line 94
    invoke-virtual {v1, p1, p2, p3}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_6

    #@18
    return-object v1

    #@19
    .line 99
    :cond_19
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_24

    #@1f
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    #@22
    move-result-object p1

    #@23
    return-object p1

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .registers 4

    #@0
    .line 107
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_19

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/databinding/DataBinderMapper;

    #@12
    .line 108
    invoke-virtual {v1, p1}, Landroidx/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_6

    #@18
    return v1

    #@19
    .line 113
    :cond_19
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_24

    #@1f
    .line 114
    invoke-virtual {p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    #@22
    move-result p1

    #@23
    return p1

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    return p1
.end method

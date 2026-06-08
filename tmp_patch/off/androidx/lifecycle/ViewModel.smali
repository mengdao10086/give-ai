.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final mBagOfTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCleared:Z

.field private final mCloseables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@a
    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    #@11
    const/4 v0, 0x0

    #@12
    .line 117
    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    #@14
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Closeable;)V
    .registers 4

    #@0
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@a
    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    #@11
    const/4 v1, 0x0

    #@12
    .line 117
    iput-boolean v1, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    #@14
    .line 136
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@17
    move-result-object p1

    #@18
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@1b
    return-void
.end method

.method private static closeWithRuntimeException(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 238
    instance-of v0, p0, Ljava/io/Closeable;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 240
    :try_start_4
    check-cast p0, Ljava/io/Closeable;

    #@6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    #@9
    goto :goto_11

    #@a
    :catch_a
    move-exception p0

    #@b
    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v0

    #@11
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .registers 4

    #@0
    .line 150
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    #@2
    if-eqz v0, :cond_f

    #@4
    .line 151
    monitor-enter v0

    #@5
    .line 152
    :try_start_5
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    #@7
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a
    .line 153
    monitor-exit v0

    #@b
    goto :goto_f

    #@c
    :catchall_c
    move-exception p1

    #@d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    #@e
    throw p1

    #@f
    :cond_f
    :goto_f
    return-void
.end method

.method final clear()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 169
    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    #@3
    .line 174
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@5
    if-eqz v0, :cond_25

    #@7
    .line 175
    monitor-enter v0

    #@8
    .line 176
    :try_start_8
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

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
    if-eqz v2, :cond_20

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    .line 178
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    #@1f
    goto :goto_12

    #@20
    .line 180
    :cond_20
    monitor-exit v0

    #@21
    goto :goto_25

    #@22
    :catchall_22
    move-exception v1

    #@23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    #@24
    throw v1

    #@25
    .line 183
    :cond_25
    :goto_25
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    #@27
    if-eqz v0, :cond_45

    #@29
    .line 184
    monitor-enter v0

    #@2a
    .line 185
    :try_start_2a
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    #@2c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v1

    #@30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_40

    #@36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/io/Closeable;

    #@3c
    .line 186
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    #@3f
    goto :goto_30

    #@40
    .line 188
    :cond_40
    monitor-exit v0

    #@41
    goto :goto_45

    #@42
    :catchall_42
    move-exception v1

    #@43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_42

    #@44
    throw v1

    #@45
    .line 190
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    #@48
    return-void
.end method

.method getTag(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 229
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 232
    :cond_6
    monitor-enter v0

    #@7
    .line 233
    :try_start_7
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@9
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    monitor-exit v0

    #@e
    return-object p1

    #@f
    :catchall_f
    move-exception p1

    #@10
    .line 234
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    #@11
    throw p1
.end method

.method protected onCleared()V
    .registers 1

    #@0
    return-void
.end method

.method setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    #@0
    .line 208
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@2
    monitor-enter v0

    #@3
    .line 209
    :try_start_3
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_10

    #@b
    .line 211
    iget-object v2, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    #@d
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 213
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    #@11
    if-nez v1, :cond_14

    #@13
    goto :goto_15

    #@14
    :cond_14
    move-object p2, v1

    #@15
    .line 215
    :goto_15
    iget-boolean p1, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    #@17
    if-eqz p1, :cond_1c

    #@19
    .line 219
    invoke-static {p2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    #@1c
    :cond_1c
    return-object p2

    #@1d
    :catchall_1d
    move-exception p1

    #@1e
    .line 213
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    #@1f
    throw p1
.end method

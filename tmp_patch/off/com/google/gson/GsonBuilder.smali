.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    #@5
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@7
    .line 80
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    #@9
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    #@b
    .line 81
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    #@d
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@f
    .line 82
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    #@16
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@1d
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    #@24
    const/4 v0, 0x0

    #@25
    .line 87
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    #@27
    const/4 v1, 0x2

    #@28
    .line 89
    iput v1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    #@2a
    .line 90
    iput v1, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    #@2c
    .line 91
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    #@2e
    .line 92
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    #@30
    const/4 v1, 0x1

    #@31
    .line 93
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    #@33
    .line 94
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    #@35
    .line 95
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    #@37
    .line 96
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    #@39
    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;)V
    .registers 7

    #@0
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    #@5
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@7
    .line 80
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    #@9
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    #@b
    .line 81
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    #@d
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@f
    .line 82
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    #@16
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@1d
    .line 86
    new-instance v2, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v2, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    #@24
    const/4 v3, 0x0

    #@25
    .line 87
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    #@27
    const/4 v4, 0x2

    #@28
    .line 89
    iput v4, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    #@2a
    .line 90
    iput v4, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    #@2c
    .line 91
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    #@2e
    .line 92
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    #@30
    const/4 v4, 0x1

    #@31
    .line 93
    iput-boolean v4, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    #@33
    .line 94
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    #@35
    .line 95
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    #@37
    .line 96
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    #@39
    .line 114
    iget-object v3, p1, Lcom/google/gson/Gson;->excluder:Lcom/google/gson/internal/Excluder;

    #@3b
    iput-object v3, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@3d
    .line 115
    iget-object v3, p1, Lcom/google/gson/Gson;->fieldNamingStrategy:Lcom/google/gson/FieldNamingStrategy;

    #@3f
    iput-object v3, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@41
    .line 116
    iget-object v3, p1, Lcom/google/gson/Gson;->instanceCreators:Ljava/util/Map;

    #@43
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@46
    .line 117
    iget-boolean v0, p1, Lcom/google/gson/Gson;->serializeNulls:Z

    #@48
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    #@4a
    .line 118
    iget-boolean v0, p1, Lcom/google/gson/Gson;->complexMapKeySerialization:Z

    #@4c
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    #@4e
    .line 119
    iget-boolean v0, p1, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    #@50
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    #@52
    .line 120
    iget-boolean v0, p1, Lcom/google/gson/Gson;->htmlSafe:Z

    #@54
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    #@56
    .line 121
    iget-boolean v0, p1, Lcom/google/gson/Gson;->prettyPrinting:Z

    #@58
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    #@5a
    .line 122
    iget-boolean v0, p1, Lcom/google/gson/Gson;->lenient:Z

    #@5c
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    #@5e
    .line 123
    iget-boolean v0, p1, Lcom/google/gson/Gson;->serializeSpecialFloatingPointValues:Z

    #@60
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    #@62
    .line 124
    iget-object v0, p1, Lcom/google/gson/Gson;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    #@64
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    #@66
    .line 125
    iget-object v0, p1, Lcom/google/gson/Gson;->datePattern:Ljava/lang/String;

    #@68
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    #@6a
    .line 126
    iget v0, p1, Lcom/google/gson/Gson;->dateStyle:I

    #@6c
    iput v0, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    #@6e
    .line 127
    iget v0, p1, Lcom/google/gson/Gson;->timeStyle:I

    #@70
    iput v0, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    #@72
    .line 128
    iget-object v0, p1, Lcom/google/gson/Gson;->builderFactories:Ljava/util/List;

    #@74
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@77
    .line 129
    iget-object p1, p1, Lcom/google/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    #@79
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@7c
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_24

    #@2
    const-string v0, ""

    #@4
    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_24

    #@e
    .line 612
    new-instance p2, Lcom/google/gson/DefaultDateTypeAdapter;

    #@10
    const-class p3, Ljava/util/Date;

    #@12
    invoke-direct {p2, p3, p1}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@15
    .line 613
    new-instance p3, Lcom/google/gson/DefaultDateTypeAdapter;

    #@17
    const-class v0, Ljava/sql/Timestamp;

    #@19
    invoke-direct {p3, v0, p1}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@1c
    .line 614
    new-instance v0, Lcom/google/gson/DefaultDateTypeAdapter;

    #@1e
    const-class v1, Ljava/sql/Date;

    #@20
    invoke-direct {v0, v1, p1}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@23
    goto :goto_41

    #@24
    :cond_24
    const/4 p1, 0x2

    #@25
    if-eq p2, p1, :cond_5c

    #@27
    if-eq p3, p1, :cond_5c

    #@29
    .line 616
    new-instance p1, Lcom/google/gson/DefaultDateTypeAdapter;

    #@2b
    const-class v0, Ljava/util/Date;

    #@2d
    invoke-direct {p1, v0, p2, p3}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    #@30
    .line 617
    new-instance v0, Lcom/google/gson/DefaultDateTypeAdapter;

    #@32
    const-class v1, Ljava/sql/Timestamp;

    #@34
    invoke-direct {v0, v1, p2, p3}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    #@37
    .line 618
    new-instance v1, Lcom/google/gson/DefaultDateTypeAdapter;

    #@39
    const-class v2, Ljava/sql/Date;

    #@3b
    invoke-direct {v1, v2, p2, p3}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    #@3e
    move-object p2, p1

    #@3f
    move-object p3, v0

    #@40
    move-object v0, v1

    #@41
    .line 623
    :goto_41
    const-class p1, Ljava/util/Date;

    #@43
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    #@46
    move-result-object p1

    #@47
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    .line 624
    const-class p1, Ljava/sql/Timestamp;

    #@4c
    invoke-static {p1, p3}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    #@4f
    move-result-object p1

    #@50
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 625
    const-class p1, Ljava/sql/Date;

    #@55
    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    #@58
    move-result-object p1

    #@59
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    :cond_5c
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 5

    #@0
    .line 375
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;

    #@7
    move-result-object p1

    #@8
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@a
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 5

    #@0
    .line 358
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;

    #@7
    move-result-object p1

    #@8
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@a
    return-object p0
.end method

.method public create()Lcom/google/gson/Gson;
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    .line 587
    new-instance v1, Ljava/util/ArrayList;

    #@4
    move-object/from16 v18, v1

    #@6
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v3

    #@12
    add-int/2addr v2, v3

    #@13
    add-int/lit8 v2, v2, 0x3

    #@15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 588
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@1a
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@1d
    .line 589
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@20
    .line 591
    new-instance v2, Ljava/util/ArrayList;

    #@22
    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    #@24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@27
    .line 592
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@2a
    .line 593
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@2d
    .line 595
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    #@2f
    iget v3, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    #@31
    iget v4, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    #@33
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    #@36
    .line 597
    new-instance v19, Lcom/google/gson/Gson;

    #@38
    move-object/from16 v1, v19

    #@3a
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@3c
    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@3e
    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    #@40
    iget-boolean v5, v0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    #@42
    iget-boolean v6, v0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    #@44
    iget-boolean v7, v0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    #@46
    iget-boolean v8, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    #@48
    iget-boolean v9, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    #@4a
    iget-boolean v10, v0, Lcom/google/gson/GsonBuilder;->lenient:Z

    #@4c
    iget-boolean v11, v0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    #@4e
    iget-object v12, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    #@50
    iget-object v13, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    #@52
    iget v14, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    #@54
    iget v15, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    #@56
    move-object/from16 v20, v1

    #@58
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@5a
    move-object/from16 v16, v1

    #@5c
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    #@5e
    move-object/from16 v17, v1

    #@60
    move-object/from16 v1, v20

    #@62
    invoke-direct/range {v1 .. v18}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@65
    return-object v19
.end method

.method public disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 411
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    #@3
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    .line 285
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@2
    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@8
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 274
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    #@3
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;
    .registers 3

    #@0
    .line 156
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/Excluder;->withModifiers([I)Lcom/google/gson/internal/Excluder;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@8
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    .line 181
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@2
    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@8
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 170
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    #@3
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .registers 6

    #@0
    .line 497
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    #@2
    if-nez v0, :cond_13

    #@4
    instance-of v1, p2, Lcom/google/gson/JsonDeserializer;

    #@6
    if-nez v1, :cond_13

    #@8
    instance-of v1, p2, Lcom/google/gson/InstanceCreator;

    #@a
    if-nez v1, :cond_13

    #@c
    instance-of v1, p2, Lcom/google/gson/TypeAdapter;

    #@e
    if-eqz v1, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 v1, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 v1, 0x1

    #@14
    :goto_14
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@17
    .line 501
    instance-of v1, p2, Lcom/google/gson/InstanceCreator;

    #@19
    if-eqz v1, :cond_23

    #@1b
    .line 502
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    #@1d
    move-object v2, p2

    #@1e
    check-cast v2, Lcom/google/gson/InstanceCreator;

    #@20
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    :cond_23
    if-nez v0, :cond_29

    #@25
    .line 504
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    #@27
    if-eqz v0, :cond_36

    #@29
    .line 505
    :cond_29
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@2c
    move-result-object v0

    #@2d
    .line 506
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@2f
    invoke-static {v0, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    #@32
    move-result-object v0

    #@33
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 508
    :cond_36
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    #@38
    if-eqz v0, :cond_49

    #@3a
    .line 509
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@3c
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@3f
    move-result-object p1

    #@40
    check-cast p2, Lcom/google/gson/TypeAdapter;

    #@42
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    #@45
    move-result-object p1

    #@46
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    :cond_49
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;
    .registers 3

    #@0
    .line 523
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    #@0
    .line 543
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    #@2
    if-nez v0, :cond_f

    #@4
    instance-of v1, p2, Lcom/google/gson/JsonDeserializer;

    #@6
    if-nez v1, :cond_f

    #@8
    instance-of v1, p2, Lcom/google/gson/TypeAdapter;

    #@a
    if-eqz v1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 v1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 v1, 0x1

    #@10
    :goto_10
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@13
    .line 546
    instance-of v1, p2, Lcom/google/gson/JsonDeserializer;

    #@15
    if-nez v1, :cond_19

    #@17
    if-eqz v0, :cond_22

    #@19
    .line 547
    :cond_19
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    #@1b
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 549
    :cond_22
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    #@24
    if-eqz v0, :cond_31

    #@26
    .line 550
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    #@28
    check-cast p2, Lcom/google/gson/TypeAdapter;

    #@2a
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    #@2d
    move-result-object p1

    #@2e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    :cond_31
    return-object p0
.end method

.method public serializeNulls()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 193
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    #@3
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 576
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    #@3
    return-object p0
.end method

.method public setDateFormat(I)Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    .line 452
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    #@2
    const/4 p1, 0x0

    #@3
    .line 453
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    #@5
    return-object p0
.end method

.method public setDateFormat(II)Lcom/google/gson/GsonBuilder;
    .registers 3

    #@0
    .line 473
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    #@2
    .line 474
    iput p2, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    #@4
    const/4 p1, 0x0

    #@5
    .line 475
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    #@7
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    .line 433
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 7

    #@0
    .line 339
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    :goto_2
    if-ge v1, v0, :cond_12

    #@4
    aget-object v2, p1, v1

    #@6
    .line 340
    iget-object v3, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@8
    const/4 v4, 0x1

    #@9
    invoke-virtual {v3, v2, v4, v4}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_2

    #@12
    :cond_12
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    .line 311
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@2
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    .line 324
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@2
    return-object p0
.end method

.method public setLenient()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 399
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    #@3
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    .line 298
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    #@2
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/google/gson/GsonBuilder;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 386
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    #@3
    return-object p0
.end method

.method public setVersion(D)Lcom/google/gson/GsonBuilder;
    .registers 4

    #@0
    .line 140
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/Excluder;->withVersion(D)Lcom/google/gson/internal/Excluder;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    #@8
    return-object p0
.end method

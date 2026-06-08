.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .registers 6

    #@0
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    invoke-static {}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@9
    .line 58
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    #@b
    .line 59
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@d
    .line 60
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    #@f
    .line 61
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    #@11
    return-void
.end method

.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    #@0
    move-object v11, p0

    #@1
    move-object v8, p1

    #@2
    move-object/from16 v9, p4

    #@4
    .line 108
    invoke-virtual/range {p4 .. p4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    #@b
    move-result v10

    #@c
    .line 110
    const-class v0, Lcom/google/gson/annotations/JsonAdapter;

    #@e
    move-object v5, p2

    #@f
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/gson/annotations/JsonAdapter;

    #@15
    if-eqz v0, :cond_20

    #@17
    .line 113
    iget-object v1, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    #@19
    iget-object v2, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    #@1b
    invoke-virtual {v1, v2, p1, v9, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    #@1e
    move-result-object v0

    #@1f
    goto :goto_21

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    :goto_21
    if-eqz v0, :cond_25

    #@23
    const/4 v1, 0x1

    #@24
    goto :goto_26

    #@25
    :cond_25
    const/4 v1, 0x0

    #@26
    :goto_26
    move v6, v1

    #@27
    if-nez v0, :cond_2d

    #@29
    .line 117
    invoke-virtual {p1, v9}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    #@2c
    move-result-object v0

    #@2d
    :cond_2d
    move-object v7, v0

    #@2e
    .line 120
    new-instance v12, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    #@30
    move-object v0, v12

    #@31
    move-object v1, p0

    #@32
    move-object/from16 v2, p3

    #@34
    move/from16 v3, p5

    #@36
    move/from16 v4, p6

    #@38
    move-object v5, p2

    #@39
    move-object v8, p1

    #@3a
    move-object/from16 v9, p4

    #@3c
    invoke-direct/range {v0 .. v10}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Z)V

    #@3f
    return-object v12
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z
    .registers 4

    #@0
    .line 69
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2, v0, p1}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_12

    #@a
    invoke-virtual {p2, p0, p1}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    #@d
    move-result p0

    #@e
    if-nez p0, :cond_12

    #@10
    const/4 p0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    :goto_13
    return p0
.end method

.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    #@0
    move-object/from16 v7, p0

    #@2
    .line 145
    new-instance v8, Ljava/util/LinkedHashMap;

    #@4
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    #@7
    .line 146
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_e

    #@d
    return-object v8

    #@e
    .line 150
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@11
    move-result-object v9

    #@12
    move-object/from16 v10, p2

    #@14
    move-object/from16 v11, p3

    #@16
    .line 151
    :goto_16
    const-class v0, Ljava/lang/Object;

    #@18
    if-eq v11, v0, :cond_d4

    #@1a
    .line 152
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@1d
    move-result-object v12

    #@1e
    .line 153
    array-length v13, v12

    #@1f
    const/4 v14, 0x0

    #@20
    move v15, v14

    #@21
    :goto_21
    if-ge v15, v13, :cond_be

    #@23
    aget-object v6, v12, v15

    #@25
    const/4 v0, 0x1

    #@26
    .line 154
    invoke-virtual {v7, v6, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    #@29
    move-result v0

    #@2a
    .line 155
    invoke-virtual {v7, v6, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    #@2d
    move-result v16

    #@2e
    if-nez v0, :cond_34

    #@30
    if-nez v16, :cond_34

    #@32
    goto/16 :goto_9b

    #@34
    .line 159
    :cond_34
    iget-object v1, v7, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@36
    invoke-virtual {v1, v6}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    #@39
    .line 160
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    #@40
    move-result-object v2

    #@41
    invoke-static {v1, v11, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@44
    move-result-object v17

    #@45
    .line 161
    invoke-direct {v7, v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    #@48
    move-result-object v5

    #@49
    .line 163
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@4c
    move-result v4

    #@4d
    const/4 v1, 0x0

    #@4e
    move-object v3, v1

    #@4f
    move v2, v14

    #@50
    :goto_50
    if-ge v2, v4, :cond_98

    #@52
    .line 164
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v1

    #@56
    check-cast v1, Ljava/lang/String;

    #@58
    if-eqz v2, :cond_5d

    #@5a
    move/from16 v18, v14

    #@5c
    goto :goto_5f

    #@5d
    :cond_5d
    move/from16 v18, v0

    #@5f
    .line 167
    :goto_5f
    invoke-static/range {v17 .. v17}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@62
    move-result-object v19

    #@63
    move-object/from16 v0, p0

    #@65
    move-object/from16 p2, v1

    #@67
    move-object/from16 v1, p1

    #@69
    move/from16 v20, v2

    #@6b
    move-object v2, v6

    #@6c
    move-object v14, v3

    #@6d
    move-object/from16 v3, p2

    #@6f
    move/from16 v21, v4

    #@71
    move-object/from16 v4, v19

    #@73
    move-object/from16 v19, v5

    #@75
    move/from16 v5, v18

    #@77
    move-object/from16 v22, v6

    #@79
    move/from16 v6, v16

    #@7b
    .line 166
    invoke-direct/range {v0 .. v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    #@7e
    move-result-object v0

    #@7f
    move-object/from16 v1, p2

    #@81
    .line 168
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    check-cast v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    #@87
    if-nez v14, :cond_8b

    #@89
    move-object v3, v0

    #@8a
    goto :goto_8c

    #@8b
    :cond_8b
    move-object v3, v14

    #@8c
    :goto_8c
    add-int/lit8 v2, v20, 0x1

    #@8e
    move/from16 v0, v18

    #@90
    move-object/from16 v5, v19

    #@92
    move/from16 v4, v21

    #@94
    move-object/from16 v6, v22

    #@96
    const/4 v14, 0x0

    #@97
    goto :goto_50

    #@98
    :cond_98
    move-object v14, v3

    #@99
    if-nez v14, :cond_9f

    #@9b
    :goto_9b
    add-int/lit8 v15, v15, 0x1

    #@9d
    const/4 v14, 0x0

    #@9e
    goto :goto_21

    #@9f
    .line 172
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a1
    new-instance v1, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    const-string v2, " declares multiple JSON fields named "

    #@ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    iget-object v2, v14, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v0

    #@be
    .line 176
    :cond_be
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@c5
    move-result-object v1

    #@c6
    invoke-static {v0, v11, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@c9
    move-result-object v0

    #@ca
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@cd
    move-result-object v10

    #@ce
    .line 177
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@d1
    move-result-object v11

    #@d2
    goto/16 :goto_16

    #@d4
    :cond_d4
    return-object v8
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 74
    const-class v0, Lcom/google/gson/annotations/SerializedName;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    #@8
    if-nez v0, :cond_15

    #@a
    .line 76
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    #@c
    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    .line 77
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@13
    move-result-object p1

    #@14
    return-object p1

    #@15
    .line 80
    :cond_15
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    .line 81
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 82
    array-length v1, v0

    #@1e
    if-nez v1, :cond_25

    #@20
    .line 83
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@23
    move-result-object p1

    #@24
    return-object p1

    #@25
    .line 86
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    #@27
    array-length v2, v0

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@2d
    .line 87
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    .line 88
    array-length p1, v0

    #@31
    const/4 v2, 0x0

    #@32
    :goto_32
    if-ge v2, p1, :cond_3c

    #@34
    aget-object v3, v0, v2

    #@36
    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_32

    #@3c
    :cond_3c
    return-object v1
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 95
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 97
    const-class v1, Ljava/lang/Object;

    #@6
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_e

    #@c
    const/4 p1, 0x0

    #@d
    return-object p1

    #@e
    .line 101
    :cond_e
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    #@10
    invoke-virtual {v1, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    #@13
    move-result-object v1

    #@14
    .line 102
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    #@16
    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    #@19
    move-result-object p1

    #@1a
    invoke-direct {v2, v1, p1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    #@1d
    return-object v2
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    #@0
    .line 65
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    #@2
    invoke-static {p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

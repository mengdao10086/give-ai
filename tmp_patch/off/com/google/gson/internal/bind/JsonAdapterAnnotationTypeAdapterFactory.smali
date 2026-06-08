.class public final Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .registers 2

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    #@5
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 5
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
    .line 44
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 45
    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/gson/annotations/JsonAdapter;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 p1, 0x0

    #@f
    return-object p1

    #@10
    .line 49
    :cond_10
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    #@12
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    #@15
    move-result-object p1

    #@16
    return-object p1
.end method

.method getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ConstructorConstructor;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    #@0
    .line 55
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1, v0}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    .line 58
    instance-of v0, p1, Lcom/google/gson/TypeAdapter;

    #@12
    if-eqz v0, :cond_17

    #@14
    .line 59
    check-cast p1, Lcom/google/gson/TypeAdapter;

    #@16
    goto :goto_76

    #@17
    .line 60
    :cond_17
    instance-of v0, p1, Lcom/google/gson/TypeAdapterFactory;

    #@19
    if-eqz v0, :cond_22

    #@1b
    .line 61
    check-cast p1, Lcom/google/gson/TypeAdapterFactory;

    #@1d
    invoke-interface {p1, p2, p3}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    #@20
    move-result-object p1

    #@21
    goto :goto_76

    #@22
    .line 62
    :cond_22
    instance-of v0, p1, Lcom/google/gson/JsonSerializer;

    #@24
    if-nez v0, :cond_5c

    #@26
    instance-of v1, p1, Lcom/google/gson/JsonDeserializer;

    #@28
    if-eqz v1, :cond_2b

    #@2a
    goto :goto_5c

    #@2b
    .line 71
    :cond_2b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance p4, Ljava/lang/StringBuilder;

    #@2f
    const-string v0, "Invalid attempt to bind an instance of "

    #@31
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object p1

    #@40
    const-string p4, " as a @JsonAdapter for "

    #@42
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    #@49
    move-result-object p3

    #@4a
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p1

    #@4e
    const-string p3, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    #@50
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object p1

    #@54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object p1

    #@58
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw p2

    #@5c
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    #@5d
    if-eqz v0, :cond_64

    #@5f
    .line 63
    move-object v0, p1

    #@60
    check-cast v0, Lcom/google/gson/JsonSerializer;

    #@62
    move-object v3, v0

    #@63
    goto :goto_65

    #@64
    :cond_64
    move-object v3, v1

    #@65
    .line 66
    :goto_65
    instance-of v0, p1, Lcom/google/gson/JsonDeserializer;

    #@67
    if-eqz v0, :cond_6c

    #@69
    move-object v1, p1

    #@6a
    check-cast v1, Lcom/google/gson/JsonDeserializer;

    #@6c
    :cond_6c
    move-object v4, v1

    #@6d
    .line 69
    new-instance p1, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    #@6f
    const/4 v7, 0x0

    #@70
    move-object v2, p1

    #@71
    move-object v5, p2

    #@72
    move-object v6, p3

    #@73
    invoke-direct/range {v2 .. v7}, Lcom/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V

    #@76
    :goto_76
    if-eqz p1, :cond_82

    #@78
    .line 77
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->nullSafe()Z

    #@7b
    move-result p2

    #@7c
    if-eqz p2, :cond_82

    #@7e
    .line 78
    invoke-virtual {p1}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    #@81
    move-result-object p1

    #@82
    :cond_82
    return-object p1
.end method

.class public final Lcom/google/gson/internal/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# static fields
.field private static final PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 45
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@7
    .line 46
    new-instance v2, Ljava/util/HashMap;

    #@9
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    #@c
    .line 48
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@e
    const-class v3, Ljava/lang/Boolean;

    #@10
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@13
    .line 49
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@15
    const-class v3, Ljava/lang/Byte;

    #@17
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@1a
    .line 50
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@1c
    const-class v3, Ljava/lang/Character;

    #@1e
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@21
    .line 51
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@23
    const-class v3, Ljava/lang/Double;

    #@25
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@28
    .line 52
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2a
    const-class v3, Ljava/lang/Float;

    #@2c
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@2f
    .line 53
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@31
    const-class v3, Ljava/lang/Integer;

    #@33
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@36
    .line 54
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@38
    const-class v3, Ljava/lang/Long;

    #@3a
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@3d
    .line 55
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@3f
    const-class v3, Ljava/lang/Short;

    #@41
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@44
    .line 56
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@46
    const-class v3, Ljava/lang/Void;

    #@48
    invoke-static {v0, v2, v1, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@4b
    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@4e
    move-result-object v0

    #@4f
    sput-object v0, Lcom/google/gson/internal/Primitives;->PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;

    #@51
    .line 59
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/google/gson/internal/Primitives;->WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;

    #@57
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@8
    throw v0
.end method

.method private static add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 64
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 65
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    return-void
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .registers 2

    #@0
    .line 72
    sget-object v0, Lcom/google/gson/internal/Primitives;->PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isWrapperType(Ljava/lang/reflect/Type;)Z
    .registers 2

    #@0
    .line 82
    sget-object v0, Lcom/google/gson/internal/Primitives;->WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;

    #@2
    .line 83
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    .line 82
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static unwrap(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 115
    sget-object v0, Lcom/google/gson/internal/Primitives;->WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;

    #@2
    .line 116
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 115
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Class;

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_10

    #@f
    :cond_f
    move-object p0, v0

    #@10
    :goto_10
    return-object p0
.end method

.method public static wrap(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 98
    sget-object v0, Lcom/google/gson/internal/Primitives;->PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;

    #@2
    .line 99
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 98
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Class;

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_10

    #@f
    :cond_f
    move-object p0, v0

    #@10
    :goto_10
    return-object p0
.end method

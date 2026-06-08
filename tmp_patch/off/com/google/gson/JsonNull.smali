.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field public static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 32
    new-instance v0, Lcom/google/gson/JsonNull;

    #@2
    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 39
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    #@0
    .line 26
    invoke-virtual {p0}, Lcom/google/gson/JsonNull;->deepCopy()Lcom/google/gson/JsonNull;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public deepCopy()Lcom/google/gson/JsonNull;
    .registers 2

    #@0
    .line 49
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    #@2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    #@0
    if-eq p0, p1, :cond_9

    #@2
    .line 65
    instance-of p1, p1, Lcom/google/gson/JsonNull;

    #@4
    if-eqz p1, :cond_7

    #@6
    goto :goto_9

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    goto :goto_a

    #@9
    :cond_9
    :goto_9
    const/4 p1, 0x1

    #@a
    :goto_a
    return p1
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 57
    const-class v0, Lcom/google/gson/JsonNull;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

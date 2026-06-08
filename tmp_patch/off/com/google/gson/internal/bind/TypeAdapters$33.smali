.class final Lcom/google/gson/internal/bind/TypeAdapters$33;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$boxed:Ljava/lang/Class;

.field final synthetic val$typeAdapter:Lcom/google/gson/TypeAdapter;

.field final synthetic val$unboxed:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V
    .registers 4

    #@0
    .line 847
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$unboxed:Ljava/lang/Class;

    #@2
    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$boxed:Ljava/lang/Class;

    #@4
    iput-object p3, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 3
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
    .line 850
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@3
    move-result-object p1

    #@4
    .line 851
    iget-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$unboxed:Ljava/lang/Class;

    #@6
    if-eq p1, p2, :cond_f

    #@8
    iget-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$boxed:Ljava/lang/Class;

    #@a
    if-ne p1, p2, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_11

    #@f
    :cond_f
    :goto_f
    iget-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    #@11
    :goto_11
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "Factory[type="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$boxed:Ljava/lang/Class;

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "+"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$unboxed:Ljava/lang/Class;

    #@19
    .line 855
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string v1, ",adapter="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$33;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.class Lcom/google/gson/internal/ConstructorConstructor$14;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/ConstructorConstructor;

.field private final unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

.field final synthetic val$rawType:Ljava/lang/Class;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 4

    #@0
    .line 220
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->this$0:Lcom/google/gson/internal/ConstructorConstructor;

    #@2
    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    #@4
    iput-object p3, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 221
    invoke-static {}, Lcom/google/gson/internal/UnsafeAllocator;->create()Lcom/google/gson/internal/UnsafeAllocator;

    #@c
    move-result-object p1

    #@d
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

    #@f
    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

    #@2
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return-object v0

    #@9
    :catch_9
    move-exception v0

    #@a
    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    const-string v3, "Unable to invoke no-args constructor for "

    #@10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    iget-object v3, p0, Lcom/google/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v1
.end method

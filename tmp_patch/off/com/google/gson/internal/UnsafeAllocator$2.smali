.class final Lcom/google/gson/internal/UnsafeAllocator$2;
.super Lcom/google/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/UnsafeAllocator;->create()Lcom/google/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$constructorId:I

.field final synthetic val$newInstance:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .registers 3

    #@0
    .line 69
    iput-object p1, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;

    #@2
    iput p2, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$constructorId:I

    #@4
    invoke-direct {p0}, Lcom/google/gson/internal/UnsafeAllocator;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 73
    invoke-static {p1}, Lcom/google/gson/internal/UnsafeAllocator$2;->assertInstantiable(Ljava/lang/Class;)V

    #@3
    .line 74
    iget-object v0, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;

    #@5
    const/4 v1, 0x2

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    const/4 v2, 0x0

    #@9
    aput-object p1, v1, v2

    #@b
    iget p1, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$constructorId:I

    #@d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object p1

    #@11
    const/4 v2, 0x1

    #@12
    aput-object p1, v1, v2

    #@14
    const/4 p1, 0x0

    #@15
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object p1

    #@19
    return-object p1
.end method

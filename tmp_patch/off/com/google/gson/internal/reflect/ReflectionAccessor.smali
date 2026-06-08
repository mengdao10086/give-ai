.class public abstract Lcom/google/gson/internal/reflect/ReflectionAccessor;
.super Ljava/lang/Object;
.source "ReflectionAccessor.java"


# static fields
.field private static final instance:Lcom/google/gson/internal/reflect/ReflectionAccessor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 36
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->getMajorJavaVersion()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x9

    #@6
    if-ge v0, v1, :cond_e

    #@8
    new-instance v0, Lcom/google/gson/internal/reflect/PreJava9ReflectionAccessor;

    #@a
    invoke-direct {v0}, Lcom/google/gson/internal/reflect/PreJava9ReflectionAccessor;-><init>()V

    #@d
    goto :goto_13

    #@e
    :cond_e
    new-instance v0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;

    #@10
    invoke-direct {v0}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;-><init>()V

    #@13
    :goto_13
    sput-object v0, Lcom/google/gson/internal/reflect/ReflectionAccessor;->instance:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lcom/google/gson/internal/reflect/ReflectionAccessor;
    .registers 1

    #@0
    .line 52
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionAccessor;->instance:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@2
    return-object v0
.end method


# virtual methods
.method public abstract makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
.end method

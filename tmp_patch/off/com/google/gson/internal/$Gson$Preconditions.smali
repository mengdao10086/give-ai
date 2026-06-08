.class public final Lcom/google/gson/internal/$Gson$Preconditions;
.super Ljava/lang/Object;
.source "$Gson$Preconditions.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@8
    throw v0
.end method

.method public static checkArgument(Z)V
    .registers 1

    #@0
    if-eqz p0, :cond_3

    #@2
    return-void

    #@3
    .line 46
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    return-object p0
.end method

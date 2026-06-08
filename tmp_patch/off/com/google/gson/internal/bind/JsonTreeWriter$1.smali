.class final Lcom/google/gson/internal/bind/JsonTreeWriter$1;
.super Ljava/io/Writer;
.source "JsonTreeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/JsonTreeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 42
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@5
    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 39
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@5
    throw v0
.end method

.method public write([CII)V
    .registers 4

    #@0
    .line 36
    new-instance p1, Ljava/lang/AssertionError;

    #@2
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    #@5
    throw p1
.end method

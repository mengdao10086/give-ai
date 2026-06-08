.class final Lcom/google/gson/internal/bind/JsonTreeReader$1;
.super Ljava/io/Reader;
.source "JsonTreeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/JsonTreeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

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
    .line 43
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@5
    throw v0
.end method

.method public read([CII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 40
    new-instance p1, Ljava/lang/AssertionError;

    #@2
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    #@5
    throw p1
.end method

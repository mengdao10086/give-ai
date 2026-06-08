.class final Landroidx/fragment/app/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 30
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x80

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    iput-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@c
    .line 31
    iput-object p1, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/String;

    #@e
    return-void
.end method

.method private flushBuilder()V
    .registers 4

    #@0
    .line 55
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_1d

    #@8
    .line 56
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/String;

    #@a
    iget-object v1, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 57
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@1d
    :cond_1d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    #@0
    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    #@3
    return-void
.end method

.method public flush()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    #@3
    return-void
.end method

.method public write([CII)V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    if-ge v0, p3, :cond_17

    #@3
    add-int v1, p2, v0

    #@5
    .line 44
    aget-char v1, p1, v1

    #@7
    const/16 v2, 0xa

    #@9
    if-ne v1, v2, :cond_f

    #@b
    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    #@e
    goto :goto_14

    #@f
    .line 49
    :cond_f
    iget-object v2, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    :goto_14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    :cond_17
    return-void
.end method

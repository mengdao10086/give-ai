.class public Lcom/blankj/utilcode/util/ThrowableUtils;
.super Ljava/lang/Object;
.source "ThrowableUtils.java"


# static fields
.field private static final LINE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "line.separator"

    #@2
    .line 19
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/ThrowableUtils;->LINE_SEP:Ljava/lang/String;

    #@8
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8

    #@0
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    :goto_5
    if-eqz p0, :cond_15

    #@7
    .line 27
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_15

    #@d
    .line 28
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@13
    move-result-object p0

    #@14
    goto :goto_5

    #@15
    .line 31
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@18
    move-result p0

    #@19
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1e
    add-int/lit8 v2, p0, -0x1

    #@20
    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/lang/Throwable;

    #@26
    invoke-static {v3}, Lcom/blankj/utilcode/util/ThrowableUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    #@29
    move-result-object v3

    #@2a
    :goto_2a
    add-int/lit8 p0, p0, -0x1

    #@2c
    if-ltz p0, :cond_72

    #@2e
    if-eqz p0, :cond_40

    #@30
    add-int/lit8 v4, p0, -0x1

    #@32
    .line 37
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Ljava/lang/Throwable;

    #@38
    invoke-static {v4}, Lcom/blankj/utilcode/util/ThrowableUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    #@3b
    move-result-object v4

    #@3c
    .line 38
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/ThrowableUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    #@3f
    goto :goto_41

    #@40
    :cond_40
    move-object v4, v3

    #@41
    :goto_41
    if-ne p0, v2, :cond_51

    #@43
    .line 41
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    check-cast v5, Ljava/lang/Throwable;

    #@49
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_6d

    #@51
    .line 43
    :cond_51
    new-instance v5, Ljava/lang/StringBuilder;

    #@53
    const-string v6, " Caused by: "

    #@55
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@58
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v6

    #@5c
    check-cast v6, Ljava/lang/Throwable;

    #@5e
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6d
    .line 45
    :goto_6d
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@70
    move-object v3, v4

    #@71
    goto :goto_2a

    #@72
    .line 47
    :cond_72
    new-instance p0, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7a
    move-result-object v0

    #@7b
    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_91

    #@81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@84
    move-result-object v1

    #@85
    check-cast v1, Ljava/lang/String;

    #@87
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    sget-object v2, Lcom/blankj/utilcode/util/ThrowableUtils;->LINE_SEP:Ljava/lang/String;

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    goto :goto_7b

    #@91
    .line 51
    :cond_91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object p0

    #@95
    return-object p0
.end method

.method private static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 55
    new-instance v0, Ljava/io/StringWriter;

    #@2
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 56
    new-instance v1, Ljava/io/PrintWriter;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@b
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@e
    .line 58
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    .line 59
    new-instance v0, Ljava/util/StringTokenizer;

    #@14
    sget-object v1, Lcom/blankj/utilcode/util/ThrowableUtils;->LINE_SEP:Ljava/lang/String;

    #@16
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 60
    new-instance p0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    const/4 v1, 0x0

    #@1f
    move v3, v1

    #@20
    .line 62
    :cond_20
    :goto_20
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_48

    #@26
    .line 63
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    const-string v5, "at"

    #@2c
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2f
    move-result v5

    #@30
    const/4 v6, -0x1

    #@31
    if-eq v5, v6, :cond_46

    #@33
    .line 66
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_46

    #@41
    .line 68
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    move v3, v2

    #@45
    goto :goto_20

    #@46
    :cond_46
    if-eqz v3, :cond_20

    #@48
    :cond_48
    return-object p0
.end method

.method private static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 77
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    :goto_c
    if-ltz v0, :cond_2a

    #@e
    if-ltz v1, :cond_2a

    #@10
    .line 82
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 83
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/lang/String;

    #@1c
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_25

    #@22
    .line 85
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@25
    :cond_25
    add-int/lit8 v0, v0, -0x1

    #@27
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_c

    #@2a
    :cond_2a
    return-void
.end method

.class public final Lio/reactivex/exceptions/CompositeException;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain;,
        Lio/reactivex/exceptions/CompositeException$WrappedPrintWriter;,
        Lio/reactivex/exceptions/CompositeException$WrappedPrintStream;,
        Lio/reactivex/exceptions/CompositeException$PrintStreamOrWriter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29ffcc6947b49592L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 64
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    if-eqz p1, :cond_3e

    #@f
    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p1

    #@13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_48

    #@19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/Throwable;

    #@1f
    .line 69
    instance-of v3, v2, Lio/reactivex/exceptions/CompositeException;

    #@21
    if-eqz v3, :cond_2d

    #@23
    .line 70
    check-cast v2, Lio/reactivex/exceptions/CompositeException;

    #@25
    invoke-virtual {v2}, Lio/reactivex/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2c
    goto :goto_13

    #@2d
    :cond_2d
    if-eqz v2, :cond_33

    #@2f
    .line 73
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_13

    #@33
    .line 75
    :cond_33
    new-instance v2, Ljava/lang/NullPointerException;

    #@35
    const-string v3, "Throwable was null!"

    #@37
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_13

    #@3e
    .line 79
    :cond_3e
    new-instance p1, Ljava/lang/NullPointerException;

    #@40
    const-string v2, "errors was null"

    #@42
    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@45
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@48
    .line 81
    :cond_48
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@4b
    move-result p1

    #@4c
    if-nez p1, :cond_71

    #@4e
    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@51
    .line 85
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@54
    move-result-object p1

    #@55
    iput-object p1, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    #@57
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5f
    move-result p1

    #@60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object p1

    #@64
    const-string v0, " exceptions occurred. "

    #@66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object p1

    #@6a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object p1

    #@6e
    iput-object p1, p0, Lio/reactivex/exceptions/CompositeException;->message:Ljava/lang/String;

    #@70
    return-void

    #@71
    .line 82
    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@73
    const-string v0, "errors is empty"

    #@75
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw p1
.end method

.method public varargs constructor <init>([Ljava/lang/Throwable;)V
    .registers 3

    #@0
    if-nez p1, :cond_e

    #@2
    .line 53
    new-instance p1, Ljava/lang/NullPointerException;

    #@4
    const-string v0, "exceptions was null"

    #@6
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    .line 54
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@c
    move-result-object p1

    #@d
    goto :goto_12

    #@e
    :cond_e
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object p1

    #@12
    .line 53
    :goto_12
    invoke-direct {p0, p1}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    #@15
    return-void
.end method

.method private appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9

    #@0
    .line 195
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object p3

    #@4
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7
    move-result-object p3

    #@8
    const/16 v0, 0xa

    #@a
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 196
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@10
    move-result-object p3

    #@11
    array-length v1, p3

    #@12
    const/4 v2, 0x0

    #@13
    :goto_13
    if-ge v2, v1, :cond_27

    #@15
    aget-object v3, p3, v2

    #@17
    const-string v4, "\t\tat "

    #@19
    .line 197
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_13

    #@27
    .line 199
    :cond_27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@2a
    move-result-object p3

    #@2b
    if-eqz p3, :cond_3b

    #@2d
    const-string p3, "\tCaused by: "

    #@2f
    .line 200
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 201
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@35
    move-result-object p2

    #@36
    const-string p3, ""

    #@38
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    #@3b
    :cond_3b
    return-void
.end method

.method private getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    #@0
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 251
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_1c

    #@b
    if-ne v1, p1, :cond_e

    #@d
    goto :goto_1c

    #@e
    .line 256
    :cond_e
    :goto_e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 257
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@14
    move-result-object p1

    #@15
    if-eqz p1, :cond_1c

    #@17
    if-ne p1, v1, :cond_1a

    #@19
    goto :goto_1c

    #@1a
    :cond_1a
    move-object v1, p1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method private printStackTrace(Lio/reactivex/exceptions/CompositeException$PrintStreamOrWriter;)V
    .registers 9

    #@0
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const/16 v2, 0xa

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 182
    invoke-virtual {p0}, Lio/reactivex/exceptions/CompositeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@13
    move-result-object v1

    #@14
    array-length v3, v1

    #@15
    const/4 v4, 0x0

    #@16
    :goto_16
    if-ge v4, v3, :cond_2a

    #@18
    aget-object v5, v1, v4

    #@1a
    const-string v6, "\tat "

    #@1c
    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_16

    #@2a
    .line 186
    :cond_2a
    iget-object v1, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    #@2c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v1

    #@30
    const/4 v2, 0x1

    #@31
    move v3, v2

    #@32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_54

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljava/lang/Throwable;

    #@3e
    const-string v5, "  ComposedException "

    #@40
    .line 187
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    const-string v6, " :\n"

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    const-string v5, "\t"

    #@4f
    .line 188
    invoke-direct {p0, v0, v4, v5}, Lio/reactivex/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    #@52
    add-int/2addr v3, v2

    #@53
    goto :goto_32

    #@54
    .line 191
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {p1, v0}, Lio/reactivex/exceptions/CompositeException$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    #@5b
    return-void
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 9

    #@0
    monitor-enter p0

    #@1
    .line 108
    :try_start_1
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    #@3
    if-nez v0, :cond_5c

    #@5
    .line 110
    new-instance v0, Lio/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain;

    #@7
    invoke-direct {v0}, Lio/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain;-><init>()V

    #@a
    .line 111
    new-instance v1, Ljava/util/HashSet;

    #@c
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@f
    .line 114
    iget-object v2, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    #@11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    move-object v3, v0

    #@16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_5a

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Ljava/lang/Throwable;

    #@22
    .line 115
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_29

    #@28
    goto :goto_16

    #@29
    .line 119
    :cond_29
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    .line 121
    invoke-direct {p0, v4}, Lio/reactivex/exceptions/CompositeException;->getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;

    #@2f
    move-result-object v5

    #@30
    .line 123
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v5

    #@34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_52

    #@3a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v6

    #@3e
    check-cast v6, Ljava/lang/Throwable;

    #@40
    .line 124
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_4e

    #@46
    .line 126
    new-instance v4, Ljava/lang/RuntimeException;

    #@48
    const-string v6, "Duplicate found in causal chain so cropping to prevent loop ..."

    #@4a
    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4d
    goto :goto_34

    #@4e
    .line 129
    :cond_4e
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_60

    #@51
    goto :goto_34

    #@52
    .line 134
    :cond_52
    :try_start_52
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_55

    #@55
    .line 140
    :catchall_55
    :try_start_55
    invoke-virtual {p0, v3}, Lio/reactivex/exceptions/CompositeException;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@58
    move-result-object v3

    #@59
    goto :goto_16

    #@5a
    .line 142
    :cond_5a
    iput-object v0, p0, Lio/reactivex/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    #@5c
    .line 144
    :cond_5c
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->cause:Ljava/lang/Throwable;
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_60

    #@5e
    monitor-exit p0

    #@5f
    return-object v0

    #@60
    :catchall_60
    move-exception v0

    #@61
    monitor-exit p0

    #@62
    throw v0
.end method

.method public getExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    #@0
    .line 96
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    #@0
    .line 102
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->message:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    #@0
    .line 282
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_15

    #@6
    if-ne p1, v0, :cond_9

    #@8
    goto :goto_15

    #@9
    .line 287
    :cond_9
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@c
    move-result-object p1

    #@d
    if-eqz p1, :cond_14

    #@f
    if-ne p1, v0, :cond_12

    #@11
    goto :goto_14

    #@12
    :cond_12
    move-object v0, p1

    #@13
    goto :goto_9

    #@14
    :cond_14
    :goto_14
    return-object v0

    #@15
    :cond_15
    :goto_15
    return-object p1
.end method

.method public printStackTrace()V
    .registers 2

    #@0
    .line 159
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Lio/reactivex/exceptions/CompositeException;->printStackTrace(Ljava/io/PrintStream;)V

    #@5
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    #@0
    .line 164
    new-instance v0, Lio/reactivex/exceptions/CompositeException$WrappedPrintStream;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/exceptions/CompositeException$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    #@5
    invoke-direct {p0, v0}, Lio/reactivex/exceptions/CompositeException;->printStackTrace(Lio/reactivex/exceptions/CompositeException$PrintStreamOrWriter;)V

    #@8
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    #@0
    .line 169
    new-instance v0, Lio/reactivex/exceptions/CompositeException$WrappedPrintWriter;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/exceptions/CompositeException$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    #@5
    invoke-direct {p0, v0}, Lio/reactivex/exceptions/CompositeException;->printStackTrace(Lio/reactivex/exceptions/CompositeException$PrintStreamOrWriter;)V

    #@8
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 272
    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException;->exceptions:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

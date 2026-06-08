.class public final Lio/reactivex/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final COMPLETE:Lio/reactivex/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Notification<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 160
    new-instance v0, Lio/reactivex/Notification;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lio/reactivex/Notification;-><init>(Ljava/lang/Object;)V

    #@6
    sput-object v0, Lio/reactivex/Notification;->COMPLETE:Lio/reactivex/Notification;

    #@8
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@5
    return-void
.end method

.method public static createOnComplete()Lio/reactivex/Notification;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Notification<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 156
    sget-object v0, Lio/reactivex/Notification;->COMPLETE:Lio/reactivex/Notification;

    #@2
    return-object v0
.end method

.method public static createOnError(Ljava/lang/Throwable;)Lio/reactivex/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/Notification<",
            "TT;>;"
        }
    .end annotation

    #@0
    const-string v0, "error is null"

    #@2
    .line 143
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 144
    new-instance v0, Lio/reactivex/Notification;

    #@7
    invoke-static {p0}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    invoke-direct {v0, p0}, Lio/reactivex/Notification;-><init>(Ljava/lang/Object;)V

    #@e
    return-object v0
.end method

.method public static createOnNext(Ljava/lang/Object;)Lio/reactivex/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/Notification<",
            "TT;>;"
        }
    .end annotation

    #@0
    const-string v0, "value is null"

    #@2
    .line 130
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 131
    new-instance v0, Lio/reactivex/Notification;

    #@7
    invoke-direct {v0, p0}, Lio/reactivex/Notification;-><init>(Ljava/lang/Object;)V

    #@a
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 96
    instance-of v0, p1, Lio/reactivex/Notification;

    #@2
    if-eqz v0, :cond_f

    #@4
    .line 97
    check-cast p1, Lio/reactivex/Notification;

    #@6
    .line 98
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@8
    iget-object p1, p1, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@a
    invoke-static {v0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return p1
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 3

    #@0
    .line 87
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@2
    .line 88
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 89
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 72
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 73
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_d

    #@a
    .line 74
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@c
    return-object v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 105
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public isOnComplete()Z
    .registers 2

    #@0
    .line 39
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public isOnError()Z
    .registers 2

    #@0
    .line 49
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOnNext()Z
    .registers 2

    #@0
    .line 59
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 60
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 111
    iget-object v0, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_7

    #@4
    const-string v0, "OnCompleteNotification"

    #@6
    return-object v0

    #@7
    .line 115
    :cond_7
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    const-string v2, "]"

    #@d
    if-eqz v1, :cond_27

    #@f
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    const-string v3, "OnErrorNotification["

    #@13
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 118
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    const-string v1, "OnNextNotification["

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    iget-object v1, p0, Lio/reactivex/Notification;->value:Ljava/lang/Object;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method

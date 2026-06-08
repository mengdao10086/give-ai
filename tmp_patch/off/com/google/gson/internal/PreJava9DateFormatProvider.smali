.class public Lcom/google/gson/internal/PreJava9DateFormatProvider;
.super Ljava/lang/Object;
.source "PreJava9DateFormatProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getDateFormatPattern(I)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p0, :cond_29

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_26

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_23

    #@8
    const/4 v0, 0x3

    #@9
    if-ne p0, v0, :cond_e

    #@b
    const-string p0, "M/d/yy"

    #@d
    return-object p0

    #@e
    .line 54
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    const-string v2, "Unknown DateFormat style: "

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    const-string p0, "MMM d, y"

    #@25
    return-object p0

    #@26
    :cond_26
    const-string p0, "MMMM d, y"

    #@28
    return-object p0

    #@29
    :cond_29
    const-string p0, "EEEE, MMMM d, y"

    #@2b
    return-object p0
.end method

.method private static getDatePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p0, :cond_29

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_26

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_23

    #@8
    const/4 v0, 0x3

    #@9
    if-ne p0, v0, :cond_e

    #@b
    const-string p0, "M/d/yy"

    #@d
    return-object p0

    #@e
    .line 69
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    const-string v2, "Unknown DateFormat style: "

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    const-string p0, "MMM d, yyyy"

    #@25
    return-object p0

    #@26
    :cond_26
    const-string p0, "MMMM d, yyyy"

    #@28
    return-object p0

    #@29
    :cond_29
    const-string p0, "EEEE, MMMM d, yyyy"

    #@2b
    return-object p0
.end method

.method private static getTimePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p0, :cond_26

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_26

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_23

    #@8
    const/4 v0, 0x3

    #@9
    if-ne p0, v0, :cond_e

    #@b
    const-string p0, "h:mm a"

    #@d
    return-object p0

    #@e
    .line 83
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    const-string v2, "Unknown DateFormat style: "

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    const-string p0, "h:mm:ss a"

    #@25
    return-object p0

    #@26
    :cond_26
    const-string p0, "h:mm:ss a z"

    #@28
    return-object p0
.end method

.method public static getUSDateFormat(I)Ljava/text/DateFormat;
    .registers 3

    #@0
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDateFormatPattern(I)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@8
    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@b
    return-object v0
.end method

.method public static getUSDateTimeFormat(II)Ljava/text/DateFormat;
    .registers 3

    #@0
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDatePartOfDateTimePattern(I)Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object p0

    #@d
    const-string v0, " "

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object p0

    #@13
    invoke-static {p1}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getTimePartOfDateTimePattern(I)Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    .line 40
    new-instance p1, Ljava/text/SimpleDateFormat;

    #@21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@23
    invoke-direct {p1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@26
    return-object p1
.end method

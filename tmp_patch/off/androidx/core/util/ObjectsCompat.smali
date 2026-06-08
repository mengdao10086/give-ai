.class public Landroidx/core/util/ObjectsCompat;
.super Ljava/lang/Object;
.source "ObjectsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/ObjectsCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 55
    invoke-static {p0, p1}, Landroidx/core/util/ObjectsCompat$Api19Impl;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .registers 1

    #@0
    .line 97
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat$Api19Impl;->hash([Ljava/lang/Object;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 1

    #@0
    if-eqz p0, :cond_7

    #@2
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result p0

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    :goto_8
    return p0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    return-object p0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_3

    #@2
    return-object p0

    #@3
    .line 159
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@8
    throw p0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_6

    #@2
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    :cond_6
    return-object p1
.end method

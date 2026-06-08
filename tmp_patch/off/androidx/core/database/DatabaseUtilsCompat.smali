.class public final Landroidx/core/database/DatabaseUtilsCompat;
.super Ljava/lang/Object;
.source "DatabaseUtilsCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-eqz p0, :cond_16

    #@2
    .line 60
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_16

    #@6
    .line 63
    :cond_6
    array-length v0, p0

    #@7
    array-length v1, p1

    #@8
    add-int/2addr v0, v1

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    .line 64
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 65
    array-length p0, p0

    #@11
    array-length v1, p1

    #@12
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    return-object v0

    #@16
    :cond_16
    :goto_16
    return-object p1
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object p1

    #@7
    .line 44
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_e

    #@d
    return-object p0

    #@e
    .line 48
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    const-string v1, "("

    #@12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p0

    #@19
    const-string v0, ") AND ("

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p0

    #@1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p0

    #@23
    const-string p1, ")"

    #@25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object p0

    #@29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object p0

    #@2d
    return-object p0
.end method

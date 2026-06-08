.class public Landroidx/core/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 4

    #@0
    if-nez p0, :cond_8

    #@2
    const-string p0, "null"

    #@4
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    goto :goto_41

    #@8
    .line 35
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_18

    #@12
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    if-gtz v1, :cond_2e

    #@18
    .line 37
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    const/16 v1, 0x2e

    #@22
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@25
    move-result v1

    #@26
    if-lez v1, :cond_2e

    #@28
    add-int/lit8 v1, v1, 0x1

    #@2a
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 43
    :cond_2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    const/16 v0, 0x7b

    #@33
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 45
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@39
    move-result p0

    #@3a
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object p0

    #@3e
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    :goto_41
    return-void
.end method

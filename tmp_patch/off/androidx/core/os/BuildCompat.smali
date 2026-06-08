.class public Landroidx/core/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isAtLeastN()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static isAtLeastNMR1()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static isAtLeastO()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static isAtLeastOMR1()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public static isAtLeastP()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method protected static isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    #@0
    const-string v0, "REL"

    #@2
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_a

    #@9
    return v1

    #@a
    .line 60
    :cond_a
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    .line 61
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@19
    move-result p0

    #@1a
    if-ltz p0, :cond_1d

    #@1c
    const/4 v1, 0x1

    #@1d
    :cond_1d
    return v1
.end method

.method public static isAtLeastQ()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public static isAtLeastR()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public static isAtLeastS()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-ge v0, v1, :cond_19

    #@6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v1, 0x1e

    #@a
    if-lt v0, v1, :cond_17

    #@c
    const-string v0, "S"

    #@e
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@10
    .line 177
    invoke-static {v0, v1}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_17

    #@16
    goto :goto_19

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    :goto_19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    return v0
.end method

.method public static isAtLeastSv2()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x20

    #@4
    if-ge v0, v1, :cond_19

    #@6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v1, 0x1f

    #@a
    if-lt v0, v1, :cond_17

    #@c
    const-string v0, "Sv2"

    #@e
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@10
    .line 194
    invoke-static {v0, v1}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_17

    #@16
    goto :goto_19

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    :goto_19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    return v0
.end method

.method public static isAtLeastT()Z
    .registers 2

    #@0
    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x21

    #@4
    if-ge v0, v1, :cond_19

    #@6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v1, 0x20

    #@a
    if-lt v0, v1, :cond_17

    #@c
    const-string v0, "Tiramisu"

    #@e
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@10
    .line 211
    invoke-static {v0, v1}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_17

    #@16
    goto :goto_19

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    :goto_19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    return v0
.end method

.method public static isAtLeastU()Z
    .registers 2

    #@0
    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x21

    #@4
    if-lt v0, v1, :cond_12

    #@6
    const-string v0, "UpsideDownCake"

    #@8
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@a
    .line 227
    invoke-static {v0, v1}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

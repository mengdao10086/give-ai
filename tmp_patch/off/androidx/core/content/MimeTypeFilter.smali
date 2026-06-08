.class public final Landroidx/core/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    const-string v1, "/"

    #@6
    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    .line 98
    array-length v2, p1

    #@b
    const/4 v3, 0x0

    #@c
    :goto_c
    if-ge v3, v2, :cond_1e

    #@e
    aget-object v4, p1, v3

    #@10
    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 100
    invoke-static {p0, v5}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1b

    #@1a
    return-object v4

    #@1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_c

    #@1e
    :cond_1e
    return-object v0
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    :cond_4
    const-string v1, "/"

    #@6
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    .line 120
    array-length v2, p0

    #@b
    const/4 v3, 0x0

    #@c
    :goto_c
    if-ge v3, v2, :cond_1e

    #@e
    aget-object v4, p0, v3

    #@10
    .line 121
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 122
    invoke-static {v5, p1}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1b

    #@1a
    return-object v4

    #@1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_c

    #@1e
    :cond_1e
    return-object v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    :cond_4
    const-string v0, "/"

    #@6
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    .line 83
    invoke-static {p0, p1}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    #@11
    move-result p0

    #@12
    return p0
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_6

    #@3
    new-array p0, v0, [Ljava/lang/String;

    #@5
    return-object p0

    #@6
    .line 141
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    #@8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@b
    const-string v2, "/"

    #@d
    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    .line 143
    array-length v3, p0

    #@12
    :goto_12
    if-ge v0, v3, :cond_26

    #@14
    aget-object v4, p0, v0

    #@16
    .line 144
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 145
    invoke-static {v5, p1}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_23

    #@20
    .line 146
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    :cond_23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_12

    #@26
    .line 150
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@29
    move-result p0

    #@2a
    new-array p0, p0, [Ljava/lang/String;

    #@2c
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object p0

    #@30
    check-cast p0, [Ljava/lang/String;

    #@32
    return-object p0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    #@0
    .line 48
    array-length v0, p1

    #@1
    const/4 v1, 0x2

    #@2
    if-ne v0, v1, :cond_4b

    #@4
    const/4 v0, 0x0

    #@5
    .line 52
    aget-object v2, p1, v0

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_43

    #@d
    const/4 v2, 0x1

    #@e
    aget-object v3, p1, v2

    #@10
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_43

    #@16
    .line 56
    array-length v3, p0

    #@17
    if-eq v3, v1, :cond_1a

    #@19
    return v0

    #@1a
    .line 59
    :cond_1a
    aget-object v1, p1, v0

    #@1c
    const-string v3, "*"

    #@1e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2f

    #@24
    aget-object v1, p1, v0

    #@26
    aget-object v4, p0, v0

    #@28
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_2f

    #@2e
    return v0

    #@2f
    .line 63
    :cond_2f
    aget-object v1, p1, v2

    #@31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_42

    #@37
    aget-object p1, p1, v2

    #@39
    aget-object p0, p0, v2

    #@3b
    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result p0

    #@3f
    if-nez p0, :cond_42

    #@41
    return v0

    #@42
    :cond_42
    return v2

    #@43
    .line 53
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@45
    const-string p1, "Ill-formatted MIME type filter. Type or subtype empty."

    #@47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw p0

    #@4b
    .line 49
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string p1, "Ill-formatted MIME type filter. Must be type/subtype."

    #@4f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw p0
.end method

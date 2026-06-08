.class public final Landroidx/core/content/LocusIdCompat;
.super Ljava/lang/Object;
.source "LocusIdCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/LocusIdCompat$Api29Impl;
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mWrapped:Landroid/content/LocusId;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "id cannot be empty"

    #@5
    .line 81
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    #@d
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@f
    const/16 v1, 0x1d

    #@11
    if-lt v0, v1, :cond_1a

    #@13
    .line 83
    invoke-static {p1}, Landroidx/core/content/LocusIdCompat$Api29Impl;->create(Ljava/lang/String;)Landroid/content/LocusId;

    #@16
    move-result-object p1

    #@17
    iput-object p1, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    #@19
    goto :goto_1d

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    .line 85
    iput-object p1, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    #@1d
    :goto_1d
    return-void
.end method

.method private getSanitizedId()Ljava/lang/String;
    .registers 3

    #@0
    .line 146
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, "_chars"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public static toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;
    .registers 3

    #@0
    const-string v0, "locusId cannot be null"

    #@2
    .line 139
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 140
    new-instance v0, Landroidx/core/content/LocusIdCompat;

    #@7
    invoke-static {p0}, Landroidx/core/content/LocusIdCompat$Api29Impl;->getId(Landroid/content/LocusId;)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    const-string v1, "id cannot be empty"

    #@d
    invoke-static {p0, v1}, Landroidx/core/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@10
    move-result-object p0

    #@11
    check-cast p0, Ljava/lang/String;

    #@13
    invoke-direct {v0, p0}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    #@16
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    const/4 v1, 0x0

    #@5
    if-nez p1, :cond_8

    #@7
    return v1

    #@8
    .line 109
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    if-eq v2, v3, :cond_13

    #@12
    return v1

    #@13
    .line 110
    :cond_13
    check-cast p1, Landroidx/core/content/LocusIdCompat;

    #@15
    .line 111
    iget-object v2, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    #@17
    if-nez v2, :cond_20

    #@19
    .line 112
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    #@1b
    if-nez p1, :cond_1e

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move v0, v1

    #@1f
    :goto_1f
    return v0

    #@20
    .line 114
    :cond_20
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result p1

    #@26
    return p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    .line 94
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 101
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    const/16 v1, 0x1f

    #@c
    add-int/2addr v1, v0

    #@d
    return v1
.end method

.method public toLocusId()Landroid/content/LocusId;
    .registers 2

    #@0
    .line 130
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "LocusIdCompat["

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-direct {p0}, Landroidx/core/content/LocusIdCompat;->getSanitizedId()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, "]"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

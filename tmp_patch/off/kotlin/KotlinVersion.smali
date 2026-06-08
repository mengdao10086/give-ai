.class public final Lkotlin/KotlinVersion;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/KotlinVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/KotlinVersion;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0016\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/KotlinVersion;",
        "",
        "major",
        "",
        "minor",
        "(II)V",
        "patch",
        "(III)V",
        "getMajor",
        "()I",
        "getMinor",
        "getPatch",
        "version",
        "compareTo",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "isAtLeast",
        "toString",
        "",
        "versionOf",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CURRENT:Lkotlin/KotlinVersion;

.field public static final Companion:Lkotlin/KotlinVersion$Companion;

.field public static final MAX_COMPONENT_VALUE:I = 0xff


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lkotlin/KotlinVersion$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lkotlin/KotlinVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lkotlin/KotlinVersion;->Companion:Lkotlin/KotlinVersion$Companion;

    #@8
    .line 75
    invoke-static {}, Lkotlin/KotlinVersionCurrentValue;->get()Lkotlin/KotlinVersion;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    #@e
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 21
    invoke-direct {p0, p1, p2, v0}, Lkotlin/KotlinVersion;-><init>(III)V

    #@4
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    #@0
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    iput p1, p0, Lkotlin/KotlinVersion;->major:I

    #@5
    iput p2, p0, Lkotlin/KotlinVersion;->minor:I

    #@7
    iput p3, p0, Lkotlin/KotlinVersion;->patch:I

    #@9
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lkotlin/KotlinVersion;->versionOf(III)I

    #@c
    move-result p1

    #@d
    iput p1, p0, Lkotlin/KotlinVersion;->version:I

    #@f
    return-void
.end method

.method private final versionOf(III)I
    .registers 7

    #@0
    .line 26
    new-instance v0, Lkotlin/ranges/IntRange;

    #@2
    const/4 v1, 0x0

    #@3
    const/16 v2, 0xff

    #@5
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    #@8
    invoke-virtual {v0, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_25

    #@e
    new-instance v0, Lkotlin/ranges/IntRange;

    #@10
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    #@13
    invoke-virtual {v0, p2}, Lkotlin/ranges/IntRange;->contains(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_25

    #@19
    new-instance v0, Lkotlin/ranges/IntRange;

    #@1b
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    #@1e
    invoke-virtual {v0, p3}, Lkotlin/ranges/IntRange;->contains(I)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_25

    #@24
    const/4 v1, 0x1

    #@25
    :cond_25
    if-eqz v1, :cond_2e

    #@27
    shl-int/lit8 p1, p1, 0x10

    #@29
    shl-int/lit8 p2, p2, 0x8

    #@2b
    add-int/2addr p1, p2

    #@2c
    add-int/2addr p1, p3

    #@2d
    return p1

    #@2e
    .line 27
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    const-string v1, "Version components are out of range: "

    #@32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object p1

    #@39
    const/16 v0, 0x2e

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object p1

    #@3f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    move-result-object p1

    #@47
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object p1

    #@4b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object p1

    #@4f
    .line 26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@54
    move-result-object p1

    #@55
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw p2
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    #@0
    .line 16
    check-cast p1, Lkotlin/KotlinVersion;

    #@2
    invoke-virtual {p0, p1}, Lkotlin/KotlinVersion;->compareTo(Lkotlin/KotlinVersion;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public compareTo(Lkotlin/KotlinVersion;)I
    .registers 3

    #@0
    const-string v0, "other"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 45
    iget v0, p0, Lkotlin/KotlinVersion;->version:I

    #@7
    iget p1, p1, Lkotlin/KotlinVersion;->version:I

    #@9
    sub-int/2addr v0, p1

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 39
    :cond_4
    instance-of v1, p1, Lkotlin/KotlinVersion;

    #@6
    if-eqz v1, :cond_b

    #@8
    check-cast p1, Lkotlin/KotlinVersion;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    const/4 v1, 0x0

    #@d
    if-nez p1, :cond_10

    #@f
    return v1

    #@10
    .line 40
    :cond_10
    iget v2, p0, Lkotlin/KotlinVersion;->version:I

    #@12
    iget p1, p1, Lkotlin/KotlinVersion;->version:I

    #@14
    if-ne v2, p1, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    move v0, v1

    #@18
    :goto_18
    return v0
.end method

.method public final getMajor()I
    .registers 2

    #@0
    .line 17
    iget v0, p0, Lkotlin/KotlinVersion;->major:I

    #@2
    return v0
.end method

.method public final getMinor()I
    .registers 2

    #@0
    .line 17
    iget v0, p0, Lkotlin/KotlinVersion;->minor:I

    #@2
    return v0
.end method

.method public final getPatch()I
    .registers 2

    #@0
    .line 17
    iget v0, p0, Lkotlin/KotlinVersion;->patch:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 43
    iget v0, p0, Lkotlin/KotlinVersion;->version:I

    #@2
    return v0
.end method

.method public final isAtLeast(II)Z
    .registers 4

    #@0
    .line 52
    iget v0, p0, Lkotlin/KotlinVersion;->major:I

    #@2
    if-gt v0, p1, :cond_d

    #@4
    if-ne v0, p1, :cond_b

    #@6
    .line 53
    iget p1, p0, Lkotlin/KotlinVersion;->minor:I

    #@8
    if-lt p1, p2, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p1, 0x1

    #@e
    :goto_e
    return p1
.end method

.method public final isAtLeast(III)Z
    .registers 5

    #@0
    .line 60
    iget v0, p0, Lkotlin/KotlinVersion;->major:I

    #@2
    if-gt v0, p1, :cond_13

    #@4
    if-ne v0, p1, :cond_11

    #@6
    .line 61
    iget p1, p0, Lkotlin/KotlinVersion;->minor:I

    #@8
    if-gt p1, p2, :cond_13

    #@a
    if-ne p1, p2, :cond_11

    #@c
    .line 62
    iget p1, p0, Lkotlin/KotlinVersion;->patch:I

    #@e
    if-lt p1, p3, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 p1, 0x1

    #@14
    :goto_14
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Lkotlin/KotlinVersion;->major:I

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const/16 v1, 0x2e

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v2, p0, Lkotlin/KotlinVersion;->minor:I

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget v1, p0, Lkotlin/KotlinVersion;->patch:I

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

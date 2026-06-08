.class public final Lcom/flydigi/sdk/bluetooth/util/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVersionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VersionUtils.kt\ncom/flydigi/sdk/bluetooth/util/VersionUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,59:1\n37#2,2:60\n37#2,2:62\n37#2,2:64\n37#2,2:66\n*S KotlinDebug\n*F\n+ 1 VersionUtils.kt\ncom/flydigi/sdk/bluetooth/util/VersionUtils\n*L\n13#1:60,2\n14#1:62,2\n40#1:64,2\n41#1:66,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/flydigi/sdk/bluetooth/util/VersionUtils;",
        "",
        "()V",
        "isVersionNew",
        "",
        "oldV",
        "",
        "newV",
        "isVersionNewOrEquals",
        "bluetooth_release"
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
.field public static final INSTANCE:Lcom/flydigi/sdk/bluetooth/util/VersionUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/util/VersionUtils;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/util/VersionUtils;-><init>()V

    #@5
    sput-object v0, Lcom/flydigi/sdk/bluetooth/util/VersionUtils;->INSTANCE:Lcom/flydigi/sdk/bluetooth/util/VersionUtils;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final isVersionNew(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    const-string v0, "\\."

    #@2
    const-string v1, "oldV"

    #@4
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    const-string v1, "newV"

    #@9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@c
    const/4 v1, 0x1

    #@d
    .line 13
    :try_start_d
    check-cast p0, Ljava/lang/CharSequence;

    #@f
    new-instance v2, Lkotlin/text/Regex;

    #@11
    invoke-direct {v2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {v2, p0, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    #@18
    move-result-object p0

    #@19
    check-cast p0, Ljava/util/Collection;

    #@1b
    new-array v2, v3, [Ljava/lang/String;

    #@1d
    .line 61
    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@20
    move-result-object p0

    #@21
    .line 13
    check-cast p0, [Ljava/lang/String;

    #@23
    .line 14
    check-cast p1, Ljava/lang/CharSequence;

    #@25
    new-instance v2, Lkotlin/text/Regex;

    #@27
    invoke-direct {v2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-virtual {v2, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    #@2d
    move-result-object p1

    #@2e
    check-cast p1, Ljava/util/Collection;

    #@30
    new-array v0, v3, [Ljava/lang/String;

    #@32
    .line 63
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object p1

    #@36
    .line 14
    check-cast p1, [Ljava/lang/String;

    #@38
    .line 15
    array-length v0, p1

    #@39
    array-length v2, p0

    #@3a
    if-le v0, v2, :cond_3d

    #@3c
    return v1

    #@3d
    .line 17
    :cond_3d
    array-length v0, p1

    #@3e
    array-length v2, p0

    #@3f
    if-ne v0, v2, :cond_5a

    #@41
    .line 18
    array-length v0, p1

    #@42
    move v2, v3

    #@43
    :goto_43
    if-ge v2, v0, :cond_5a

    #@45
    .line 19
    aget-object v4, p0, v2

    #@47
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4a
    move-result v4

    #@4b
    .line 20
    aget-object v5, p1, v2

    #@4d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@50
    move-result v5
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_51} :catch_5b

    #@51
    if-le v5, v4, :cond_54

    #@53
    return v1

    #@54
    :cond_54
    if-ge v5, v4, :cond_57

    #@56
    return v3

    #@57
    :cond_57
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_43

    #@5a
    :cond_5a
    return v3

    #@5b
    :catch_5b
    return v1
.end method

.method public static final isVersionNewOrEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    const-string v0, "oldV"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "newV"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 37
    invoke-static {p0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-eqz v0, :cond_12

    #@11
    return v1

    #@12
    .line 40
    :cond_12
    check-cast p0, Ljava/lang/CharSequence;

    #@14
    new-instance v0, Lkotlin/text/Regex;

    #@16
    const-string v2, "\\."

    #@18
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-virtual {v0, p0, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    #@1f
    move-result-object p0

    #@20
    check-cast p0, Ljava/util/Collection;

    #@22
    new-array v0, v3, [Ljava/lang/String;

    #@24
    .line 65
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@27
    move-result-object p0

    #@28
    .line 40
    check-cast p0, [Ljava/lang/String;

    #@2a
    .line 41
    check-cast p1, Ljava/lang/CharSequence;

    #@2c
    new-instance v0, Lkotlin/text/Regex;

    #@2e
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    #@31
    invoke-virtual {v0, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    #@34
    move-result-object p1

    #@35
    check-cast p1, Ljava/util/Collection;

    #@37
    new-array v0, v3, [Ljava/lang/String;

    #@39
    .line 67
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3c
    move-result-object p1

    #@3d
    .line 41
    check-cast p1, [Ljava/lang/String;

    #@3f
    .line 42
    array-length v0, p1

    #@40
    array-length v2, p0

    #@41
    if-le v0, v2, :cond_44

    #@43
    return v1

    #@44
    .line 44
    :cond_44
    array-length v0, p1

    #@45
    array-length v2, p0

    #@46
    if-ne v0, v2, :cond_61

    #@48
    .line 45
    array-length v0, p1

    #@49
    move v2, v3

    #@4a
    :goto_4a
    if-ge v2, v0, :cond_61

    #@4c
    .line 46
    aget-object v4, p0, v2

    #@4e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@51
    move-result v4

    #@52
    .line 47
    aget-object v5, p1, v2

    #@54
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@57
    move-result v5

    #@58
    if-le v5, v4, :cond_5b

    #@5a
    return v1

    #@5b
    :cond_5b
    if-ge v5, v4, :cond_5e

    #@5d
    return v3

    #@5e
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    #@60
    goto :goto_4a

    #@61
    :cond_61
    return v3
.end method

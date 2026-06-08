.class public final Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;
.super Ljava/lang/Object;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;",
        "",
        "()V",
        "getClipDataUris",
        "",
        "Landroid/net/Uri;",
        "Landroid/content/Intent;",
        "getClipDataUris$activity_release",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final getClipDataUris$activity_release(Landroid/content/Intent;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 445
    new-instance v0, Ljava/util/LinkedHashSet;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@a
    .line 446
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_13

    #@10
    .line 447
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@13
    .line 449
    :cond_13
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@16
    move-result-object p1

    #@17
    if-nez p1, :cond_24

    #@19
    .line 450
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_24

    #@1f
    .line 451
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@22
    move-result-object p1

    #@23
    return-object p1

    #@24
    :cond_24
    if-eqz p1, :cond_3d

    #@26
    .line 453
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    #@29
    move-result v1

    #@2a
    const/4 v2, 0x0

    #@2b
    :goto_2b
    if-ge v2, v1, :cond_3d

    #@2d
    .line 454
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@34
    move-result-object v3

    #@35
    if-eqz v3, :cond_3a

    #@37
    .line 456
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@3a
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_2b

    #@3d
    .line 460
    :cond_3d
    new-instance p1, Ljava/util/ArrayList;

    #@3f
    check-cast v0, Ljava/util/Collection;

    #@41
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@44
    check-cast p1, Ljava/util/List;

    #@46
    return-object p1
.end method

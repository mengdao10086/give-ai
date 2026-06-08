.class public final Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;
.super Ljava/lang/Object;
.source "AbstractDataInteractionController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\r\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toHexString",
        "",
        "",
        "separator",
        "",
        "bluetooth_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toHexString([BLjava/lang/CharSequence;)Ljava/lang/String;
    .registers 12

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "separator"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const/4 v3, 0x0

    #@b
    const/4 v4, 0x0

    #@c
    const/4 v5, 0x0

    #@d
    const/4 v6, 0x0

    #@e
    .line 133
    sget-object v0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;->INSTANCE:Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;

    #@10
    move-object v7, v0

    #@11
    check-cast v7, Lkotlin/jvm/functions/Function1;

    #@13
    const/16 v8, 0x1e

    #@15
    const/4 v9, 0x0

    #@16
    move-object v1, p0

    #@17
    move-object v2, p1

    #@18
    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    return-object p0
.end method

.method public static synthetic toHexString$default([BLjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    #@0
    and-int/lit8 p2, p2, 0x1

    #@2
    if-eqz p2, :cond_8

    #@4
    const-string p1, ","

    #@6
    .line 132
    check-cast p1, Ljava/lang/CharSequence;

    #@8
    :cond_8
    invoke-static {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString([BLjava/lang/CharSequence;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

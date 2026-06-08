.class final Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AbstractDataInteractionController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt;->toHexString([BLjava/lang/CharSequence;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Byte;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0005\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;

    #@2
    invoke-direct {v0}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;-><init>()V

    #@5
    sput-object v0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;->INSTANCE:Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    #@4
    return-void
.end method


# virtual methods
.method public final invoke(B)Ljava/lang/CharSequence;
    .registers 5

    #@0
    .line 133
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    #@2
    const/4 v0, 0x1

    #@3
    new-array v1, v0, [Ljava/lang/Object;

    #@5
    and-int/lit16 p1, p1, 0xff

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object p1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p1, v1, v2

    #@e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@11
    move-result-object p1

    #@12
    const-string v0, "%02X"

    #@14
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    const-string v0, "format(format, *args)"

    #@1a
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1d
    check-cast p1, Ljava/lang/CharSequence;

    #@1f
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 133
    check-cast p1, Ljava/lang/Number;

    #@2
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    #@5
    move-result p1

    #@6
    invoke-virtual {p0, p1}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionControllerKt$toHexString$1;->invoke(B)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.class public final Landroidx/core/view/MenuKt$iterator$1;
.super Ljava/lang/Object;
.source "Menu.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/MenuKt;->iterator(Landroid/view/Menu;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/MenuItem;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/core/view/MenuKt$iterator$1\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n83#2:91\n1#3:92\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/core/view/MenuKt$iterator$1\n*L\n74#1:91\n74#1:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\t\u0010\u0007\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "androidx/core/view/MenuKt$iterator$1",
        "",
        "Landroid/view/MenuItem;",
        "index",
        "",
        "hasNext",
        "",
        "next",
        "remove",
        "",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_iterator:Landroid/view/Menu;

.field private index:I


# direct methods
.method constructor <init>(Landroid/view/Menu;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    #@2
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    .line 72
    iget v0, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    #@2
    iget-object v1, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    #@4
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public next()Landroid/view/MenuItem;
    .registers 4

    #@0
    .line 73
    iget-object v0, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    #@2
    iget v1, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    #@8
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_f

    #@e
    return-object v0

    #@f
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@11
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@14
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    #@0
    .line 70
    invoke-virtual {p0}, Landroidx/core/view/MenuKt$iterator$1;->next()Landroid/view/MenuItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .registers 4

    #@0
    .line 74
    iget-object v0, p0, Landroidx/core/view/MenuKt$iterator$1;->$this_iterator:Landroid/view/Menu;

    #@2
    iget v1, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Landroidx/core/view/MenuKt$iterator$1;->index:I

    #@8
    .line 91
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_1d

    #@e
    const-string v2, "getItem(index)"

    #@10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@13
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    #@16
    move-result v1

    #@17
    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    #@1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    :goto_1e
    if-eqz v0, :cond_21

    #@20
    return-void

    #@21
    :cond_21
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@23
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@26
    throw v0
.end method

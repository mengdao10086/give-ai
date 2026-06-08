.class public final Landroidx/core/util/LongSparseArrayKt$keyIterator$1;
.super Lkotlin/collections/LongIterator;
.source "LongSparseArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/util/LongSparseArrayKt;->keyIterator(Landroid/util/LongSparseArray;)Lkotlin/collections/LongIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\t\u0010\u0008\u001a\u00020\tH\u0097\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/core/util/LongSparseArrayKt$keyIterator$1",
        "Lkotlin/collections/LongIterator;",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "nextLong",
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
.field final synthetic $this_keyIterator:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/LongSparseArray;

    #@2
    .line 111
    invoke-direct {p0}, Lkotlin/collections/LongIterator;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .registers 2

    #@0
    .line 112
    iget v0, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    #@2
    return v0
.end method

.method public hasNext()Z
    .registers 3

    #@0
    .line 115
    iget v0, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    #@2
    iget-object v1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/LongSparseArray;

    #@4
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

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

.method public nextLong()J
    .registers 4

    #@0
    .line 118
    iget-object v0, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/LongSparseArray;

    #@2
    iget v1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    #@8
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public final setIndex(I)V
    .registers 2

    #@0
    .line 112
    iput p1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    #@2
    return-void
.end method

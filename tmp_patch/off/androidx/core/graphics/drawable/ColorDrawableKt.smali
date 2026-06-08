.class public final Landroidx/core/graphics/drawable/ColorDrawableKt;
.super Ljava/lang/Object;
.source "ColorDrawable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0086\u0008\u00a8\u0006\u0004"
    }
    d2 = {
        "toDrawable",
        "Landroid/graphics/drawable/ColorDrawable;",
        "Landroid/graphics/Color;",
        "",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toDrawable(I)Landroid/graphics/drawable/ColorDrawable;
    .registers 2

    #@0
    .line 28
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@5
    return-object v0
.end method

.method public static final toDrawable(Landroid/graphics/Color;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 33
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@7
    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    #@a
    move-result p0

    #@b
    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@e
    return-object v0
.end method

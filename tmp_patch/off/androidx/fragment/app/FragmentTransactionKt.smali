.class public final Landroidx/fragment/app/FragmentTransactionKt;
.super Ljava/lang/Object;
.source "FragmentTransaction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a;\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0086\u0008\u001a-\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0086\u0008\u001a;\u0010\n\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0086\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "add",
        "Landroidx/fragment/app/FragmentTransaction;",
        "F",
        "Landroidx/fragment/app/Fragment;",
        "containerViewId",
        "",
        "tag",
        "",
        "args",
        "Landroid/os/Bundle;",
        "replace",
        "fragment-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic add(Landroidx/fragment/app/FragmentTransaction;ILjava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/fragment/app/FragmentTransaction;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 v0, 0x4

    #@6
    const-string v1, "F"

    #@8
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    #@b
    const-class v0, Landroidx/fragment/app/Fragment;

    #@d
    move-object v1, v0

    #@e
    check-cast v1, Ljava/lang/Class;

    #@10
    invoke-virtual {p0, p1, v0, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@13
    move-result-object p0

    #@14
    const-string p1, "add(containerViewId, F::class.java, args, tag)"

    #@16
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@19
    move-object p1, p0

    #@1a
    check-cast p1, Landroidx/fragment/app/FragmentTransaction;

    #@1c
    return-object p0
.end method

.method public static final synthetic add(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/fragment/app/FragmentTransaction;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "tag"

    #@7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const/4 v0, 0x4

    #@b
    const-string v1, "F"

    #@d
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    #@10
    const-class v0, Landroidx/fragment/app/Fragment;

    #@12
    move-object v1, v0

    #@13
    check-cast v1, Ljava/lang/Class;

    #@15
    invoke-virtual {p0, v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@18
    move-result-object p0

    #@19
    const-string p1, "add(F::class.java, args, tag)"

    #@1b
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1e
    move-object p1, p0

    #@1f
    check-cast p1, Landroidx/fragment/app/FragmentTransaction;

    #@21
    return-object p0
.end method

.method public static synthetic add$default(Landroidx/fragment/app/FragmentTransaction;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/fragment/app/FragmentTransaction;
    .registers 7

    #@0
    and-int/lit8 p5, p4, 0x2

    #@2
    const/4 v0, 0x0

    #@3
    if-eqz p5, :cond_6

    #@5
    move-object p2, v0

    #@6
    :cond_6
    const/4 p5, 0x4

    #@7
    and-int/2addr p4, p5

    #@8
    if-eqz p4, :cond_b

    #@a
    move-object p3, v0

    #@b
    :cond_b
    const-string p4, "<this>"

    #@d
    .line 39
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@10
    const-string p4, "F"

    #@12
    .line 43
    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    #@15
    const-class p4, Landroidx/fragment/app/Fragment;

    #@17
    move-object p5, p4

    #@18
    check-cast p5, Ljava/lang/Class;

    #@1a
    invoke-virtual {p0, p1, p4, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@1d
    move-result-object p0

    #@1e
    const-string p1, "add(containerViewId, F::class.java, args, tag)"

    #@20
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@23
    move-object p1, p0

    #@24
    check-cast p1, Landroidx/fragment/app/FragmentTransaction;

    #@26
    return-object p0
.end method

.method public static synthetic add$default(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    #@0
    and-int/lit8 p3, p3, 0x2

    #@2
    if-eqz p3, :cond_5

    #@4
    const/4 p2, 0x0

    #@5
    :cond_5
    const-string p3, "<this>"

    #@7
    .line 58
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string p3, "tag"

    #@c
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@f
    const/4 p3, 0x4

    #@10
    const-string p4, "F"

    #@12
    .line 61
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    #@15
    const-class p3, Landroidx/fragment/app/Fragment;

    #@17
    move-object p4, p3

    #@18
    check-cast p4, Ljava/lang/Class;

    #@1a
    invoke-virtual {p0, p3, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@1d
    move-result-object p0

    #@1e
    const-string p1, "add(F::class.java, args, tag)"

    #@20
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@23
    move-object p1, p0

    #@24
    check-cast p1, Landroidx/fragment/app/FragmentTransaction;

    #@26
    return-object p0
.end method

.method public static final synthetic replace(Landroidx/fragment/app/FragmentTransaction;ILjava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/fragment/app/FragmentTransaction;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const/4 v0, 0x4

    #@6
    const-string v1, "F"

    #@8
    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    #@b
    const-class v0, Landroidx/fragment/app/Fragment;

    #@d
    move-object v1, v0

    #@e
    check-cast v1, Ljava/lang/Class;

    #@10
    invoke-virtual {p0, p1, v0, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@13
    move-result-object p0

    #@14
    const-string p1, "replace(containerViewId, F::class.java, args, tag)"

    #@16
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@19
    move-object p1, p0

    #@1a
    check-cast p1, Landroidx/fragment/app/FragmentTransaction;

    #@1c
    return-object p0
.end method

.method public static synthetic replace$default(Landroidx/fragment/app/FragmentTransaction;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/fragment/app/FragmentTransaction;
    .registers 7

    #@0
    and-int/lit8 p5, p4, 0x2

    #@2
    const/4 v0, 0x0

    #@3
    if-eqz p5, :cond_6

    #@5
    move-object p2, v0

    #@6
    :cond_6
    const/4 p5, 0x4

    #@7
    and-int/2addr p4, p5

    #@8
    if-eqz p4, :cond_b

    #@a
    move-object p3, v0

    #@b
    :cond_b
    const-string p4, "<this>"

    #@d
    .line 80
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@10
    const-string p4, "F"

    #@12
    .line 84
    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    #@15
    const-class p4, Landroidx/fragment/app/Fragment;

    #@17
    move-object p5, p4

    #@18
    check-cast p5, Ljava/lang/Class;

    #@1a
    invoke-virtual {p0, p1, p4, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@1d
    move-result-object p0

    #@1e
    const-string p1, "replace(containerViewId, F::class.java, args, tag)"

    #@20
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@23
    move-object p1, p0

    #@24
    check-cast p1, Landroidx/fragment/app/FragmentTransaction;

    #@26
    return-object p0
.end method

.class public final Lcom/blankj/utilcode/util/FragmentUtils;
.super Ljava/lang/Object;
.source "FragmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/FragmentUtils$OnBackClickListener;,
        Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;,
        Lcom/blankj/utilcode/util/FragmentUtils$Args;
    }
.end annotation


# static fields
.field private static final ARGS_ID:Ljava/lang/String; = "args_id"

.field private static final ARGS_IS_ADD_STACK:Ljava/lang/String; = "args_is_add_stack"

.field private static final ARGS_IS_HIDE:Ljava/lang/String; = "args_is_hide"

.field private static final ARGS_TAG:Ljava/lang/String; = "args_tag"

.field private static final TYPE_ADD_FRAGMENT:I = 0x1

.field private static final TYPE_HIDE_FRAGMENT:I = 0x4

.field private static final TYPE_REMOVE_FRAGMENT:I = 0x20

.field private static final TYPE_REMOVE_TO_FRAGMENT:I = 0x40

.field private static final TYPE_REPLACE_FRAGMENT:I = 0x10

.field private static final TYPE_SHOW_FRAGMENT:I = 0x2

.field private static final TYPE_SHOW_HIDE_FRAGMENT:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V
    .registers 9

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    .line 62
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZZ)V

    #@9
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;III)V
    .registers 14

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v5, p3

    #@8
    move v6, p4

    #@9
    .line 113
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IIIII)V
    .registers 16

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v5, p3

    #@6
    move v6, p4

    #@7
    move v7, p5

    #@8
    move v8, p6

    #@9
    .line 161
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .registers 10

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p3

    #@6
    .line 269
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZZ)V

    #@9
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;II)V
    .registers 15

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    move v5, p4

    #@8
    move v6, p5

    #@9
    .line 327
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;IIII)V
    .registers 17

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    .line 379
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@d
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    .line 286
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZZ)V

    #@9
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZII)V
    .registers 16

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move v6, p6

    #@9
    .line 350
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V
    .registers 12

    #@0
    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@3
    move-result-object v0

    #@4
    .line 411
    new-instance v1, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v1, p2, p3, v2, p4}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@a
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@d
    .line 412
    invoke-static {v0, p5, p6, p7, p8}, Lcom/blankj/utilcode/util/FragmentUtils;->addAnim(Landroidx/fragment/app/FragmentTransaction;IIII)V

    #@10
    const/4 p2, 0x1

    #@11
    new-array p3, p2, [Landroidx/fragment/app/Fragment;

    #@13
    aput-object p1, p3, v2

    #@15
    const/4 p1, 0x0

    #@16
    .line 413
    invoke-static {p2, p0, v0, p1, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@19
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZZ)V
    .registers 7

    #@0
    .line 305
    new-instance v0, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@2
    invoke-direct {v0, p2, p3, p4, p5}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@5
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@8
    const/4 p2, 0x1

    #@9
    new-array p3, p2, [Landroidx/fragment/app/Fragment;

    #@b
    const/4 p4, 0x0

    #@c
    aput-object p1, p3, p4

    #@e
    const/4 p1, 0x0

    #@f
    .line 306
    invoke-static {p2, p0, p1, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@12
    return-void
.end method

.method public static varargs add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V
    .registers 9

    #@0
    .line 450
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@3
    move-result-object v0

    #@4
    .line 451
    new-instance v1, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v1, p2, p3, v2, p4}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@a
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@d
    .line 452
    invoke-static {v0, p5}, Lcom/blankj/utilcode/util/FragmentUtils;->addSharedElement(Landroidx/fragment/app/FragmentTransaction;[Landroid/view/View;)V

    #@10
    const/4 p2, 0x1

    #@11
    new-array p3, p2, [Landroidx/fragment/app/Fragment;

    #@13
    aput-object p1, p3, v2

    #@15
    const/4 p1, 0x0

    #@16
    .line 453
    invoke-static {p2, p0, v0, p1, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@19
    return-void
.end method

.method public static varargs add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;[Landroid/view/View;)V
    .registers 11

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    .line 431
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V

    #@9
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZ)V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v4, p3

    #@6
    .line 77
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZZ)V

    #@9
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZII)V
    .registers 15

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    move v6, p5

    #@9
    .line 134
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZIIII)V
    .registers 17

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    .line 190
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@d
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZZ)V
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    .line 94
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZZ)V

    #@9
    return-void
.end method

.method public static varargs add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZ[Landroid/view/View;)V
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    .line 224
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V

    #@9
    return-void
.end method

.method public static varargs add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v5, p3

    #@6
    .line 206
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V

    #@9
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Ljava/util/List;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;II)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    #@3
    .line 239
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, [Landroidx/fragment/app/Fragment;

    #@9
    const/4 v0, 0x0

    #@a
    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;[Landroidx/fragment/app/Fragment;I[Ljava/lang/String;I)V

    #@d
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;Ljava/util/List;I[Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;I[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    #@3
    .line 469
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, [Landroidx/fragment/app/Fragment;

    #@9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;[Landroidx/fragment/app/Fragment;I[Ljava/lang/String;I)V

    #@c
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;[Landroidx/fragment/app/Fragment;II)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 254
    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->add(Landroidx/fragment/app/FragmentManager;[Landroidx/fragment/app/Fragment;I[Ljava/lang/String;I)V

    #@4
    return-void
.end method

.method public static add(Landroidx/fragment/app/FragmentManager;[Landroidx/fragment/app/Fragment;I[Ljava/lang/String;I)V
    .registers 14

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    if-nez p3, :cond_1b

    #@5
    .line 486
    array-length p3, p1

    #@6
    move v3, v2

    #@7
    :goto_7
    if-ge v3, p3, :cond_33

    #@9
    .line 487
    aget-object v4, p1, v3

    #@b
    new-instance v5, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@d
    if-eq p4, v3, :cond_11

    #@f
    move v6, v1

    #@10
    goto :goto_12

    #@11
    :cond_11
    move v6, v2

    #@12
    :goto_12
    invoke-direct {v5, p2, v0, v6, v2}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@15
    invoke-static {v4, v5}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@18
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_7

    #@1b
    .line 490
    :cond_1b
    array-length v3, p1

    #@1c
    move v4, v2

    #@1d
    :goto_1d
    if-ge v4, v3, :cond_33

    #@1f
    .line 491
    aget-object v5, p1, v4

    #@21
    new-instance v6, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@23
    aget-object v7, p3, v4

    #@25
    if-eq p4, v4, :cond_29

    #@27
    move v8, v1

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v8, v2

    #@2a
    :goto_2a
    invoke-direct {v6, p2, v7, v8, v2}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@2d
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@30
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_1d

    #@33
    .line 494
    :cond_33
    invoke-static {v1, p0, v0, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@36
    return-void
.end method

.method private static addAnim(Landroidx/fragment/app/FragmentTransaction;IIII)V
    .registers 5

    #@0
    .line 1537
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    #@3
    return-void
.end method

.method private static varargs addSharedElement(Landroidx/fragment/app/FragmentTransaction;[Landroid/view/View;)V
    .registers 6

    #@0
    .line 1543
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    :goto_2
    if-ge v1, v0, :cond_10

    #@4
    aget-object v2, p1, v1

    #@6
    .line 1544
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_2

    #@10
    :cond_10
    return-void
.end method

.method public static dispatchBackPress(Landroidx/fragment/app/Fragment;)Z
    .registers 2

    #@0
    .line 1746
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_20

    #@6
    .line 1747
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_20

    #@c
    .line 1748
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_20

    #@12
    instance-of v0, p0, Lcom/blankj/utilcode/util/FragmentUtils$OnBackClickListener;

    #@14
    if-eqz v0, :cond_20

    #@16
    check-cast p0, Lcom/blankj/utilcode/util/FragmentUtils$OnBackClickListener;

    #@18
    .line 1750
    invoke-interface {p0}, Lcom/blankj/utilcode/util/FragmentUtils$OnBackClickListener;->onBackClick()Z

    #@1b
    move-result p0

    #@1c
    if-eqz p0, :cond_20

    #@1e
    const/4 p0, 0x1

    #@1f
    goto :goto_21

    #@20
    :cond_20
    const/4 p0, 0x0

    #@21
    :goto_21
    return p0
.end method

.method public static dispatchBackPress(Landroidx/fragment/app/FragmentManager;)Z
    .registers 6

    #@0
    .line 1760
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    if-eqz p0, :cond_40

    #@7
    .line 1761
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_e

    #@d
    goto :goto_40

    #@e
    .line 1762
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    sub-int/2addr v1, v2

    #@14
    :goto_14
    if-ltz v1, :cond_40

    #@16
    .line 1763
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroidx/fragment/app/Fragment;

    #@1c
    if-eqz v3, :cond_3d

    #@1e
    .line 1765
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isResumed()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_3d

    #@24
    .line 1766
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isVisible()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_3d

    #@2a
    .line 1767
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3d

    #@30
    instance-of v4, v3, Lcom/blankj/utilcode/util/FragmentUtils$OnBackClickListener;

    #@32
    if-eqz v4, :cond_3d

    #@34
    check-cast v3, Lcom/blankj/utilcode/util/FragmentUtils$OnBackClickListener;

    #@36
    .line 1769
    invoke-interface {v3}, Lcom/blankj/utilcode/util/FragmentUtils$OnBackClickListener;->onBackClick()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_3d

    #@3c
    return v2

    #@3d
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    #@3f
    goto :goto_14

    #@40
    :cond_40
    :goto_40
    return v0
.end method

.method public static findFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    #@0
    .line 1724
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static findFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 2

    #@0
    .line 1736
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getAllFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;"
        }
    .end annotation

    #@0
    .line 1671
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->getAllFragments(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)Ljava/util/List;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method private static getAllFragments(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;"
        }
    .end annotation

    #@0
    .line 1676
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    .line 1677
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    :goto_a
    if-ltz v0, :cond_2c

    #@c
    .line 1678
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@12
    if-eqz v1, :cond_29

    #@14
    .line 1680
    new-instance v2, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;

    #@16
    .line 1681
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@19
    move-result-object v3

    #@1a
    new-instance v4, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1f
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/FragmentUtils;->getAllFragments(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)Ljava/util/List;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v1, v3}, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    #@26
    .line 1680
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    :cond_29
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_a

    #@2c
    :cond_2c
    return-object p1
.end method

.method public static getAllFragmentsInStack(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;"
        }
    .end annotation

    #@0
    .line 1695
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->getAllFragmentsInStack(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)Ljava/util/List;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method private static getAllFragmentsInStack(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;",
            ">;"
        }
    .end annotation

    #@0
    .line 1700
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    .line 1701
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    :goto_a
    if-ltz v0, :cond_3a

    #@c
    .line 1702
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@12
    if-eqz v1, :cond_37

    #@14
    .line 1704
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_37

    #@1a
    const-string v3, "args_is_add_stack"

    #@1c
    .line 1705
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_37

    #@22
    .line 1706
    new-instance v2, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;

    #@24
    .line 1707
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@27
    move-result-object v3

    #@28
    new-instance v4, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@2d
    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/FragmentUtils;->getAllFragmentsInStack(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)Ljava/util/List;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v1, v3}, Lcom/blankj/utilcode/util/FragmentUtils$FragmentNode;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    #@34
    .line 1706
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    :cond_37
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_a

    #@3a
    :cond_3a
    return-object p1
.end method

.method private static getArgs(Landroidx/fragment/app/Fragment;)Lcom/blankj/utilcode/util/FragmentUtils$Args;
    .registers 5

    #@0
    .line 1444
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    .line 1445
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@8
    .line 1446
    :cond_8
    new-instance v1, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@a
    const-string v2, "args_id"

    #@c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    #@f
    move-result p0

    #@10
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@13
    move-result p0

    #@14
    const-string v2, "args_is_hide"

    #@16
    .line 1447
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    const-string v3, "args_is_add_stack"

    #@1c
    .line 1448
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    invoke-direct {v1, p0, v2, v0}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(IZZ)V

    #@23
    return-object v1
.end method

.method public static getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .line 1639
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_e

    #@6
    .line 1640
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_e

    #@d
    :cond_d
    return-object p0

    #@e
    :cond_e
    :goto_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@11
    move-result-object p0

    #@12
    return-object p0
.end method

.method public static getFragmentsInStack(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .line 1651
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    .line 1652
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 1653
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p0

    #@d
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2d

    #@13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@19
    if-eqz v1, :cond_d

    #@1b
    .line 1655
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@1e
    move-result-object v2

    #@1f
    if-eqz v2, :cond_d

    #@21
    const-string v3, "args_is_add_stack"

    #@23
    .line 1656
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_d

    #@29
    .line 1657
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_d

    #@2d
    :cond_2d
    return-object v0
.end method

.method public static getSimpleName(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, "null"

    #@4
    goto :goto_d

    #@5
    .line 1827
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object p0

    #@9
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    :goto_d
    return-object p0
.end method

.method public static getTop(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1556
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getTopInStack(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1566
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method private static getTopIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;
    .registers 8

    #@0
    .line 1572
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    .line 1573
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    sub-int/2addr v0, v1

    #@a
    :goto_a
    if-ltz v0, :cond_3a

    #@c
    .line 1574
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/fragment/app/Fragment;

    #@12
    if-eqz v2, :cond_37

    #@14
    if-eqz p2, :cond_2d

    #@16
    .line 1577
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@19
    move-result-object v3

    #@1a
    if-eqz v3, :cond_37

    #@1c
    const-string v4, "args_is_add_stack"

    #@1e
    .line 1578
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_37

    #@24
    .line 1579
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@27
    move-result-object p0

    #@28
    invoke-static {p0, v2, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@2b
    move-result-object p0

    #@2c
    return-object p0

    #@2d
    .line 1582
    :cond_2d
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@30
    move-result-object p0

    #@31
    const/4 p1, 0x0

    #@32
    invoke-static {p0, v2, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@35
    move-result-object p0

    #@36
    return-object p0

    #@37
    :cond_37
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_a

    #@3a
    :cond_3a
    return-object p1
.end method

.method public static getTopShow(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1596
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopShowIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getTopShowInStack(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1606
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopShowIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method private static getTopShowIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;
    .registers 8

    #@0
    .line 1612
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    .line 1613
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    sub-int/2addr v0, v1

    #@a
    :goto_a
    if-ltz v0, :cond_4c

    #@c
    .line 1614
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/fragment/app/Fragment;

    #@12
    if-eqz v2, :cond_49

    #@14
    .line 1616
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isResumed()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_49

    #@1a
    .line 1617
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_49

    #@20
    .line 1618
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_49

    #@26
    if-eqz p2, :cond_3f

    #@28
    .line 1620
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@2b
    move-result-object v3

    #@2c
    if-eqz v3, :cond_49

    #@2e
    const-string v4, "args_is_add_stack"

    #@30
    .line 1621
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_49

    #@36
    .line 1622
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@39
    move-result-object p0

    #@3a
    invoke-static {p0, v2, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopShowIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@3d
    move-result-object p0

    #@3e
    return-object p0

    #@3f
    .line 1625
    :cond_3f
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@42
    move-result-object p0

    #@43
    const/4 p1, 0x0

    #@44
    invoke-static {p0, v2, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->getTopShowIsInStack(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/Fragment;

    #@47
    move-result-object p0

    #@48
    return-object p0

    #@49
    :cond_49
    add-int/lit8 v0, v0, -0x1

    #@4b
    goto :goto_a

    #@4c
    :cond_4c
    return-object p1
.end method

.method public static hide(Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 526
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Z)V

    #@4
    .line 527
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@7
    move-result-object v1

    #@8
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object p0, v0, v2

    #@d
    const/4 p0, 0x4

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {p0, v1, v2, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@12
    return-void
.end method

.method public static hide(Landroidx/fragment/app/FragmentManager;)V
    .registers 5

    #@0
    .line 536
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 537
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_19

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/fragment/app/Fragment;

    #@14
    const/4 v3, 0x1

    #@15
    .line 538
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Z)V

    #@18
    goto :goto_8

    #@19
    :cond_19
    const/4 v1, 0x0

    #@1a
    new-array v1, v1, [Landroidx/fragment/app/Fragment;

    #@1c
    .line 540
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, [Landroidx/fragment/app/Fragment;

    #@22
    const/4 v1, 0x4

    #@23
    const/4 v2, 0x0

    #@24
    invoke-static {v1, p0, v2, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@27
    return-void
.end method

.method private static varargs operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V
    .registers 13

    #@0
    if-eqz p3, :cond_29

    #@2
    .line 1464
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_29

    #@8
    .line 1465
    new-instance p0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p0

    #@19
    const-string p1, " is isRemoving"

    #@1b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p0

    #@1f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p0

    #@23
    const-string p1, "FragmentUtils"

    #@25
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    return-void

    #@29
    :cond_29
    const-string v0, "args_is_add_stack"

    #@2b
    const-string v1, "args_id"

    #@2d
    const-string v2, "args_tag"

    #@2f
    const/4 v3, 0x1

    #@30
    const/4 v4, 0x0

    #@31
    if-eq p0, v3, :cond_c0

    #@33
    const/4 v5, 0x2

    #@34
    if-eq p0, v5, :cond_b5

    #@36
    const/4 v5, 0x4

    #@37
    if-eq p0, v5, :cond_aa

    #@39
    const/16 v5, 0x8

    #@3b
    if-eq p0, v5, :cond_9a

    #@3d
    const/16 v5, 0x10

    #@3f
    if-eq p0, v5, :cond_6f

    #@41
    const/16 v0, 0x20

    #@43
    if-eq p0, v0, :cond_62

    #@45
    const/16 v0, 0x40

    #@47
    if-eq p0, v0, :cond_4b

    #@49
    goto/16 :goto_105

    #@4b
    .line 1518
    :cond_4b
    array-length p0, p4

    #@4c
    sub-int/2addr p0, v3

    #@4d
    :goto_4d
    if-ltz p0, :cond_105

    #@4f
    .line 1519
    aget-object v0, p4, p0

    #@51
    .line 1520
    aget-object v1, p4, v4

    #@53
    if-ne v0, v1, :cond_5c

    #@55
    if-eqz p3, :cond_105

    #@57
    .line 1521
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@5a
    goto/16 :goto_105

    #@5c
    .line 1524
    :cond_5c
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@5f
    add-int/lit8 p0, p0, -0x1

    #@61
    goto :goto_4d

    #@62
    .line 1511
    :cond_62
    array-length p0, p4

    #@63
    :goto_63
    if-ge v4, p0, :cond_105

    #@65
    aget-object v0, p4, v4

    #@67
    if-eq v0, p3, :cond_6c

    #@69
    .line 1513
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@6c
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    #@6e
    goto :goto_63

    #@6f
    .line 1504
    :cond_6f
    aget-object p0, p4, v4

    #@71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@74
    move-result-object p0

    #@75
    if-nez p0, :cond_78

    #@77
    return-void

    #@78
    .line 1506
    :cond_78
    aget-object p3, p4, v4

    #@7a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7d
    move-result-object p3

    #@7e
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@81
    move-result-object p3

    #@82
    invoke-virtual {p0, v2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object p3

    #@86
    .line 1507
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@89
    move-result v1

    #@8a
    aget-object p4, p4, v4

    #@8c
    invoke-virtual {p2, v1, p4, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@8f
    .line 1508
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@92
    move-result p0

    #@93
    if-eqz p0, :cond_105

    #@95
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@98
    goto/16 :goto_105

    #@9a
    .line 1496
    :cond_9a
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@9d
    .line 1497
    array-length p0, p4

    #@9e
    :goto_9e
    if-ge v4, p0, :cond_105

    #@a0
    aget-object v0, p4, v4

    #@a2
    if-eq v0, p3, :cond_a7

    #@a4
    .line 1499
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@a7
    :cond_a7
    add-int/lit8 v4, v4, 0x1

    #@a9
    goto :goto_9e

    #@aa
    .line 1486
    :cond_aa
    array-length p0, p4

    #@ab
    :goto_ab
    if-ge v4, p0, :cond_105

    #@ad
    aget-object p3, p4, v4

    #@af
    .line 1487
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@b2
    add-int/lit8 v4, v4, 0x1

    #@b4
    goto :goto_ab

    #@b5
    .line 1491
    :cond_b5
    array-length p0, p4

    #@b6
    :goto_b6
    if-ge v4, p0, :cond_105

    #@b8
    aget-object p3, p4, v4

    #@ba
    .line 1492
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@bd
    add-int/lit8 v4, v4, 0x1

    #@bf
    goto :goto_b6

    #@c0
    .line 1472
    :cond_c0
    array-length p0, p4

    #@c1
    :goto_c1
    if-ge v4, p0, :cond_105

    #@c3
    aget-object p3, p4, v4

    #@c5
    .line 1473
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@c8
    move-result-object v3

    #@c9
    if-nez v3, :cond_cc

    #@cb
    return-void

    #@cc
    .line 1475
    :cond_cc
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    .line 1476
    invoke-virtual {p1, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@db
    move-result-object v6

    #@dc
    if-eqz v6, :cond_e7

    #@de
    .line 1477
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@e1
    move-result v7

    #@e2
    if-eqz v7, :cond_e7

    #@e4
    .line 1478
    invoke-virtual {p2, v6}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@e7
    .line 1480
    :cond_e7
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@ea
    move-result v6

    #@eb
    invoke-virtual {p2, v6, p3, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@ee
    const-string v6, "args_is_hide"

    #@f0
    .line 1481
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@f3
    move-result v6

    #@f4
    if-eqz v6, :cond_f9

    #@f6
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@f9
    .line 1482
    :cond_f9
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@fc
    move-result p3

    #@fd
    if-eqz p3, :cond_102

    #@ff
    invoke-virtual {p2, v5}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@102
    :cond_102
    add-int/lit8 v4, v4, 0x1

    #@104
    goto :goto_c1

    #@105
    .line 1528
    :cond_105
    :goto_105
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@108
    .line 1529
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    #@10b
    return-void
.end method

.method private static varargs operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V
    .registers 5

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 1455
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@6
    move-result-object v0

    #@7
    .line 1456
    invoke-static {p0, p1, v0, p2, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@a
    return-void
.end method

.method public static pop(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 1316
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->pop(Landroidx/fragment/app/FragmentManager;Z)V

    #@4
    return-void
.end method

.method public static pop(Landroidx/fragment/app/FragmentManager;Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_6

    #@2
    .line 1328
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    #@5
    goto :goto_9

    #@6
    .line 1330
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    #@9
    :goto_9
    return-void
.end method

.method public static popAll(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 1374
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->popAll(Landroidx/fragment/app/FragmentManager;Z)V

    #@4
    return-void
.end method

.method public static popAll(Landroidx/fragment/app/FragmentManager;Z)V
    .registers 4

    #@0
    .line 1383
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_1d

    #@6
    const/4 v0, 0x0

    #@7
    .line 1384
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x1

    #@c
    if-eqz p1, :cond_16

    #@e
    .line 1386
    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getId()I

    #@11
    move-result p1

    #@12
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(II)Z

    #@15
    goto :goto_1d

    #@16
    .line 1388
    :cond_16
    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getId()I

    #@19
    move-result p1

    #@1a
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    #@1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static popTo(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;Z)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 1344
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->popTo(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;ZZ)V

    #@4
    return-void
.end method

.method public static popTo(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;ZZ)V"
        }
    .end annotation

    #@0
    if-eqz p3, :cond_a

    #@2
    .line 1360
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    #@9
    goto :goto_11

    #@a
    .line 1363
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    #@11
    :goto_11
    return-void
.end method

.method private static putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V
    .registers 4

    #@0
    .line 1423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_e

    #@6
    .line 1425
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    .line 1426
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@e
    :cond_e
    const-string p0, "args_id"

    #@10
    .line 1428
    iget v1, p1, Lcom/blankj/utilcode/util/FragmentUtils$Args;->id:I

    #@12
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@15
    const-string p0, "args_is_hide"

    #@17
    .line 1429
    iget-boolean v1, p1, Lcom/blankj/utilcode/util/FragmentUtils$Args;->isHide:Z

    #@19
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1c
    const-string p0, "args_is_add_stack"

    #@1e
    .line 1430
    iget-boolean v1, p1, Lcom/blankj/utilcode/util/FragmentUtils$Args;->isAddStack:Z

    #@20
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@23
    const-string p0, "args_tag"

    #@25
    .line 1431
    iget-object p1, p1, Lcom/blankj/utilcode/util/FragmentUtils$Args;->tag:Ljava/lang/String;

    #@27
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    return-void
.end method

.method private static putArgs(Landroidx/fragment/app/Fragment;Z)V
    .registers 3

    #@0
    .line 1435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_e

    #@6
    .line 1437
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    .line 1438
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@e
    :cond_e
    const-string p0, "args_is_hide"

    #@10
    .line 1440
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@13
    return-void
.end method

.method public static remove(Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    .line 1399
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Landroidx/fragment/app/Fragment;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object p0, v1, v2

    #@a
    const/16 p0, 0x20

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {p0, v0, v2, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@10
    return-void
.end method

.method public static removeAll(Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    #@0
    .line 1418
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    new-array v1, v1, [Landroidx/fragment/app/Fragment;

    #@7
    .line 1419
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Landroidx/fragment/app/Fragment;

    #@d
    const/16 v1, 0x20

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v1, p0, v2, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@13
    return-void
.end method

.method public static removeTo(Landroidx/fragment/app/Fragment;Z)V
    .registers 5

    #@0
    .line 1409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    if-eqz p1, :cond_8

    #@6
    move-object p1, p0

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    const/4 v1, 0x1

    #@a
    new-array v1, v1, [Landroidx/fragment/app/Fragment;

    #@c
    const/4 v2, 0x0

    #@d
    aput-object p0, v1, v2

    #@f
    const/16 p0, 0x40

    #@11
    invoke-static {p0, v0, p1, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@14
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 656
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    #@5
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;II)V
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v4, p2

    #@7
    move v5, p3

    #@8
    .line 686
    invoke-static/range {v0 .. v7}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V

    #@b
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;IIII)V
    .registers 14

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    move v6, p4

    #@7
    move v7, p5

    #@8
    .line 730
    invoke-static/range {v0 .. v7}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V

    #@b
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 962
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    #@4
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;II)V
    .registers 13

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    .line 999
    invoke-static/range {v0 .. v7}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V

    #@b
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;IIII)V
    .registers 15

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    .line 1047
    invoke-static/range {v0 .. v7}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V

    #@b
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .registers 5

    #@0
    .line 977
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 979
    :cond_7
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getArgs(Landroidx/fragment/app/Fragment;)Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@a
    move-result-object p0

    #@b
    .line 980
    iget p0, p0, Lcom/blankj/utilcode/util/FragmentUtils$Args;->id:I

    #@d
    invoke-static {v0, p1, p0, p2, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z)V

    #@10
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZII)V
    .registers 14

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    .line 1020
    invoke-static/range {v0 .. v7}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V

    #@b
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V
    .registers 17

    #@0
    .line 1077
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 1079
    :cond_7
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getArgs(Landroidx/fragment/app/Fragment;)Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@a
    move-result-object v1

    #@b
    .line 1080
    iget v2, v1, Lcom/blankj/utilcode/util/FragmentUtils$Args;->id:I

    #@d
    move-object v1, p1

    #@e
    move-object v3, p2

    #@f
    move v4, p3

    #@10
    move v5, p4

    #@11
    move v6, p5

    #@12
    move v7, p6

    #@13
    move/from16 v8, p7

    #@15
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@18
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z[Landroid/view/View;)V
    .registers 11

    #@0
    .line 1115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 1117
    :cond_7
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getArgs(Landroidx/fragment/app/Fragment;)Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@a
    move-result-object p0

    #@b
    .line 1118
    iget v2, p0, Lcom/blankj/utilcode/util/FragmentUtils$Args;->id:I

    #@d
    move-object v1, p1

    #@e
    move-object v3, p2

    #@f
    move v4, p3

    #@10
    move-object v5, p4

    #@11
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V

    #@14
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;[Landroid/view/View;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1097
    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z[Landroid/view/View;)V

    #@4
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 669
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    #@4
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZII)V
    .registers 13

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    .line 705
    invoke-static/range {v0 .. v7}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V

    #@b
    return-void
.end method

.method public static replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZIIII)V
    .registers 15

    #@0
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    .line 758
    invoke-static/range {v0 .. v7}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZIIII)V

    #@b
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z[Landroid/view/View;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 789
    invoke-static {p0, p1, v0, p2, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z[Landroid/view/View;)V

    #@4
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 773
    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z[Landroid/view/View;)V

    #@5
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 802
    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z)V

    #@5
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;III)V
    .registers 14

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v5, p3

    #@8
    move v6, p4

    #@9
    .line 836
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IIIII)V
    .registers 16

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v5, p3

    #@6
    move v6, p4

    #@7
    move v7, p5

    #@8
    move v8, p6

    #@9
    .line 884
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1139
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z)V

    #@4
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;II)V
    .registers 15

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    move v5, p4

    #@8
    move v6, p5

    #@9
    .line 1179
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;IIII)V
    .registers 17

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    .line 1231
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@d
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z)V
    .registers 8

    #@0
    .line 1156
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@3
    move-result-object v0

    #@4
    .line 1157
    new-instance v1, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v1, p2, p3, v2, p4}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@a
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@d
    const/4 p2, 0x1

    #@e
    new-array p2, p2, [Landroidx/fragment/app/Fragment;

    #@10
    aput-object p1, p2, v2

    #@12
    const/16 p1, 0x10

    #@14
    const/4 p3, 0x0

    #@15
    .line 1158
    invoke-static {p1, p0, v0, p3, p2}, Lcom/blankj/utilcode/util/FragmentUtils;->operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@18
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZII)V
    .registers 16

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move v6, p6

    #@9
    .line 1202
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V
    .registers 12

    #@0
    .line 1263
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@3
    move-result-object v0

    #@4
    .line 1264
    new-instance v1, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v1, p2, p3, v2, p4}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@a
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@d
    .line 1265
    invoke-static {v0, p5, p6, p7, p8}, Lcom/blankj/utilcode/util/FragmentUtils;->addAnim(Landroidx/fragment/app/FragmentTransaction;IIII)V

    #@10
    const/4 p2, 0x1

    #@11
    new-array p2, p2, [Landroidx/fragment/app/Fragment;

    #@13
    aput-object p1, p2, v2

    #@15
    const/16 p1, 0x10

    #@17
    const/4 p3, 0x0

    #@18
    .line 1266
    invoke-static {p1, p0, v0, p3, p2}, Lcom/blankj/utilcode/util/FragmentUtils;->operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@1b
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V
    .registers 9

    #@0
    .line 1304
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@3
    move-result-object v0

    #@4
    .line 1305
    new-instance v1, Lcom/blankj/utilcode/util/FragmentUtils$Args;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v1, p2, p3, v2, p4}, Lcom/blankj/utilcode/util/FragmentUtils$Args;-><init>(ILjava/lang/String;ZZ)V

    #@a
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Lcom/blankj/utilcode/util/FragmentUtils$Args;)V

    #@d
    .line 1306
    invoke-static {v0, p5}, Lcom/blankj/utilcode/util/FragmentUtils;->addSharedElement(Landroidx/fragment/app/FragmentTransaction;[Landroid/view/View;)V

    #@10
    const/4 p2, 0x1

    #@11
    new-array p2, p2, [Landroidx/fragment/app/Fragment;

    #@13
    aput-object p1, p2, v2

    #@15
    const/16 p1, 0x10

    #@17
    const/4 p3, 0x0

    #@18
    .line 1307
    invoke-static {p1, p0, v0, p3, p2}, Lcom/blankj/utilcode/util/FragmentUtils;->operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@1b
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;[Landroid/view/View;)V
    .registers 11

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    .line 1284
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V

    #@9
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZ)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 817
    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z)V

    #@4
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZII)V
    .registers 15

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    move v6, p5

    #@9
    .line 857
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@c
    return-void
.end method

.method public static replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZIIII)V
    .registers 17

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    .line 914
    invoke-static/range {v0 .. v8}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;ZIIII)V

    #@d
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;IZ[Landroid/view/View;)V
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    .line 949
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V

    #@9
    return-void
.end method

.method public static varargs replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v5, p3

    #@6
    .line 931
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;ILjava/lang/String;Z[Landroid/view/View;)V

    #@9
    return-void
.end method

.method public static setBackground(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 1811
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_7

    #@6
    return-void

    #@7
    .line 1814
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@a
    return-void
.end method

.method public static setBackgroundColor(Landroidx/fragment/app/Fragment;I)V
    .registers 2

    #@0
    .line 1784
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_9

    #@6
    .line 1786
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    #@9
    :cond_9
    return-void
.end method

.method public static setBackgroundResource(Landroidx/fragment/app/Fragment;I)V
    .registers 2

    #@0
    .line 1798
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_9

    #@6
    .line 1800
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    #@9
    :cond_9
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 503
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Z)V

    #@4
    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Landroidx/fragment/app/Fragment;

    #@b
    aput-object p0, v2, v0

    #@d
    const/4 p0, 0x2

    #@e
    const/4 v0, 0x0

    #@f
    invoke-static {p0, v1, v0, v2}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@12
    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;)V
    .registers 5

    #@0
    .line 513
    invoke-static {p0}, Lcom/blankj/utilcode/util/FragmentUtils;->getFragments(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 514
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    if-eqz v2, :cond_19

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroidx/fragment/app/Fragment;

    #@15
    .line 515
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Z)V

    #@18
    goto :goto_8

    #@19
    :cond_19
    new-array v1, v3, [Landroidx/fragment/app/Fragment;

    #@1b
    .line 517
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, [Landroidx/fragment/app/Fragment;

    #@21
    const/4 v1, 0x2

    #@22
    const/4 v2, 0x0

    #@23
    invoke-static {v1, p0, v2, v0}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@26
    return-void
.end method

.method public static showHide(ILjava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 581
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroidx/fragment/app/Fragment;

    #@6
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->showHide(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    #@9
    return-void
.end method

.method public static showHide(ILjava/util/List;IIII)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;IIII)V"
        }
    .end annotation

    #@0
    .line 623
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    move-object v0, p0

    #@5
    check-cast v0, Landroidx/fragment/app/Fragment;

    #@7
    move-object v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move v5, p5

    #@c
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->showHide(Landroidx/fragment/app/Fragment;Ljava/util/List;IIII)V

    #@f
    return-void
.end method

.method public static varargs showHide(I[Landroidx/fragment/app/Fragment;)V
    .registers 2

    #@0
    .line 561
    aget-object p0, p1, p0

    #@2
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->showHide(Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@5
    return-void
.end method

.method public static showHide(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .registers 2

    #@0
    .line 551
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->showHide(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    #@7
    return-void
.end method

.method public static showHide(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;IIII)V
    .registers 12

    #@0
    .line 609
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    move-object v0, p0

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move v5, p5

    #@9
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/FragmentUtils;->showHide(Landroidx/fragment/app/Fragment;Ljava/util/List;IIII)V

    #@c
    return-void
.end method

.method public static showHide(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 591
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v1, :cond_18

    #@b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@11
    if-eq v1, p0, :cond_14

    #@13
    const/4 v2, 0x1

    #@14
    .line 592
    :cond_14
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Z)V

    #@17
    goto :goto_4

    #@18
    .line 594
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@1b
    move-result-object v0

    #@1c
    new-array v1, v2, [Landroidx/fragment/app/Fragment;

    #@1e
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@21
    move-result-object p1

    #@22
    check-cast p1, [Landroidx/fragment/app/Fragment;

    #@24
    const/16 v1, 0x8

    #@26
    invoke-static {v1, v0, p0, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->operateNoAnim(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@29
    return-void
.end method

.method public static showHide(Landroidx/fragment/app/Fragment;Ljava/util/List;IIII)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;IIII)V"
        }
    .end annotation

    #@0
    .line 637
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v1, :cond_18

    #@b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/fragment/app/Fragment;

    #@11
    if-eq v1, p0, :cond_14

    #@13
    const/4 v2, 0x1

    #@14
    .line 638
    :cond_14
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/FragmentUtils;->putArgs(Landroidx/fragment/app/Fragment;Z)V

    #@17
    goto :goto_4

    #@18
    .line 640
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_32

    #@1e
    .line 642
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@21
    move-result-object v1

    #@22
    .line 643
    invoke-static {v1, p2, p3, p4, p5}, Lcom/blankj/utilcode/util/FragmentUtils;->addAnim(Landroidx/fragment/app/FragmentTransaction;IIII)V

    #@25
    new-array p2, v2, [Landroidx/fragment/app/Fragment;

    #@27
    .line 644
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    move-result-object p1

    #@2b
    check-cast p1, [Landroidx/fragment/app/Fragment;

    #@2d
    const/16 p2, 0x8

    #@2f
    invoke-static {p2, v0, v1, p0, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->operate(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    #@32
    :cond_32
    return-void
.end method

.method public static varargs showHide(Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V
    .registers 2

    #@0
    .line 571
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/FragmentUtils;->showHide(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    #@7
    return-void
.end method

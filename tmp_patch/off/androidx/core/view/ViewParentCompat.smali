.class public final Landroidx/core/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewParentCompat$Api21Impl;,
        Landroidx/core/view/ViewParentCompat$Api19Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"

.field private static sTempNestedScrollConsumed:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getTempNestedScrollConsumed()[I
    .registers 3

    #@0
    .line 501
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    #@2
    if-nez v0, :cond_a

    #@4
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [I

    #@7
    .line 502
    sput-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    #@9
    goto :goto_10

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    .line 504
    aput v1, v0, v1

    #@d
    const/4 v2, 0x1

    #@e
    .line 505
    aput v1, v0, v2

    #@10
    .line 507
    :goto_10
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    #@12
    return-object v0
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    #@0
    .line 496
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewParentCompat$Api19Impl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 5

    #@0
    .line 429
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    :catch_5
    move-exception p1

    #@6
    .line 431
    new-instance p2, Ljava/lang/StringBuilder;

    #@8
    const-string p3, "ViewParent "

    #@a
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    const-string p2, " does not implement interface method onNestedFling"

    #@13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    const-string p2, "ViewParentCompat"

    #@1d
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    const/4 p0, 0x0

    #@21
    return p0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 4

    #@0
    .line 466
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    :catch_5
    move-exception p1

    #@6
    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    #@8
    const-string p3, "ViewParent "

    #@a
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    const-string p2, " does not implement interface method onNestedPreFling"

    #@13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    const-string p2, "ViewParentCompat"

    #@1d
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    const/4 p0, 0x0

    #@21
    return p0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
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
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    .line 180
    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    #@9
    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 13

    #@0
    .line 387
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    #@2
    if-eqz v0, :cond_10

    #@4
    .line 389
    move-object v1, p0

    #@5
    check-cast v1, Landroidx/core/view/NestedScrollingParent2;

    #@7
    move-object v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move-object v5, p4

    #@b
    move v6, p5

    #@c
    invoke-interface/range {v1 .. v6}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    #@f
    goto :goto_31

    #@10
    :cond_10
    if-nez p5, :cond_31

    #@12
    .line 394
    :try_start_12
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_15} :catch_16

    #@15
    goto :goto_31

    #@16
    :catch_16
    move-exception p1

    #@17
    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    #@19
    const-string p3, "ViewParent "

    #@1b
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p0

    #@22
    const-string p2, " does not implement interface method onNestedPreScroll"

    #@24
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p0

    #@28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p0

    #@2c
    const-string p2, "ViewParentCompat"

    #@2e
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    :cond_31
    :goto_31
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 14

    #@0
    const/4 v6, 0x0

    #@1
    .line 135
    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    #@4
    move-result-object v7

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    move v5, p5

    #@b
    .line 134
    invoke-static/range {v0 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    #@e
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .registers 15

    #@0
    .line 163
    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    #@3
    move-result-object v7

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move v6, p6

    #@b
    .line 162
    invoke-static/range {v0 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    #@e
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .registers 18

    #@0
    move-object v1, p0

    #@1
    .line 332
    instance-of v0, v1, Landroidx/core/view/NestedScrollingParent3;

    #@3
    if-eqz v0, :cond_14

    #@5
    .line 333
    check-cast v1, Landroidx/core/view/NestedScrollingParent3;

    #@7
    move-object v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move v5, p4

    #@b
    move v6, p5

    #@c
    move/from16 v7, p6

    #@e
    move-object/from16 v8, p7

    #@10
    invoke-interface/range {v1 .. v8}, Landroidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    #@13
    goto :goto_54

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    .line 339
    aget v2, p7, v0

    #@17
    add-int/2addr v2, p4

    #@18
    aput v2, p7, v0

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 340
    aget v2, p7, v0

    #@1d
    add-int/2addr v2, p5

    #@1e
    aput v2, p7, v0

    #@20
    .line 342
    instance-of v0, v1, Landroidx/core/view/NestedScrollingParent2;

    #@22
    if-eqz v0, :cond_32

    #@24
    .line 343
    move-object v3, v1

    #@25
    check-cast v3, Landroidx/core/view/NestedScrollingParent2;

    #@27
    move-object v4, p1

    #@28
    move v5, p2

    #@29
    move v6, p3

    #@2a
    move v7, p4

    #@2b
    move v8, p5

    #@2c
    move/from16 v9, p6

    #@2e
    invoke-interface/range {v3 .. v9}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    #@31
    goto :goto_54

    #@32
    :cond_32
    if-nez p6, :cond_54

    #@34
    .line 349
    :try_start_34
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    :try_end_37
    .catch Ljava/lang/AbstractMethodError; {:try_start_34 .. :try_end_37} :catch_38

    #@37
    goto :goto_54

    #@38
    :catch_38
    move-exception v0

    #@39
    move-object v2, v0

    #@3a
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    const-string v3, "ViewParent "

    #@3e
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    const-string v1, " does not implement interface method onNestedScroll"

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    const-string v1, "ViewParentCompat"

    #@51
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    :cond_54
    :goto_54
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 104
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    #@4
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    #@0
    .line 250
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 252
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    #@6
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    #@9
    goto :goto_2b

    #@a
    :cond_a
    if-nez p4, :cond_2b

    #@c
    .line 258
    :try_start_c
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_10

    #@f
    goto :goto_2b

    #@10
    :catch_10
    move-exception p1

    #@11
    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    #@13
    const-string p3, "ViewParent "

    #@15
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    const-string p2, " does not implement interface method onNestedScrollAccepted"

    #@1e
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p0

    #@22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    const-string p2, "ViewParentCompat"

    #@28
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    #@0
    .line 209
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 211
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    #@6
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    if-nez p4, :cond_2d

    #@d
    .line 217
    :try_start_d
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    #@10
    move-result p0
    :try_end_11
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_11} :catch_12

    #@11
    return p0

    #@12
    :catch_12
    move-exception p1

    #@13
    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    #@15
    const-string p3, "ViewParent "

    #@17
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p0

    #@1e
    const-string p2, " does not implement interface method onStartNestedScroll"

    #@20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p0

    #@24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    const-string p2, "ViewParentCompat"

    #@2a
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    :cond_2d
    const/4 p0, 0x0

    #@2e
    return p0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 116
    invoke-static {p0, p1, v0}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    #@4
    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 4

    #@0
    .line 285
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 287
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    #@6
    invoke-interface {p0, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    #@9
    goto :goto_2b

    #@a
    :cond_a
    if-nez p2, :cond_2b

    #@c
    .line 292
    :try_start_c
    invoke-static {p0, p1}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_10

    #@f
    goto :goto_2b

    #@10
    :catch_10
    move-exception p1

    #@11
    .line 294
    new-instance p2, Ljava/lang/StringBuilder;

    #@13
    const-string v0, "ViewParent "

    #@15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    const-string p2, " does not implement interface method onStopNestedScroll"

    #@1e
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p0

    #@22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    const-string p2, "ViewParentCompat"

    #@28
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 68
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

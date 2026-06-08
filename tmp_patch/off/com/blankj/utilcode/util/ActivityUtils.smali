.class public final Lcom/blankj/utilcode/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 2

    #@0
    .line 60
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@3
    return-void
.end method

.method public static addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 1

    #@0
    .line 49
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@3
    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1583
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    #@4
    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;II)V
    .registers 3

    #@0
    .line 1611
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@3
    .line 1612
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@6
    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;Z)V
    .registers 2

    #@0
    .line 1593
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@3
    if-nez p1, :cond_9

    #@5
    const/4 p1, 0x0

    #@6
    .line 1595
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@9
    :cond_9
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1621
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Ljava/lang/Class;Z)V

    #@4
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 1655
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1656
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_25

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1657
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_8

    #@1e
    .line 1658
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    #@21
    .line 1659
    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@24
    goto :goto_8

    #@25
    :cond_25
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .line 1632
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1633
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_28

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1634
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_8

    #@1e
    .line 1635
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    #@21
    if-nez p1, :cond_8

    #@23
    const/4 v2, 0x0

    #@24
    .line 1637
    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@27
    goto :goto_8

    #@28
    :cond_28
    return-void
.end method

.method public static finishAllActivities()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 1836
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishAllActivities(Z)V

    #@4
    return-void
.end method

.method public static finishAllActivities(II)V
    .registers 4

    #@0
    .line 1865
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1866
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1b

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1868
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    #@17
    .line 1869
    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    return-void
.end method

.method public static finishAllActivities(Z)V
    .registers 4

    #@0
    .line 1845
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1846
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1e

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1848
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    #@17
    if-nez p0, :cond_8

    #@19
    const/4 v2, 0x0

    #@1a
    .line 1850
    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    return-void
.end method

.method public static finishAllActivitiesExceptNewest()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 1877
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishAllActivitiesExceptNewest(Z)V

    #@4
    return-void
.end method

.method public static finishAllActivitiesExceptNewest(II)V
    .registers 5

    #@0
    .line 1902
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 1903
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    if-ge v1, v2, :cond_17

    #@b
    .line 1904
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/app/Activity;

    #@11
    invoke-static {v2, p0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_5

    #@17
    :cond_17
    return-void
.end method

.method public static finishAllActivitiesExceptNewest(Z)V
    .registers 4

    #@0
    .line 1886
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 1887
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    if-ge v1, v2, :cond_17

    #@b
    .line 1888
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/app/Activity;

    #@11
    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_5

    #@17
    :cond_17
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1792
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishOtherActivities(Ljava/lang/Class;Z)V

    #@4
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 1824
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1825
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_22

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1826
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_8

    #@1e
    .line 1827
    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    #@21
    goto :goto_8

    #@22
    :cond_22
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .line 1804
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1805
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_22

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1806
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_8

    #@1e
    .line 1807
    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    #@21
    goto :goto_8

    #@22
    :cond_22
    return-void
.end method

.method public static finishToActivity(Landroid/app/Activity;Z)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1672
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishToActivity(Landroid/app/Activity;ZZ)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static finishToActivity(Landroid/app/Activity;ZII)Z
    .registers 7

    #@0
    .line 1712
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1713
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_25

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1714
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_21

    #@1a
    if-eqz p1, :cond_1f

    #@1c
    .line 1716
    invoke-static {v1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    #@1f
    :cond_1f
    const/4 p0, 0x1

    #@20
    return p0

    #@21
    .line 1720
    :cond_21
    invoke-static {v1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    #@24
    goto :goto_8

    #@25
    :cond_25
    const/4 p0, 0x0

    #@26
    return p0
.end method

.method public static finishToActivity(Landroid/app/Activity;ZZ)Z
    .registers 6

    #@0
    .line 1685
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1686
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_25

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1687
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_21

    #@1a
    if-eqz p1, :cond_1f

    #@1c
    .line 1689
    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    #@1f
    :cond_1f
    const/4 p0, 0x1

    #@20
    return p0

    #@21
    .line 1693
    :cond_21
    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    #@24
    goto :goto_8

    #@25
    :cond_25
    const/4 p0, 0x0

    #@26
    return p0
.end method

.method public static finishToActivity(Ljava/lang/Class;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1733
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishToActivity(Ljava/lang/Class;ZZ)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static finishToActivity(Ljava/lang/Class;ZII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;ZII)Z"
        }
    .end annotation

    #@0
    .line 1773
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1774
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_29

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1775
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_25

    #@1e
    if-eqz p1, :cond_23

    #@20
    .line 1777
    invoke-static {v1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    #@23
    :cond_23
    const/4 p0, 0x1

    #@24
    return p0

    #@25
    .line 1781
    :cond_25
    invoke-static {v1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    #@28
    goto :goto_8

    #@29
    :cond_29
    const/4 p0, 0x0

    #@2a
    return p0
.end method

.method public static finishToActivity(Ljava/lang/Class;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;ZZ)Z"
        }
    .end annotation

    #@0
    .line 1746
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1747
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_29

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1748
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_25

    #@1e
    if-eqz p1, :cond_23

    #@20
    .line 1750
    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    #@23
    :cond_23
    const/4 p0, 0x1

    #@24
    return p0

    #@25
    .line 1754
    :cond_25
    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    #@28
    goto :goto_8

    #@29
    :cond_29
    const/4 p0, 0x0

    #@2a
    return p0
.end method

.method public static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 101
    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;

    #@7
    move-result-object p0

    #@8
    .line 102
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_f

    #@e
    return-object v0

    #@f
    :cond_f
    return-object p0
.end method

.method private static getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 109
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 110
    :cond_9
    instance-of v2, p0, Landroid/content/ContextWrapper;

    #@b
    if-eqz v2, :cond_2d

    #@d
    .line 111
    instance-of v2, p0, Landroid/app/Activity;

    #@f
    if-eqz v2, :cond_14

    #@11
    .line 112
    check-cast p0, Landroid/app/Activity;

    #@13
    return-object p0

    #@14
    .line 114
    :cond_14
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_1b

    #@1a
    return-object v2

    #@1b
    .line 116
    :cond_1b
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 117
    check-cast p0, Landroid/content/ContextWrapper;

    #@20
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@23
    move-result-object p0

    #@24
    if-nez p0, :cond_27

    #@26
    return-object v0

    #@27
    .line 121
    :cond_27
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_9

    #@2d
    :cond_2d
    return-object v0
.end method

.method private static getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 132
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    const-string v2, "com.android.internal.policy.DecorContext"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2f

    #@14
    .line 134
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    const-string v2, "mActivityContext"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1d
    move-result-object v1

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@22
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object p0

    #@26
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@28
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2b
    move-result-object p0

    #@2c
    check-cast p0, Landroid/app/Activity;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_2f

    #@2e
    return-object p0

    #@2f
    :catch_2f
    :cond_2f
    return-object v0
.end method

.method public static getActivityIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 1916
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1938
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 1940
    :try_start_8
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    #@c
    return-object p0

    #@d
    :catch_d
    move-exception p0

    #@e
    .line 1942
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@11
    const/4 p0, 0x0

    #@12
    return-object p0
.end method

.method public static getActivityIcon(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    #@0
    .line 1927
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getActivityList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    #@0
    .line 1452
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getActivityLogo(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 1955
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1977
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 1979
    :try_start_8
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    #@c
    return-object p0

    #@d
    :catch_d
    move-exception p0

    #@e
    .line 1981
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@11
    const/4 p0, 0x0

    #@12
    return-object p0
.end method

.method public static getActivityLogo(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    #@0
    .line 1966
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method public static getLauncherActivity()Ljava/lang/String;
    .registers 1

    #@0
    .line 1461
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    .line 1471
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const-string v1, ""

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object v1

    #@9
    .line 1472
    :cond_9
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string v2, "android.intent.action.MAIN"

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@11
    const-string v2, "android.intent.category.LAUNCHER"

    #@13
    .line 1473
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@16
    .line 1474
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 1475
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@20
    move-result-object p0

    #@21
    const/4 v2, 0x0

    #@22
    .line 1476
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@25
    move-result-object p0

    #@26
    if-eqz p0, :cond_3a

    #@28
    .line 1477
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_2f

    #@2e
    goto :goto_3a

    #@2f
    .line 1480
    :cond_2f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object p0

    #@33
    check-cast p0, Landroid/content/pm/ResolveInfo;

    #@35
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@37
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@39
    return-object p0

    #@3a
    :cond_3a
    :goto_3a
    return-object v1
.end method

.method public static getMainActivities()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 1489
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getMainActivities(Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getMainActivities(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 1499
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1500
    new-instance v1, Landroid/content/Intent;

    #@7
    const-string v2, "android.intent.action.MAIN"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@d
    .line 1501
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    .line 1502
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v2

    #@18
    const/4 v3, 0x0

    #@19
    .line 1503
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@1c
    move-result-object v1

    #@1d
    .line 1504
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_24

    #@23
    return-object v0

    #@24
    :cond_24
    :goto_24
    if-ge v3, v2, :cond_40

    #@26
    .line 1507
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@2c
    .line 1508
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2e
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@30
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_3d

    #@36
    .line 1509
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@38
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3a
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_24

    #@40
    :cond_40
    return-object v0
.end method

.method private static getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return-object v0

    #@4
    .line 2123
    :cond_4
    array-length v1, p1

    #@5
    if-gtz v1, :cond_8

    #@7
    return-object v0

    #@8
    .line 2126
    :cond_8
    new-array v0, v1, [Landroidx/core/util/Pair;

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v1, :cond_1c

    #@d
    .line 2128
    aget-object v3, p1, v2

    #@f
    invoke-virtual {v3}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    #@16
    move-result-object v3

    #@17
    aput-object v3, v0, v2

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_b

    #@1c
    .line 2130
    :cond_1c
    invoke-static {p0, v0}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;

    #@1f
    move-result-object p0

    #@20
    invoke-virtual {p0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    #@23
    move-result-object p0

    #@24
    return-object p0
.end method

.method private static getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;
    .registers 3

    #@0
    .line 2109
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;
    .registers 3

    #@0
    .line 2101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 2103
    :cond_8
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    #@b
    move-result-object p0

    #@c
    invoke-virtual {p0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;
    .registers 2

    #@0
    .line 2114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 2116
    :cond_8
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .registers 1

    #@0
    .line 1521
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getTopActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getTopActivityOrApp()Landroid/content/Context;
    .registers 1

    #@0
    .line 2134
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppForeground()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 2135
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_10

    #@c
    .line 2136
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@f
    move-result-object v0

    #@10
    :cond_10
    return-object v0

    #@11
    .line 2138
    :cond_11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_10

    #@2
    .line 1541
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    .line 1542
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    #@b
    move-result p0

    #@c
    if-nez p0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p0, 0x0

    #@11
    :goto_11
    return p0
.end method

.method public static isActivityAlive(Landroid/content/Context;)Z
    .registers 1

    #@0
    .line 1531
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isActivityExists(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    #@0
    .line 153
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 154
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@8
    .line 155
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object p0

    #@c
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object p0

    #@10
    const/4 p1, 0x0

    #@11
    .line 156
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_28

    #@17
    .line 157
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_28

    #@1d
    .line 158
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@20
    move-result-object p0

    #@21
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@24
    move-result p0

    #@25
    if-eqz p0, :cond_28

    #@27
    const/4 p1, 0x1

    #@28
    :cond_28
    return p1
.end method

.method public static isActivityExistsInStack(Landroid/app/Activity;)Z
    .registers 3

    #@0
    .line 1552
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1553
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1c

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1554
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_8

    #@1a
    const/4 p0, 0x1

    #@1b
    return p0

    #@1c
    :cond_1c
    const/4 p0, 0x0

    #@1d
    return p0
.end method

.method public static isActivityExistsInStack(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 1568
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1569
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_20

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 1570
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_8

    #@1e
    const/4 p0, 0x1

    #@1f
    return p0

    #@20
    :cond_20
    const/4 p0, 0x0

    #@21
    return p0
.end method

.method private static isIntentAvailable(Landroid/content/Intent;)Z
    .registers 1

    #@0
    const/4 p0, 0x1

    #@1
    return p0
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 78
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 2

    #@0
    .line 89
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@3
    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 1

    #@0
    .line 69
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@3
    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1382
    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;II)V
    .registers 4

    #@0
    .line 1412
    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@3
    move-result-object p2

    #@4
    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    #@7
    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 1395
    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public static startActivities([Landroid/content/Intent;)V
    .registers 3

    #@0
    .line 1341
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method public static startActivities([Landroid/content/Intent;II)V
    .registers 4

    #@0
    .line 1367
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 1368
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@7
    move-result-object p1

    #@8
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    #@b
    return-void
.end method

.method private static startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    #@0
    .line 2054
    instance-of v0, p1, Landroid/app/Activity;

    #@2
    if-nez v0, :cond_12

    #@4
    .line 2055
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    :goto_6
    if-ge v1, v0, :cond_12

    #@8
    aget-object v2, p0, v1

    #@a
    const/high16 v3, 0x10000000

    #@c
    .line 2056
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_6

    #@12
    :cond_12
    if-eqz p2, :cond_18

    #@14
    .line 2060
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    #@17
    goto :goto_1b

    #@18
    .line 2062
    :cond_18
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    #@1b
    :goto_1b
    return-void
.end method

.method public static startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 1352
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    #@7
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 667
    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@4
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;II)V
    .registers 4

    #@0
    .line 711
    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@3
    move-result-object p2

    #@4
    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@7
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 680
    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@3
    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V
    .registers 3

    #@0
    .line 694
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@3
    move-result-object p2

    #@4
    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@7
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {p0, v1, v0, p1, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@c
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 257
    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@b
    move-result-object p2

    #@c
    const/4 p3, 0x0

    #@d
    .line 256
    invoke-static {p0, p3, v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@10
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {p0, v1, v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@c
    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 239
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@b
    move-result-object p2

    #@c
    const/4 v1, 0x0

    #@d
    .line 238
    invoke-static {p0, v1, v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@10
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 434
    invoke-static {p0, v0, p1, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 484
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@4
    move-result-object p3

    #@5
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 449
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 465
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@4
    move-result-object p3

    #@5
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    #@0
    .line 1991
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 1992
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@a
    .line 1993
    :cond_a
    new-instance p1, Landroid/content/ComponentName;

    #@c
    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@12
    .line 1994
    invoke-static {v0, p0, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@15
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 321
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {p1, p0, v0, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@c
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 372
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    .line 373
    invoke-static {p1, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@b
    move-result-object p3

    #@c
    .line 372
    invoke-static {p1, p0, v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@f
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .line 336
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    invoke-static {p1, p0, v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    return-void
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .line 352
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    .line 353
    invoke-static {p1, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@b
    move-result-object p3

    #@c
    .line 352
    invoke-static {p1, p0, v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@f
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 553
    invoke-static {p1, p0, p2, p3, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    #@0
    .line 608
    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@3
    move-result-object p4

    #@4
    invoke-static {p1, p0, p2, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@7
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 570
    invoke-static {p1, p0, p2, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .registers 5

    #@0
    .line 588
    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@3
    move-result-object p4

    #@4
    invoke-static {p1, p0, p2, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@7
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 271
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 272
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, p0, v1, p1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@10
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 303
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    .line 305
    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@f
    move-result-object p2

    #@10
    .line 304
    invoke-static {v0, p0, v1, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@13
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .line 285
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 286
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    invoke-static {v0, p0, v1, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@f
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    .line 500
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, p0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    #@0
    .line 534
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 535
    invoke-static {v0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@7
    move-result-object p3

    #@8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 515
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@7
    return-void
.end method

.method public static startActivity(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 167
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v2, v1, p0, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@10
    return-void
.end method

.method public static startActivity(Ljava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 195
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    .line 197
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@f
    move-result-object p1

    #@10
    const/4 p2, 0x0

    #@11
    .line 196
    invoke-static {v0, p2, v1, p0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@14
    return-void
.end method

.method public static startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .line 179
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 180
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v2, v1, p0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@10
    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 387
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1, p0, p1, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    #@0
    .line 417
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 418
    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@8
    move-result-object p2

    #@9
    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@c
    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 400
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method public static startActivity(Landroid/content/Intent;)Z
    .registers 3

    #@0
    .line 621
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method public static startActivity(Landroid/content/Intent;II)Z
    .registers 4

    #@0
    .line 649
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 650
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@7
    move-result-object p1

    #@8
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method private static startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 4

    #@0
    .line 2000
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    const-string p0, "ActivityUtils"

    #@8
    const-string p1, "intent is unavailable"

    #@a
    .line 2001
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    const/4 p0, 0x0

    #@e
    return p0

    #@f
    .line 2004
    :cond_f
    instance-of v0, p1, Landroid/app/Activity;

    #@11
    if-nez v0, :cond_18

    #@13
    const/high16 v0, 0x10000000

    #@15
    .line 2005
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    :cond_18
    if-eqz p2, :cond_1e

    #@1a
    .line 2008
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@1d
    goto :goto_21

    #@1e
    .line 2010
    :cond_1e
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@21
    :goto_21
    const/4 p0, 0x1

    #@22
    return p0
.end method

.method public static startActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 3

    #@0
    .line 633
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 971
    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    #@4
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;III)V
    .registers 5

    #@0
    .line 1026
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@3
    move-result-object p3

    #@4
    .line 1025
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    #@7
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    #@0
    .line 987
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    #@3
    return-void
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V
    .registers 4

    #@0
    .line 1005
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@3
    move-result-object p3

    #@4
    .line 1004
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    #@7
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 728
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    const/4 v5, 0x0

    #@a
    move-object v0, p0

    #@b
    move v4, p2

    #@c
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@f
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 784
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 785
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@c
    move-result-object v5

    #@d
    move-object v0, p0

    #@e
    move v4, p2

    #@f
    .line 784
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@12
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 745
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    move-object v0, p0

    #@a
    move v4, p2

    #@b
    move-object v5, p3

    #@c
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@f
    return-void
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 763
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 764
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@c
    move-result-object v5

    #@d
    move-object v0, p0

    #@e
    move v4, p2

    #@f
    .line 763
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@12
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 804
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    const/4 v5, 0x0

    #@9
    move-object v0, p1

    #@a
    move-object v1, p0

    #@b
    move v4, p3

    #@c
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@f
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    #@0
    .line 866
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 867
    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@b
    move-result-object v5

    #@c
    move-object v0, p1

    #@d
    move-object v1, p0

    #@e
    move v4, p3

    #@f
    .line 866
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@12
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .line 823
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    move-object v0, p1

    #@9
    move-object v1, p0

    #@a
    move v4, p3

    #@b
    move-object v5, p4

    #@c
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@f
    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .line 843
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 844
    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@b
    move-result-object v5

    #@c
    move-object v0, p1

    #@d
    move-object v1, p0

    #@e
    move v4, p3

    #@f
    .line 843
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@12
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p1

    #@2
    move-object v1, p0

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    .line 888
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@9
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13

    #@0
    .line 954
    invoke-static {p1, p5, p6}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    #@3
    move-result-object v5

    #@4
    move-object v0, p1

    #@5
    move-object v1, p0

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    .line 953
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@c
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 12

    #@0
    move-object v0, p1

    #@1
    move-object v1, p0

    #@2
    move-object v2, p2

    #@3
    move-object v3, p3

    #@4
    move v4, p4

    #@5
    move-object v5, p5

    #@6
    .line 908
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@9
    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .registers 12

    #@0
    .line 930
    invoke-static {p1, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    #@3
    move-result-object v5

    #@4
    move-object v0, p1

    #@5
    move-object v1, p0

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    .line 929
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@c
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 1116
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    const/4 v6, 0x0

    #@d
    move-object v1, p1

    #@e
    move-object v2, p0

    #@f
    move v5, p3

    #@10
    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@13
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    #@0
    .line 1178
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 1179
    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    #@f
    move-result-object v6

    #@10
    move-object v1, p1

    #@11
    move-object v2, p0

    #@12
    move v5, p3

    #@13
    .line 1178
    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@16
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .line 1135
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    move-object v1, p1

    #@d
    move-object v2, p0

    #@e
    move v5, p3

    #@f
    move-object v6, p4

    #@10
    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@13
    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .line 1155
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 1156
    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    #@f
    move-result-object v6

    #@10
    move-object v1, p1

    #@11
    move-object v2, p0

    #@12
    move v5, p3

    #@13
    .line 1155
    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@16
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p1

    #@2
    move-object v1, p0

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    .line 1197
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@9
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13

    #@0
    .line 1263
    invoke-static {p1, p5, p6}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    #@3
    move-result-object v5

    #@4
    move-object v0, p1

    #@5
    move-object v1, p0

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    .line 1262
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@c
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 12

    #@0
    move-object v0, p1

    #@1
    move-object v1, p0

    #@2
    move-object v2, p2

    #@3
    move-object v3, p3

    #@4
    move v4, p4

    #@5
    move-object v5, p5

    #@6
    .line 1217
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@9
    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .registers 12

    #@0
    .line 1239
    invoke-static {p1, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    #@3
    move-result-object v5

    #@4
    move-object v0, p1

    #@5
    move-object v1, p0

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    .line 1238
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@c
    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1277
    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    #@4
    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;III)V
    .registers 5

    #@0
    .line 1332
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    #@3
    move-result-object p3

    #@4
    .line 1331
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    #@7
    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    #@0
    .line 1293
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    #@3
    return-void
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I[Landroid/view/View;)V
    .registers 4

    #@0
    .line 1311
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    #@3
    move-result-object p3

    #@4
    .line 1310
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    #@7
    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 1043
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    const/4 v5, 0x0

    #@e
    move-object v0, p0

    #@f
    move v4, p2

    #@10
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@13
    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 1099
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 1100
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    #@10
    move-result-object v5

    #@11
    move-object v0, p0

    #@12
    move v4, p2

    #@13
    .line 1099
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@16
    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 1060
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    move-object v0, p0

    #@e
    move v4, p2

    #@f
    move-object v5, p3

    #@10
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@13
    return-void
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    .line 1078
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 1079
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    #@10
    move-result-object v5

    #@11
    move-object v0, p0

    #@12
    move v4, p2

    #@13
    .line 1078
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@16
    return-void
.end method

.method private static startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 7

    #@0
    .line 2029
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 2030
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@a
    .line 2031
    :cond_a
    new-instance p1, Landroid/content/ComponentName;

    #@c
    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@12
    .line 2032
    invoke-static {v0, p0, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    #@15
    move-result p0

    #@16
    return p0
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z
    .registers 5

    #@0
    .line 2039
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    const-string p0, "ActivityUtils"

    #@8
    const-string p1, "intent is unavailable"

    #@a
    .line 2040
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    const/4 p0, 0x0

    #@e
    return p0

    #@f
    :cond_f
    if-eqz p3, :cond_15

    #@11
    .line 2044
    invoke-virtual {p1, p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@14
    goto :goto_18

    #@15
    .line 2046
    :cond_15
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@18
    :goto_18
    const/4 p0, 0x1

    #@19
    return p0
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z
    .registers 7

    #@0
    .line 2082
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const-string v2, "ActivityUtils"

    #@7
    if-nez v0, :cond_f

    #@9
    const-string p0, "intent is unavailable"

    #@b
    .line 2083
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    return v1

    #@f
    .line 2086
    :cond_f
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_2e

    #@15
    .line 2087
    new-instance p0, Ljava/lang/StringBuilder;

    #@17
    const-string p2, "Fragment "

    #@19
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p0

    #@20
    const-string p1, " not attached to Activity"

    #@22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p0

    #@26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    return v1

    #@2e
    :cond_2e
    if-eqz p3, :cond_34

    #@30
    .line 2091
    invoke-virtual {p1, p0, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@33
    goto :goto_37

    #@34
    .line 2093
    :cond_34
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    #@37
    :goto_37
    const/4 p0, 0x1

    #@38
    return p0
.end method

.method private static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 7

    #@0
    .line 2072
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    if-eqz p1, :cond_a

    #@7
    .line 2073
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@a
    .line 2074
    :cond_a
    new-instance p1, Landroid/content/ComponentName;

    #@c
    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@12
    .line 2075
    invoke-static {v0, p0, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    #@15
    move-result p0

    #@16
    return p0
.end method

.method public static startHomeActivity()V
    .registers 2

    #@0
    .line 1422
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.MAIN"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "android.intent.category.HOME"

    #@9
    .line 1423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@c
    const/high16 v1, 0x10000000

    #@e
    .line 1424
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@11
    .line 1425
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)Z

    #@14
    return-void
.end method

.method public static startLauncherActivity()V
    .registers 1

    #@0
    .line 1432
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startLauncherActivity(Ljava/lang/String;)V

    #@b
    return-void
.end method

.method public static startLauncherActivity(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 1441
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_b

    #@a
    return-void

    #@b
    .line 1443
    :cond_b
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    return-void
.end method

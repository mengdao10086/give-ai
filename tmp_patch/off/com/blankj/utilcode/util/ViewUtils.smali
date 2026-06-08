.class public Lcom/blankj/utilcode/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fixScrollViewTopping(Landroid/view/View;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    #@4
    .line 99
    instance-of v1, p0, Landroid/view/ViewGroup;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 100
    check-cast p0, Landroid/view/ViewGroup;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    :goto_c
    if-nez p0, :cond_f

    #@e
    return-void

    #@f
    .line 105
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v1

    #@13
    move v2, v0

    #@14
    :goto_14
    if-ge v2, v1, :cond_27

    #@16
    .line 106
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v3

    #@1a
    .line 107
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    #@1d
    .line 108
    instance-of v4, v3, Landroid/view/ViewGroup;

    #@1f
    if-eqz v4, :cond_24

    #@21
    .line 109
    invoke-static {v3}, Lcom/blankj/utilcode/util/ViewUtils;->fixScrollViewTopping(Landroid/view/View;)V

    #@24
    :cond_24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_14

    #@27
    :cond_27
    return-void
.end method

.method public static isLayoutRtl()Z
    .registers 3

    #@0
    .line 82
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@f
    move-result-object v0

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@14
    move-result-object v0

    #@15
    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@18
    move-result v0

    #@19
    const/4 v2, 0x1

    #@1a
    if-ne v0, v2, :cond_1d

    #@1c
    move v1, v2

    #@1d
    :cond_1d
    return v1
.end method

.method public static layoutId2View(I)Landroid/view/View;
    .registers 3

    #@0
    .line 116
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "layout_inflater"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/LayoutInflater;

    #@c
    const/4 v1, 0x0

    #@d
    .line 117
    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 1

    #@0
    .line 62
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 3

    #@0
    .line 70
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method public static setViewEnabled(Landroid/view/View;Z)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/view/View;

    #@3
    const/4 v1, 0x0

    #@4
    .line 31
    move-object v2, v1

    #@5
    check-cast v2, Landroid/view/View;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ViewUtils;->setViewEnabled(Landroid/view/View;Z[Landroid/view/View;)V

    #@d
    return-void
.end method

.method public static varargs setViewEnabled(Landroid/view/View;Z[Landroid/view/View;)V
    .registers 7

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const/4 v0, 0x0

    #@4
    if-eqz p2, :cond_12

    #@6
    .line 44
    array-length v1, p2

    #@7
    move v2, v0

    #@8
    :goto_8
    if-ge v2, v1, :cond_12

    #@a
    aget-object v3, p2, v2

    #@c
    if-ne p0, v3, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_8

    #@12
    .line 48
    :cond_12
    instance-of v1, p0, Landroid/view/ViewGroup;

    #@14
    if-eqz v1, :cond_29

    #@16
    .line 49
    move-object v1, p0

    #@17
    check-cast v1, Landroid/view/ViewGroup;

    #@19
    .line 50
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@1c
    move-result v2

    #@1d
    :goto_1d
    if-ge v0, v2, :cond_29

    #@1f
    .line 52
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v3

    #@23
    invoke-static {v3, p1, p2}, Lcom/blankj/utilcode/util/ViewUtils;->setViewEnabled(Landroid/view/View;Z[Landroid/view/View;)V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1d

    #@29
    .line 55
    :cond_29
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@2c
    return-void
.end method
